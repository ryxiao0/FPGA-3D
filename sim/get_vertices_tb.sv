`timescale 1ns / 1ps
`default_nettype none

module get_vertices_tb:

    logic clk;
    logic rst;
    logic [31:0] tri_out [3:0] [2:0];
    logic valid_out;
    logic obj_done;

    get_vertices uut (
        .clk_in(clk),
        .rst_in(rst),
        .tri_out(tri_out),
        .valid_out(valid_out),
        .obj_done(obj_done)
    );

    always begin
        clk = !clk;
        #5;
    end

    initial begin
        $dumpfile("get_vertices_tb.vcd"); //file to store value change dump (vcd)
        $dumpvars(0,get_vertices_tb);
        $display("Starting Sim"); //print nice message at start
        clk = 0;
        rst = 0;
        #5;
        rst = 1;
        #10;
        rst = 0;
        #10000;
        $display("Finishing Sim");;
        $finish;
    end

endmodule

`default_nettype wire