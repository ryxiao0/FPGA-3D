`timescale 1ns / 1ps
`default_nettype none

module pixel_shader(
    input wire clk_in,
    input wire rst_in,
    input wire data_valid_in, 
    input wire [8:0] v1 [2:0],
    input wire [8:0] v2 [2:0],
    input wire [8:0] v3 [2:0],
    output logic valid_out, 
    output logic [7:0] color_out
);

    // the vertices of the input, now with signs!
    logic signed [9:0] vert1 [2:0];
    logic signed [9:0] vert2 [2:0];
    logic signed [9:0] vert3 [2:0];
    assign vert1[0] = {1'b0, v1[0]};
    assign vert1[1] = {1'b0, v1[1]};
    assign vert1[2] = {1'b0, v1[2]};
    assign vert2[0] = {1'b0, v2[0]};
    assign vert2[1] = {1'b0, v2[1]};
    assign vert2[2] = {1'b0, v2[2]};
    assign vert3[0] = {1'b0, v3[0]};
    assign vert3[1] = {1'b0, v3[1]};
    assign vert3[2] = {1'b0, v3[2]};


    logic signed [9:0] vect1 [2:0];
    logic signed [9:0] vect2 [2:0];
    logic signed [9:0] tri_normal [2:0];
    logic signed [9:0] normal_cross_light [2:0];

    logic signed [9:0] light_source [2:0];
    assign light_source[0] = 0;
    assign light_source[1] = 0;
    assign light_source[2] = -1;

    logic [9:0] dot_product;
    logic [14:0] tri_normal_magnitude_squared;

    logic [7:0] color;
    logic [31:0] angle;


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




    enum {RECEIVE, NORMAL, ANGLE_CALC_1, ANGLE_CALC_2, ANGLE_CALC_3, ANGLE_CALC_4, COLOR, SEND} state;

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
                        state <= NORMAL;
                        vert1[0] <= {1'b0, v1[0]};
                        vert1[1] <= {1'b0, v1[1]};
                        vert1[2] <= {1'b0, v1[2]};
                        vert2[0] <= {1'b0, v2[0]};
                        vert2[1] <= {1'b0, v2[1]};
                        vert2[2] <= {1'b0, v2[2]};
                        vert3[0] <= {1'b0, v3[0]};
                        vert3[1] <= {1'b0, v3[1]};
                        vert3[2] <= {1'b0, v3[2]};
                        vect1[2] <= vert2[2]-vert1[2];
                        vect1[1] <= vert2[1]-vert1[1];
                        vect1[0] <= vert2[0]-vert1[0];

                        vect1[2] <= vert3[2]-vert1[2];
                        vect2[1] <= vert3[1]-vert1[1];
                        vect2[0] <= vert3[0]-vert1[0];

                    end

                end
                // find the normal vector to the triangle
                NORMAL: begin
                    state <= ANGLE_CALC_1;
                    tri_normal[0] <= vect1[1] * vect2[2] - vect1[2] * vect2[1];
                    tri_normal[1] <= -(vect1[0] * vect2[2] - vect1[2] * vect2[0]);
                    tri_normal[2] <= vect1[0] * vect2[1] - vect1[1] * vect2[0];
                end
                // find the angle between the normal vector and the light source
                // cos(theta) = (dot product a, b) / |a| * |b|
                ANGLE_CALC_1: begin
                    state <= ANGLE_CALC_2;
                    // calculate the dot product of a and b and the magnitude 
                    // dot_product <= tri_normal[0] * light_source[0] + tri_normal[1] * light_source[1] + tri_normal[2] * light_source[2];
                    dot_product <= -tri_normal[2];
                    tri_normal_magnitude_squared <= tri_normal[0] * tri_normal[0] + tri_normal[1] * tri_normal[1] + tri_normal[2] * tri_normal[2];
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