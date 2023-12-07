`timescale 1ns / 1ps
`default_nettype none

module round_tb;

    parameter IWID=32, OWID=8;

    logic clk;
    logic [31:0] float;
    logic [15:0] ip_out;
    logic [8:0] integ;
    logic v_in;
    logic v_out;
    logic ready;

    assign integ = ip_out[14:6];

    float_to_fixed uut (
        .aclk(clk),
        .s_axis_a_tdata(float),
        .s_axis_a_tready(ready),
        .s_axis_a_tvalid(v_in),
        .m_axis_result_tdata(ip_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(v_out)
    );

    always begin
        clk = ~clk;
        #5;
    end

    initial begin
        $dumpfile("round_tb.vcd");
        $dumpvars(0, round_tb);
        $display("Starting Sim");
        clk = 0;
        v_in = 0;
        #10;
        float = 32'h44611333; // 900.3
        v_in = 1;
        #15;
        v_in = 0;
        #100;
        float = 32'h43fa4ccd; // 500.6
        v_in = 1;
        #15;
        v_in = 0;
        #100;
        float = 32'h42d00000; // 104
        v_in = 1;
        #15;
        v_in = 0;
        #100;
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire