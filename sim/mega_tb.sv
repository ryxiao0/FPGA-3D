`timescale 1ns / 1ps
`default_nettype none

module mega_tb;

    logic clk;
    logic rst;
    logic [10:0] hcount;
    logic [9:0] vcount;
    logic [7:0] color;

    mega uut (
        .clk_in(clk),
        .rst_in(rst),
        .hcount(hcount),
        .vcount(vcount),
        .color(color)
    );

    always begin
        clk = !clk;
        #5;
    end

    initial begin
        $dumpfile("mega_tb.vcd"); //file to store value change dump (vcd)
        $dumpvars(0,mega_tb);
        $display("Starting Sim"); //print nice message at start
        clk = 0;
        rst = 0;
        #5;
        rst = 1;
        #10;
        rst = 0;
        #10;
        for (integer i=0; i<10; i=i+1) begin
            for (integer h=0;h<20; h=h+1) begin
                for (integer v=0;v<20; v=v+1) begin
                    hcount = h;
                    vcount = v;
                    #10;
                end
            end
        end
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire