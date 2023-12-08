
`default_nettype none
`timescale 1ns/1ps
module float_to_screen_map
    (
        input wire clk_in,
        input wire rst_in,
        input wire data_valid_in,
        input wire [31:0] input_float,
        output logic data_valid_out,
        output logic [31:0] float_out, 
        output logic [31:0] output_integer
    );

    logic [31:0] float_180 = 32'b01000011001101000000000000000000;
    logic [31:0] float_one = 32'b00111111100000000000000000000000;
    logic [31:0] float_zero_to_one;
    logic [31:0] float_0_to_360;
    logic [31:0] f2f_output;
    logic add_valid_out;
    logic mult_valid_out;
    logic f2f_data_valid_out;
    logic f2f_is_ready_for_mult;
    logic mult_is_ready_for_add;

    adder add (
        .aclk(clk_in),
        .s_axis_a_tdata(input_float),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(data_valid_in),
        .s_axis_b_tdata(float_one),
        .s_axis_b_tready(1'b1),
        .s_axis_b_tvalid(1'b1),
        .m_axis_result_tdata(float_zero_to_one),
        .m_axis_result_tready(mult_is_ready_for_add),
        .m_axis_result_tvalid(add_valid_out)
    );

    multiplier mult (
        .aclk(clk_in),
        .s_axis_a_tdata(float_zero_to_one),
        .s_axis_a_tready(mult_is_ready_for_add),
        .s_axis_a_tvalid(add_valid_out),
        .s_axis_b_tdata(float_180),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(1'b1),
        .m_axis_result_tdata(float_0_to_360),
        .m_axis_result_tready(f2f_is_ready_for_mult),
        .m_axis_result_tvalid(mult_valid_out)
    );

    float_to_fixed float_to_fixed_map (
        .aclk(clk_in),
        .s_axis_a_tvalid(mult_valid_out),
        .s_axis_a_tready(f2f_is_ready_for_mult),
        .s_axis_a_tdata(float_0_to_360),
        .m_axis_result_tvalid(f2f_data_valid_out),
        .m_axis_result_tready(1),
        .m_axis_result_tdata(f2f_output)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            data_valid_out <= 0;
            float_out <= 0;
            output_integer <= 0;
        end else begin 
            data_valid_out <= f2f_data_valid_out;
            if(f2f_data_valid_out) begin
                output_integer <= f2f_output >> 6;
            end 
            if(mult_valid_out) begin
                float_out <= float_0_to_360;
            end

        end
    end




endmodule
`default_nettype wire