`timescale 1ns / 1ps
`default_nettype none

module rasterizer_tb;

    parameter W=16, H=16;

    logic clk;
    logic rst;
    logic [8:0] v1 [2:0];
    logic [8:0] v2 [2:0];
    logic [8:0] v3 [2:0];
    logic valid_tri;
    logic obj_done;
    logic new_frame;
    logic [10:0] hcount_in;
    logic [9:0] vcount_in;
    logic [7:0] color;
    logic ready;

    rasterizer #(
        .WIDTH(360),
        .HEIGHT(360)
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
        .color_out(color),
        .ready_out(ready)
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
        v1[2] = 5;
        v1[1] = 5;
        v2[2] = 10;
        v2[1] = 5;
        v3[2] = 5;
        v3[1] = 10;
        #5;
        rst = 1;
        #10;
        rst = 0;
        for (integer n = 0; n<4; n = n+1) begin
            valid_tri = 1;
            obj_done = 1;
            #10;
            valid_tri = 0;
            obj_done = 0;
            #10;
            for (integer i = 0; i<16; i = i + 1)begin
                for (integer j = 0; j<16; j = j + 1) begin
                    hcount_in = j;
                    vcount_in = i;
                    #10;
                end
            end
        end
        $display("Finishing Sim"); //print nice message
        $finish;
    end

endmodule

`default_nettype wire