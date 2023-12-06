`timescale 1ns / 1ps
`default_nettype none

module transformation_tb;

    logic clk;
    logic rst;
    logic [31:0] pos [3:0];
    logic v_in;
    logic [31:0] new_pos [3:0];
    logic [31:0] x, y, z, w;
    logic v_out;

    assign x = new_pos[3];
    assign y = new_pos[2];
    assign z = new_pos[1];
    assign w = new_pos[0];

    always begin
        clk = ~clk;
        #5;
    end

    initial begin
        $dumpfile("transformation_tb.sv");
        $dumpvars(0, transformation_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #5;
        rst = 1;
        #10;
        rst = 0;
        #5;
        pos[3] = 0;
        pos[2] = 0;
        pos[1] = 0;
        pos[0] = 0;
        v_in = 1;
        #10;
        v_in = 0;
        #1000;
        $display("Finishing Sim");
        $finish
    end

endmodule

`default_nettype wire