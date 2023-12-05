`timescale 1ns / 1ps
`default_nettype none

module in_triangle_tb;

    logic clk;
    logic rst;
    logic [8:0] v1 [2:0];
    logic [8:0] v2 [2:0];
    logic [8:0] v3 [2:0];
    logic [8:0] x;
    logic [8:0] y;
    logic valid_in;
    logic in_tri;
    logic valid_out;

    in_triangle uut (
        .clk_in(clk),
        .rst_in(rst),
        .v1(v1),
        .v2(v2),
        .v3(v3),
        .x(x),
        .y(y),
        .valid_in(valid_in),
        .in_tri(in_tri),
        .valid_out(valid_out)
    );

    always begin
        clk = !clk;
        #5;
    end

    initial begin
        $dumpfile("in_triangle_tb.vcd"); //file to store value change dump (vcd)
        $dumpvars(0,in_triangle_tb);
        $display("Starting Sim"); //print nice message at start
        clk = 0;
        rst = 0;
        #5;
        rst = 1;
        #10;
        rst = 0;
        #5;
        v1[2] = 2;
        v1[1] = 4;
        v2[2] = 4;
        v2[1] = 1;
        v3[2] = 0;
        v3[1] = 0;
        for (integer i=0;i<=4;i=i+1) begin
            for (integer j=0;j<=4;j=j+1) begin
                x = i;
                y = j;
                valid_in = 1;
                #10;
                valid_in = 0;
                #10;
            end
        end
        #100;
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire