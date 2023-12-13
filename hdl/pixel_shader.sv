`timescale 1ns / 1ps
`default_nettype none

module pixel_shader(
    input wire clk_in,
    input wire rst_in,
    input wire data_valid_in, 
    // input wire [8:0] v1 [2:0],
    // input wire [8:0] v2 [2:0],
    // input wire [8:0] v3 [2:0],
    input wire [31:0] triangle [3:0] [2:0],
    output logic valid_out, 
    output logic [7:0] color_out
);

    // GOAL OF THIS MODULE: given a triangle, find the color corresponding to its angle between the normal vector and the light source

    /*
    LIGHT SOURCE is (0, 0, -1)
    STRAGEDY: 
        if v1 = (d, e, f) and v2 = (g, h, i)
        normal vector: (ei - fh, fg - di, dh - eg)
        light source: (0, 0, -1)

        angle between two vectors:
        cos(C) = (dot product)/(magntidues) between light source and normal vector 
        light source = (0, 0, -1), so magnitude = 1. 

        cos(C) = (eg - dh)/(sqrt((ei-fh)^2 + (fg-di)^2 + (dh-eg)^2))

        instead solve for (1/cos(theta))^2, map that to 0 to pi/2 to get ANGLE, then if (dh - eg) < 0, result is pi - ANGLE. 

        (1/cos(theta))^2 = ((ei-fh)^2 + (fg-di)^2 + (dh-eg)^2)/((eg - dh)^2)

        PIPELINE;
        RECEIVE 
        VECTORS: do the subtraction between points to get two vectors. 

        NORMAL CALC 1: multiplication. 
            normal_calc = [ei, fh, fg, di, dh, eg]

        NORMAL CALC 2: subtraction
            norm = [ei - fh, fg - di, dh - eg]
            (norm[0] = normal_calc[1] - normal_calc[0])

        ANGLE CALC 1: squares 
            sqares = [(ei - fh)^2, (fg - di)^2, (dh - eg)^2]

        ANGLE CALC 2: reciprocal 
            recip = (1/(eg  - dh)^2)
            mag = (ei-fh)^2 + (fg-di)^2 + (dh-eg)^2)

        ANGLE CACL 3: multiply. 
            recip_cos_squared = mag * recip
        
        MAP: map that to a table of 1/cos^2 values from 0 to 90
        FINAL_CALC: if (dh - eg) < 0, result is 180 - ANGLE. 

        COLOR_MAP: now we have an angle in (0, 180). just use that as the grayscale color. 
            convert to a diff format? 
        


        REQUIRED IPS: 6 multipliers, 3 adders/subtractors, 1 reciprocal, NEW: 1 sqrt?

    */


    logic [31:0] light_source [2:0]; //(0,0, -1)
    assign light_source[0] = 0;
    assign light_source[1] = 0;
    assign light_source[2] = 32'b10111111100000000000000000000000;

    enum {RECEIVE, VECTORS, NORMAL_CALC_1, NORMAL_CALC_2, ANGLE_CALC_1, ANGLE_CALC_2, ANGLE_CALC_3, MAP, FINAL_CALC, COLOR_MAP, SEND} state;



    logic  [31:0] vect1 [2:0];
    logic  [31:0] vect2 [2:0];
    logic  [31:0] normal_calc [5:0]; // how big is the float coming out of multiply? 

    logic signed  [31:0] norm [2:0]; //IMPORTANT: CHANGED THIS TO SIGNED

    logic  [31:0] sqaures [2:0]; // this is really big — maybe there's a way to lose precision since we don't need it anyway. how to scale down floats? is there a float to float ip? 
    logic [31:0] recip; 
    logic [31:0] mag;
    logic [31:0] recip_cos_squared;
    logic [31:0] final_angle;
    


    // NEW VARIABLES

    logic [31:0] ei_out; //these vars store output variables to put into normal vector, did not put directly into normal vector from ip blocks since that
    logic [31:0] fh_out; //could unintentionally change to values during calculation
    logic [31:0] fg_out;
    logic [31:0] di_out;
    logic [31:0] dh_out;
    logic [31:0] eg_out;

    logic ei_valid_out, fh_valid_out, fg_valid_out, di_valid_out, dh_valid_out, eg_valid_out; //multiplier valid signals
    logic mult_valid_in; //signal to begin multiplication

    logic signed [31:0] dot_product_signed

    //END NEW VARIABLES




    // logic signed [9:0] normal_cross_light [2:0];

    // logic [9:0] dot_product;
    // logic [14:0] tri_normal_magnitude_squared;

    // logic [7:0] color;
    // logic [31:0] angle;




    reciprocal rec (
        .aclk(clk_in),
        .s_axis_a_tdata(rec_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(rec_v_in),
        .m_axis_result_tdata(rec_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(rec_v_out)
    );

    

    multiplier ei_mult (  //multiplies e and i 
        .aclk(clk_in),
        .s_axis_a_tdata(e_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(i_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(normal_calc[0][0]),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(ei_valid_out)
    );

    multiplier fh_mult (  //multiplies f and h 
        .aclk(clk_in),
        .s_axis_a_tdata(f_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(h_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(normal_calc[0][1]),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(fh_valid_out)
    );


    multiplier fg_mult (  //multiplies f and g 
        .aclk(clk_in),
        .s_axis_a_tdata(f_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(g_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(normal_calc[0][2]),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(fg_valid_out)
    );

    multiplier di_mult (  //multiplies d and i 
        .aclk(clk_in),
        .s_axis_a_tdata(d_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(i_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(normal_calc[1][0]),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(di_valid_out)
    );

    multiplier dh_mult (  //multiplies d and h 
        .aclk(clk_in),
        .s_axis_a_tdata(d_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(h_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(normal_calc[1][1]),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(dh_valid_out)
    );

    multiplier eg_mult (  //multiplies e and g 
        .aclk(clk_in),
        .s_axis_a_tdata(e_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(g_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(normal_calc[1][2]),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(eg_valid_out)
    );


    // float_to_fixed round (
    //     .aclk(clk_in),
    //     .s_axis_a_tdata(round_in),
    //     .s_axis_a_tready(),
    //     .s_axis_a_tvalid(round_v_in),
    //     .m_axis_result_tdata(round_out),
    //     .m_axis_result_tready(1'b1),
    //     .m_axis_result_tvalid(round_v_out)
    // );




    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            vect1[0] <= 0;
            vect2[0] <= 0;
            vect1[1] <= 0;
            vect2[1] <= 0;
            vect1[2] <= 0;
            vect2[2] <= 0;
            tri_normal[0] <= 0;
            tri_normal[1] <= 0;
            tri_normal[2] <= 0;
            normal_cross_light[0] <= 0;
            normal_cross_light[1] <= 0;
            normal_cross_light[2] <= 0;
            angle <= 0;
            state <= RECEIVE;
            valid_out <= 0;
        end else begin
            case (state)
                RECEIVE: begin
                    valid_out <= 0;
                    if (data_valid_in) begin

                        // vect1[2] <= vert2[2]-vert1[2];
                        // vect1[1] <= vert2[1]-vert1[1];
                        // vect1[0] <= vert2[0]-vert1[0];

                        // vect1[2] <= vert3[2]-vert1[2];
                        // vect2[1] <= vert3[1]-vert1[1];
                        // vect2[0] <= vert3[0]-vert1[0];

                        //TODO: translate tri to vertecies

                        mult_valid_in <= 1;
                        state <= NORMAL_CALC_1;

                    end

                end
                // find the normal vector to the triangle
                NORMAL_CALC_1: begin
                        mult_valid_in <= 0;
                        if(ei_valid_out) begin  //all multipliers are fixed 12 cycles and start at the same time, so if one is done, all are done
                            normal_calc[0][0] <= ei_out;
                            normal_calc[0][1] <= fh_out;
                            normal_calc[0][2] <= fg_out;
                            normal_calc[1][0] <= di_out;
                            normal_calc[1][1] <= dh_out;
                            normal_calc[1][2] <= eg_out;
                            state <= NORMAL_CALC_2;
                        end
                        // NORMAL CALC 1: multiplication. 
                        //     normal_calc = [ei, fh, fg, di, dh, eg]
                end
                NORMAL_CALC_2: begin
                    norm[0] <= normal_calc[0][0] - normal_calc[0][1];
                    norm[1] <= normal_calc[0][2] - normal_calc[1][0];
                    norm[2] <= normal_calc[1][1] - normal_calc[1][2];
                    state <= ANGLE_CALC_1;

                end
                // find the angle between the normal vector and the light source
                // cos(theta) = (dot product a, b) / |a| * |b|
                ANGLE_CALC_1: begin
                    state <= ANGLE_CALC_2;
                    // calculate the dot product of a and b and the magnitude 
                    // dot_product <= tri_normal[0] * light_source[0] + tri_normal[1] * light_source[1] + tri_normal[2] * light_source[2];
                    // dot_product <= -tri_normal[2];

                    dot_product_signed <= ~tri_normal + $signed(1'b1); //negate normal using twos complement

                    // tri_normal_magnitude_squared <= tri_normal[0] * tri_normal[0] + tri_normal[1] * tri_normal[1] + tri_normal[2] * tri_normal[2];
                    squares[0] <= norm[0]*norm[0];
                    squares[1] <= norm[1]*norm[1];
                    squares[2] <= norm[2]*norm[2];

                    // light source magnitude is 1
                end
                ANGLE_CALC_2: begin
                    state <= ANGLE_CALC_3;

                    // get the square root  
                    
                end
                ANGLE_CALC_3: begin
                    state <= ANGLE_CALC_3;
                    
                    // get the reciprocal 


                end
                ANGLE_CALC_4: begin
                    state <= COLOR;
                    // multiply to get cos theta

                end
                // TODO: map that  (cos(angle)) to a color 
                COLOR: begin 
                    state <= SEND;
                    color <= 0;

                end
                SEND: begin // need to figure out timing
                    valid_out <= 1; 
                    color_out <= color;
                    state <= RECEIVE;
                end
            endcase;
        end
    end



endmodule

function [8:0] greyscale_color (input [8:0] angle_to_source); //initial stab at mapping (light drops off expontentially)
    case (angle_to_source)
        8'd0:  greyscale_color = 8'b1111_1111;
        8'd10:  greyscale_color = 8'b1111_1110;
        8'd20:  greyscale_color = 8'b1110_1100;
        8'd30:  greyscale_color = 8'b1110_1100;
        8'd40:  greyscale_color = 8'b1100_1000;
        8'd50:  greyscale_color = 8'b1000_1100;
        8'd60:  greyscale_color = 8'b0100_1011;
        8'd70:  greyscale_color = 8'b0010_1000;
        8'd80:  greyscale_color = 8'b0001_0100;
        8'd90:  greyscale_color = 8'b0000_0000;                 //peak brightness should be perpendicular to the light source? I think
        8'd100:  greyscale_color = 8'b0001_0100;
        8'd110:  greyscale_color = 8'b0010_1000;
        8'd120:  greyscale_color = 8'b0100_1011;
        8'd130:  greyscale_color = 8'b1000_1100;
        8'd140:  greyscale_color = 8'b1100_1000;
        8'd150:  greyscale_color = 8'b1110_1100;
        8'd160:  greyscale_color = 8'b1111_1100;
        8'd170:  greyscale_color = 8'b1111_1111;
        
    endcase;
endfunction

`default_nettype wire

