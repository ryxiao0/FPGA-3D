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
        


        REQUIRED IPS: 6 multipliers, 3 adders/subtractors, 1 reciprocal 

    */


    logic [31:0] light_source [2:0]; //(0,0, -1)
    assign light_source[0] = 0;
    assign light_source[1] = 0;
    assign light_source[2] = 32'b10111111100000000000000000000000;

    enum {RECEIVE, VECTORS, NORMAL_CALC_1, NORMAL_CALC_2, ANGLE_CALC_1, ANGLE_CALC_2, ANGLE_CALC_3, MAP, FINAL_CALC, COLOR_MAP, SEND} state;



    logic  [31:0] vect1 [2:0];
    logic  [31:0] vect2 [2:0];
    logic  [31:0] normal_calc [5:0]; // how big is the float coming out of multiply? 
    logic  [31:0] norm [2:0];
    logic  [31:0] sqaures [2:0]; // this is really big — maybe there's a way to lose precision since we don't need it anyway. how to scale down floats? is there a float to float ip? 
    logic [31:0] recip; 
    logic [31:0] mag;
    logic [31:0] recip_cos_squared;
    logic [31:0] final_angle;
    





    // logic signed [9:0] normal_cross_light [2:0];

    // logic [9:0] dot_product;
    // logic [14:0] tri_normal_magnitude_squared;

    // logic [7:0] color;
    // logic [31:0] angle;


    // reciprocal rec (
    //     .aclk(clk_in),
    //     .s_axis_a_tdata(rec_in),
    //     .s_axis_a_tready(),
    //     .s_axis_a_tvalid(rec_v_in),
    //     .m_axis_result_tdata(rec_out),
    //     .m_axis_result_tready(1'b1),
    //     .m_axis_result_tvalid(rec_v_out)
    // );

    // multiplier pro (
    //     .aclk(clk_in),
    //     .s_axis_a_tdata(mult_a_in),
    //     .s_axis_a_tready(),
    //     .s_axis_a_tvalid(mult_v_in),
    //     .s_axis_b_tdata(mult_b_in),
    //     .s_axis_b_tready(),
    //     .s_axis_b_tvalid(mult_v_in),
    //     .m_axis_result_tdata(mult_out),
    //     .m_axis_result_tready(1'b1),
    //     .m_axis_result_tvalid(mult_v_out)
    // );

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
                        state <= NORMAL_CALC_1;

                        // vect1[2] <= vert2[2]-vert1[2];
                        // vect1[1] <= vert2[1]-vert1[1];
                        // vect1[0] <= vert2[0]-vert1[0];

                        // vect1[2] <= vert3[2]-vert1[2];
                        // vect2[1] <= vert3[1]-vert1[1];
                        // vect2[0] <= vert3[0]-vert1[0];

                    end

                end
                // find the normal vector to the triangle
                NORMAL_CALC_1: begin
                    state <= NORMAL_CALC_2;
                        // NORMAL CALC 1: multiplication. 
                        //     normal_calc = [ei, fh, fg, di, dh, eg]
                end
                NORMAL_CALC_2: begin
                    state <= ANGLE_CALC_1;

                end
                // find the angle between the normal vector and the light source
                // cos(theta) = (dot product a, b) / |a| * |b|
                ANGLE_CALC_1: begin
                    state <= ANGLE_CALC_2;
                    // calculate the dot product of a and b and the magnitude 
                    // dot_product <= tri_normal[0] * light_source[0] + tri_normal[1] * light_source[1] + tri_normal[2] * light_source[2];
                    // dot_product <= -tri_normal[2];
                    // tri_normal_magnitude_squared <= tri_normal[0] * tri_normal[0] + tri_normal[1] * tri_normal[1] + tri_normal[2] * tri_normal[2];
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

`default_nettype wire