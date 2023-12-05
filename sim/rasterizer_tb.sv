`timescale 1ns / 1ps
`default_nettype none

module rasterizer_tb;

    parameter W=64, H=64;

    logic clk;
    logic rst;
    logic [8:0] v1 [2:0];
    logic [8:0] v2 [2:0];
    logic [8:0] v3 [2:0];
    logic valid_tri;
    logic obj_done;
    logic new_frame;
    logic [5:0] hcount_in;
    logic [5:0] vcount_in;
    logic [7:0] color;

    rasterizer #(
        .WIDTH(64),
        .HEIGHT(64)
        )uut(
        .clk_in(clk),
        .rst_in(rst),
        .vert1(v1),
        .vert2(v2),
        .vert3(v3),
        .valid_tri(valid_tri),
        .obj_done(obj_done),
        .new_frame(new_frame),
        .hcount(hcount_in),
        .vcount(vcount_in),
        .color(color)
    );

    always begin
        #5;
        clk = ~clk;
    end

    initial begin
        $dumpfile("rasterizer_tb.vcd"); //file to store value change dump (vcd)
        $dumpvars(0,rasterizer_tb);
        $display("Starting Sim"); //print nice message at start
        clk = 0;
        rst = 0;
        v1[2] = 20;
        v1[1] = 20;
        v2[2] = 20;
        v2[1] = 40;
        v3[2] = 40;
        v3[1] = 20;
        #5;
        rst = 1;
        #10;
        rst = 0;
        valid_tri = 1;
        #15000;
        // for (integer i = 0; i<64; i = i + 1)begin
        //     for (integer j = 0; j<64; j = j + 1) begin
        //         hcount_in = j;
        //         vcount_in = i;
        //         valid_tri = 1;
        //         #10;
        //     end
        // end
        #100;
        $display("Finishing Sim"); //print nice message
        $finish;
    end

endmodule

`default_nettype wire