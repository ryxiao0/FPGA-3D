

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
            use binary search to determine where to map this value to in the table (a table of 32 sec^2 values in the 0 to pi/2 range)


        FINAL_CALC: if (dh - eg) < 0, result is 180 - ANGLE. 

        COLOR_MAP: now we have an angle in (0, 180). just use that as the grayscale color. 
            convert to a diff format? 
        
        REQUIRED IPS: 6 multipliers, 3 adders/subtractors, 1 reciprocal 

        TODO: 
        set up a table of sec^2 values 
        figure out how to compare floats lol 
        implement each pipeline stage
    */
    


    logic [31:0] light_source [2:0]; //(0,0, -1)
    assign light_source[0] = 0;
    assign light_source[1] = 0;
    assign light_source[2] = 32'b10111111100000000000000000000000;

    enum {RECEIVE, VECTORS, NORMAL_CALC_1, NORMAL_CALC_2, ANGLE_CALC_1, ANGLE_CALC_2, ANGLE_CALC_3, MAP, FINAL_CALC, COLOR_MAP, SEND} state;



    logic  [31:0] vect1 [2:0];
    logic  [31:0] vect2 [2:0];
    logic  [31:0] normal_calc [1:0] [2:0]; 

    logic  [31:0] norm [2:0]; 

    logic  [31:0] sqaures [2:0]; 
    logic [31:0] recip; 
    logic [31:0] mag;
    logic [31:0] sec_squared;
    logic [31:0] final_angle;



    // NEW VARIABLES

    logic [31:0] ei_out; //these vars store output variables to put into normal vector, did not put directly into normal vector from ip blocks since that
    logic [31:0] fh_out; //could unintentionally change to values during calculation
    logic [31:0] fg_out;
    logic [31:0] di_out;
    logic [31:0] dh_out;
    logic [31:0] eg_out;

    logic [31:0] d_in;
    logic [31:0] e_in;
    logic [31:0] f_in;
    logic [31:0] g_in;
    logic [31:0] h_in;
    logic [31:0] i_in;

    logic ei_valid_out, fh_valid_out, fg_valid_out, di_valid_out, dh_valid_out, eg_valid_out; //multiplier valid signals
    logic mult_valid_in; //signal to begin multiplication

    logic signed [31:0] dot_product_signed;

    //END NEW VARIABLES

    logic [31:0] rec_in;
    logic rec_valid_in;
    logic [31:0] rec_out;
    logic rec_valid_out;

    reciprocal rec (
        .aclk(clk_in),
        .s_axis_a_tdata(rec_in),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(rec_valid_in),
        .m_axis_result_tdata(rec_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(rec_valid_out)
    );

    

    multiplier ei_mult (  //multiplies e and i 
        .aclk(clk_in),
        .s_axis_a_tdata(e_in),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(i_in),
        .s_axis_b_tready(1'b1),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(ei_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(ei_valid_out)
    );

    multiplier fh_mult (  //multiplies f and h 
        .aclk(clk_in),
        .s_axis_a_tdata(f_in),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(h_in),
        .s_axis_b_tready(1'b1),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(fh_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(fh_valid_out)
    );


    multiplier fg_mult (  //multiplies f and g 
        .aclk(clk_in),
        .s_axis_a_tdata(f_in),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(g_in),
        .s_axis_b_tready(1'b1),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(fg_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(fg_valid_out)
    );

    multiplier di_mult (  //multiplies d and i 
        .aclk(clk_in),
        .s_axis_a_tdata(d_in),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(i_in),
        .s_axis_b_tready(1'b1),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(di_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(di_valid_out)
    );

    multiplier dh_mult (  //multiplies d and h 
        .aclk(clk_in),
        .s_axis_a_tdata(d_in),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(h_in),
        .s_axis_b_tready(1'b1),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(dh_mult),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(dh_valid_out)
    );

    multiplier eg_mult (  //multiplies e and g 
        .aclk(clk_in),
        .s_axis_a_tdata(e_in),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(mult_valid_in),
        .s_axis_b_tdata(g_in),
        .s_axis_b_tready(1'b1),
        .s_axis_b_tvalid(mult_valid_in),
        .m_axis_result_tdata(eg_mult),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(eg_valid_out)
    );

    logic [31:0] a1_in_1;
    logic [31:0] a1_in_2;
    logic [31:0] a1_out;
    logic a1_valid_in;
    logic a1_valid_out;
    logic [31:0] a2_in_1;
    logic [31:0] a2_in_2;
    logic [31:0] a2_out;
    logic a2_valid_in;
    logic a2_valid_out;
    logic [31:0] a3_in_1;
    logic [31:0] a3_in_2;
    logic [31:0] a3_out;
    logic a3_valid_in;
    logic a3_valid_out;
    logic [31:0] a4_in_1;
    logic [31:0] a4_in_2;
    logic [31:0] a4_out;
    logic a4_valid_in;
    logic a4_valid_out;
    logic [31:0] a5_in_1;
    logic [31:0] a5_in_2;
    logic [31:0] a5_out;
    logic a5_valid_in;
    logic a5_valid_out;
    logic [31:0] a6_in_1;
    logic [31:0] a6_in_2;
    logic [31:0] a6_out;
    logic a6_valid_in;
    logic a6_valid_out;


    adder a1(
        .s_axis_a_tdata(a1_in_1),
        .s_axis_a_tready(1),
        .s_axis_a_tvalid(a1_valid_in),
        .s_axis_b_tdata(a1_in_2),
        .s_axis_b_tready(1),
        .s_axis_b_tvalid(a1_valid_in),
        .aclk(clk_in),
        .m_axis_result_tdata(a1_out),
        .m_axis_result_tready(1),
        .m_axis_result_tvalid(a1_valid_out)
    );

    adder a2(
        .s_axis_a_tdata(a2_in_1),
        .s_axis_a_tready(1),
        .s_axis_a_tvalid(a2_valid_in),
        .s_axis_b_tdata(a2_in_2),
        .s_axis_b_tready(1),
        .s_axis_b_tvalid(a2_valid_in),
        .aclk(clk_in),
        .m_axis_result_tdata(a2_out),
        .m_axis_result_tready(1),
        .m_axis_result_tvalid(a2_valid_out)
    );

    adder a3(
        .s_axis_a_tdata(a3_in_1),
        .s_axis_a_tready(1),
        .s_axis_a_tvalid(a3_valid_in),
        .s_axis_b_tdata(a3_in_2),
        .s_axis_b_tready(1),
        .s_axis_b_tvalid(a3_valid_in),
        .aclk(clk_in),
        .m_axis_result_tdata(a3_out),
        .m_axis_result_tready(1),
        .m_axis_result_tvalid(a3_valid_out)
    );

    adder a4(
        .s_axis_a_tdata(a4_in_1),
        .s_axis_a_tready(1),
        .s_axis_a_tvalid(a4_valid_in),
        .s_axis_b_tdata(a4_in_2),
        .s_axis_b_tready(1),
        .s_axis_b_tvalid(a4_valid_in),
        .aclk(clk_in),
        .m_axis_result_tdata(a4_out),
        .m_axis_result_tready(1),
        .m_axis_result_tvalid(a4_valid_out)
    );

    adder a3(
        .s_axis_a_tdata(a5_in_1),
        .s_axis_a_tready(1),
        .s_axis_a_tvalid(a5_valid_in),
        .s_axis_b_tdata(a5_in_2),
        .s_axis_b_tready(1),
        .s_axis_b_tvalid(a5_valid_in),
        .aclk(clk_in),
        .m_axis_result_tdata(a5_out),
        .m_axis_result_tready(1),
        .m_axis_result_tvalid(a5_valid_out)
    );

    adder a3(
        .s_axis_a_tdata(a6_in_1),
        .s_axis_a_tready(1),
        .s_axis_a_tvalid(a6_valid_in),
        .s_axis_b_tdata(a6_in_2),
        .s_axis_b_tready(1),
        .s_axis_b_tvalid(a6_valid_in),
        .aclk(clk_in),
        .m_axis_result_tdata(a6_out),
        .m_axis_result_tready(1),
        .m_axis_result_tvalid(a6_valid_out)
    );

    logic recip_done;
    logic magnitude_done;


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
            
            // vect1[0] <= 0;
            // vect2[0] <= 0;
            // vect1[1] <= 0;
            // vect2[1] <= 0;
            // vect1[2] <= 0;
            // vect2[2] <= 0;
            // tri_normal[0] <= 0;
            // tri_normal[1] <= 0;
            // tri_normal[2] <= 0;
            // normal_cross_light[0] <= 0;
            // normal_cross_light[1] <= 0;
            // normal_cross_light[2] <= 0;
            recip_done <= 0;
            magnitude_done <= 0;

            
            angle <= 0;
            state <= RECEIVE;
            valid_out <= 0;
        end else begin
            case (state)
                RECEIVE: begin
                    valid_out <= 0;
                    if (data_valid_in) begin

                        // got a triangle, need to get vectors

                        a1_valid_in <= 1; 
                        a2_valid_in <= 1;
                        a3_valid_in <= 1;
                        a4_valid_in <= 1; 
                        a5_valid_in <= 1;
                        a6_valid_in <= 1;
                        
                        a1_in_1 <= triangle[1][0];
                        a1_in_2 <= {~triangle[0][0][31], triangle[0][0][30:0]};
                        a2_in_1 <= triangle[1][1];
                        a2_in_2 <= {~triangle[0][1][31], triangle[0][1][30:0]};
                        a3_in_1 <= triangle[1][2];
                        a3_in_2 <= {~triangle[0][2][31], triangle[0][2][30:0]};
                        a4_in_1 <= triangle[2][0];
                        a4_in_2 <= {~triangle[0][0][31], triangle[0][0][30:0]};
                        a5_in_1 <= triangle[2][1];
                        a5_in_2 <= {~triangle[0][1][31], triangle[0][1][30:0]};
                        a6_in_1 <= triangle[2][2];
                        a6_in_2 <= {~triangle[0][2][31], triangle[0][2][30:0]};

                        // logic [31:0] d_in <= triangle[0][0]; //given that triangles are 3 verticies with x,y,z,1
                        // logic [31:0] e_in <= triangle[0][1];
                        // logic [31:0] f_in <= triangle[0][2];
                        // logic [31:0] g_in <= triangle[1][0];
                        // logic [31:0] h_in <= triangle[1][1];
                        // logic [31:0] i_in <= triangle[1][2];

                        // vect1[2] <= vert2[2]-vert1[2];
                        // vect1[1] <= vert2[1]-vert1[1];
                        // vect1[0] <= vert2[0]-vert1[0];

                        // vect1[2] <= vert3[2]-vert1[2];
                        // vect2[1] <= vert3[1]-vert1[1];
                        // vect2[0] <= vert3[0]-vert1[0];

                        mult_valid_in <= 1;
                        state <= VECTOR_CALC;

                    end

                end
                VECTOR_CALC: begin
                    if(a2_valid_out) begin // hypothetically all of the adders will finish at the same time because they're fixed cycle

                        d_in <= a1_out; //given that triangles are 3 verticies with x,y,z,1
                        e_in <= a2_out;
                        f_in <= a3_out;
                        g_in <= a4_out;
                        h_in <= a5_out;
                        i_in <= a6_out;
                        state <= NORMAL_CALC_1;
                    end


                end
                // find the normal vector to the triangle
                NORMAL_CALC_1: begin
                        mult_valid_in <= 0;
                        if(ei_valid_out) begin  //all multipliers are fixed 12 cycles and start at the same time, so if one is done, all are done
                            normal_calc[0][0] <= ei_out;
                            normal_calc[0][1] <= {~fh_out[31], fh_out[30:0]};
                            normal_calc[0][2] <= fg_out;
                            normal_calc[1][0] <= {~di_out[31], di_out[30:0]}; 
                            normal_calc[1][1] <= dh_out;
                            normal_calc[1][2] <= {~eg_out[31], eg_out[30:0]};  
                            mult_valid_in <= 0;
                            state <= NORMAL_CALC_2;


                        end
                        // NORMAL CALC 1: multiplication. 
                        //     normal_calc = [ei, fh, fg, di, dh, eg]
                end
                NORMAL_CALC_2: begin
                    if(~a1_valid_in) begin
                        a1_valid_in <= 1; 
                        a2_valid_in <= 1;
                        a3_valid_in <= 1;

                        a1_in_1 <= normal_calc[0][0];
                        a1_in_2 <= normal_calc[0][1];
                        a2_in_1 <= normal_calc[0][2];
                        a2_in_2 <= normal_calc[1][0];
                        a3_in_1 <= normal_calc[1][1];
                        a3_in_2 <= normal_calc[1][2];
                    end else begin 
                        a1_valid_in <= 0; 
                        a2_valid_in <= 0;
                        a3_valid_in <= 0;
                        
                    end

                    if(a1_valid_out) begin
                        // all adders should be done here 
                        norm[0] <= a1_out;
                        norm[1] <= a2_out;
                        norm[2] <= a3_out;
                        state <= ANGLE_CALC_1; 


                        // set up for next state 
                        mult_valid_in <= 1; 

                        e_in <= a1_out;
                        i_in <= a1_out;
                        f_in <= a2_out;
                        g_in <= a2_out;
                        d_in <= a3_out;
                        h_in <= a3_out;
                    end

                end
                // find the angle between the normal vector and the light source
                // cos(theta) = (dot product a, b) / |a| * |b|
                ANGLE_CALC_1: begin
                    mult_valid_in <= 0;

                    // mult_valid_in <= 1; 

                    // e_in <= norm[0];
                    // i_in <= norm[0];
                    // f_in <= norm[1];
                    // g_in <= norm[1];
                    // d_in <= norm[2];
                    // h_in <= norm[2];

                    if(ei_valid_out) begin
                        // mult finished 
                        squares[0] <= ei_out;
                        squares[1] <= fg_out;
                        squares[2] <= dh_out;
                        state <= ANGLE_CALC_2;

                        // set up for next state 
                        a1_valid_in <= 1;
                        a1_in_1 <= ei_out;
                        a1_in_2 <= fg_out;

                        rec_valid_in <= 1;
                        rec_in <= dh_out;
                    end

                    // squares[0] <= norm[0]*norm[0];
                    // squares[1] <= norm[1]*norm[1];
                    // squares[2] <= norm[2]*norm[2];

                    // light source magnitude is 1
                end
                ANGLE_CALC_2: begin

                    a1_valid_in <= 0;
                    a2_valid_in <= 0;
                    rec_in <= 0; 

                    if(a1_valid_out) begin
                        a2_in_1 <= a1_out;
                        a2_in_2 <= squares[2];
                        a2_valid_in <= 1;
                    end
                    if(a2_valid_out) begin
                        mag <= a2_out;
                        magnitude_done <= 1;
                    end
                    if(rec_valid_out) begin
                        recip <= rec_out;
                        recip_done <= 1;
                    end

                    if(magnitude_done && recip_done) begin
                        state <= ANGLE_CALC_3;
                        magnitude_done <= 0;
                        recip_done <= 0; 

                        // set up for next stage 
                        e_in <= mag;
                        i_in <= recip;
                        mult_valid_in <= 1; 
                    end
                    
                end
                ANGLE_CALC_3: begin
                    mult_valid_in <= 0; 
                    if(ei_valid_out) begin
                        sec_squared <= ei_out;
                    end


                end
                ANGLE_CALC_4: begin
                    state <= COLOR;

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

