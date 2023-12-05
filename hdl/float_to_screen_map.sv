/*`default_nettype none
`timescale 1ns/1ps
module float_to_screen_map
    (
        input wire clk_in,
        input wire rst_in,
        input wire valid_in,
        input wire [31:0] input_float,
        output logic data_valid_out,
        output logic [31:0] output_integer
    );

    logic [31:0] float_180 = 32'b01000011001101000000000000000000;
    logic [31:0] input_times_180;
    logic [31:0] float_0_to_360;
    logic [31:0] final_integer;
    logic mult_valid_out;
    logic float_valid_out;

    multiplier mult (
        .aclk(clk_in),
        .s_axis_a_tdata(input_float),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(valid_in),
        .s_axis_b_tdata(float_180),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(1'b1),
        .m_axis_result_tdata(input_times_180),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(mult_valid_out)
    );

    adder add (
        .aclk(clk_in),
        .s_axis_a_tdata(input_times_180),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_valid_out),
        .s_axis_b_tdata(float_180),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(1'b1),
        .m_axis_result_tdata(float_0_to_360),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(float_valid_out)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            input_times_180 <= 0;
            float_0_to_360 <= 0;
            final_integer <= 0;
            mult_valid_out <= 0; 
            float_valid_out <= 0;
            data_valid_out <= 0;
        end else begin 
            // convert float_0_to_360 to an integer 
            // int'(float_0_to_360) would also work if this doesn't
            if(float_valid_out) begin
                final_integer <= $rtoi(float_0_to_360);
                data_valid_out <= 1;
            end else begin
                data_valid_out <= 0;
            end

        end
    end

    assign output_integer = final_integer;



endmodule
`default_nettype wire*/