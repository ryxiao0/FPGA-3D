

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
        VECTOR_CALC: do the subtraction between points to get two vectors. 

        NORMAL_CALC_MULT: multiplication. 
            normal_calc = [ei, fh, fg, di, dh, eg]

        NORMAL_CALC_ADD: subtraction
            norm = [ei - fh, fg - di, dh - eg]
            (norm[0] = normal_calc[1] - normal_calc[0])

        SQUARE_NORMAL: squares 
            sqares = [(ei - fh)^2, (fg - di)^2, (dh - eg)^2]

        MAGNITUDE: reciprocal and magnitudes
            recip = (1/(eg  - dh)^2)
            mag = (ei-fh)^2 + (fg-di)^2 + (dh-eg)^2)

        SEC_SQUARED: multiply. 
            sec_squared = mag * recip

        COS_SQUARED: reciprocal
            cos_squared = 1/sec_squared

        MULT_16: multiply by 16

        ROUND: round to the nearest integer to get an index for the lookup table 

        COLOR: look up in the table and return the value. d
        

        
        REQUIRED IPS: 6 multipliers, 6 adders/subtractors, 1 reciprocal, 1 float to fixed 

    */
    


    logic [31:0] light_source [2:0]; //(0,0, -1)
    assign light_source[0] = 0;
    assign light_source[1] = 0;
    assign light_source[2] = 32'b10111111100000000000000000000000;

    enum {RECEIVE, VECTOR_CALC, NORMAL_CALC_MULT, NORMAL_CALC_ADD, SQUARE_NORMAL, MAGNITUDE, SEC_SQUARED, COS_SQUARED, MULT_16, ROUND, COLOR} state;



    logic  [31:0] vect1 [2:0];
    logic  [31:0] vect2 [2:0];
    logic  [31:0] normal_calc [1:0] [2:0]; 

    logic  [31:0] norm [2:0]; 

    logic  [31:0] sqaures [2:0]; 
    logic [31:0] recip; 
    logic [31:0] mag;
    logic [31:0] sec_squared;
    logic [31:0] cos_squared;
    logic [31:0] to_round;
    logic [31:0] table_index;
    logic [7:0] final_calc_color;



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

    logic [31:0] round_in;
    logic round_valid_in;
    logic [31:0] round_out;
    logic round_valid_out;

    float_to_fixed round (
        .aclk(clk_in),
        .s_axis_a_tdata(round_in),
        .s_axis_a_tready(1),
        .s_axis_a_tvalid(round_valid_in),
        .m_axis_result_tdata(round_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(round_valid_out)
    );




    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            
            mult_valid_in <= 0;
            a1_valid_in <= 0;
            a2_valid_in <= 0;
            a3_valid_in <= 0;
            a4_valid_in <= 0;
            a5_valid_in <= 0;
            a6_valid_in <= 0;
            rec_valid_in <= 0;
            round_valid_in <= 0; 
            recip_done <= 0;
            magnitude_done <= 0;
            color_out <= 0;
            final_calc_color <= 0;
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
                NORMAL_CALC_MULT: begin
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
                NORMAL_CALC_ADD: begin
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
                SQUARE_NORMAL: begin
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
                MAGNTIDUE: begin

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
                SEC_SQUARED: begin
                    mult_valid_in <= 0; 
                    if(ei_valid_out) begin
                        sec_squared <= ei_out;
                        rec_valid_in <= 1;
                        rec_in <= ei_out;
                        state <= ANGLE_CALC_4;
                    end

                end
                COS_SQUARED: begin 
                    rec_valid_in <= 0;
                    if(rec_valid_out) begin
                        cos_squared <= rec_out;

                        mult_valid_in <= 1;
                        e_in <= rec_out;
                        i_in <= 32'b01000001100000000000000000000000;
                        state <= MULT_16;

                    end 

                end
                MULT_16: begin
                    mult_valid_in <= 0;
                    if(ei_valid_out) begin
                        to_round <= ei_out;

                        round_valid_in <= 1;
                        round_in <= ei_out;
                        state <= ROUND;


                    end
                end
                ROUND: begin 
                    round_valid_in <= 0;
                    if(round_valid_out) begin
                        table_index <= round_out; 
                        final_calc_color <= color_map(round_out);
                    end

                end
                // TODO: map that  (cos(angle)) to a color 
                COLOR: begin 

                    if(norm[2][31]) begin 
                        // the normal vector is pointing away from the screen - the color shouldn't be visible 
                        color_out <= 8'b1111_1111;
                        valid_out <= 1;
                        state <= RECEIVE;
                    end else begin 
                        // the angle is positive and needs to be mapped 
                        color_out <= final_calc_color;
                        valid_out <= 1;
                        state <= RECEIVE;

                    end
                end
            endcase;
        end
    end



endmodule

function [8:0] greyscale_color (input [16:0] cos_squared_x); //initial stab at mapping (light drops off expontentially)
    case (cos_squared_x) //floor of 16*cos2x
        16'd0:  greyscale_color = 8'd0;
        16'd1:  greyscale_color = 8'd20;
        16'd2:  greyscale_color = 8'd40;
        16'd3:  greyscale_color = 8'd60;
        16'd4:  greyscale_color = 8'd78;
        16'd5:  greyscale_color = 8'd96;
        16'd6:  greyscale_color = 8'd114;
        16'd7:  greyscale_color = 8'd130;
        16'd8:  greyscale_color = 8'd146;
        16'd9:  greyscale_color = 8'd162;                 //peak brightness should be perpendicular to the light source? I think
        16'd10:  greyscale_color = 8'd178;
        16'd11:  greyscale_color = 8'd194;
        16'd12:  greyscale_color = 8'd210;
        16'd13:  greyscale_color = 8'd226;
        16'd14:  greyscale_color = 8'd242;
        16'd15:  greyscale_color = 8'd256;

        
    endcase;
endfunction
`default_nettype wire

