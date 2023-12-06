`timescale 1ns / 1ps
`default_nettype none

module tri_proj_tb;

    logic clk;
    logic rst;
    logic [31:0] coor_in [3:0];
    logic v_in;
    logic [31:0] coor_out [1:0];
    logic v_out;

    tri_proj uut (
        .clk_in(clk),
        .rst_in(rst),
        .coor_in(coor_in),
        .valid_in(v_in),
        .coor_out(coor_out),
        .valid_out(v_out)
    );

    always begin
        clk = ~clk;
        #5;
    end

    initial begin
        $dumpfile("tri_proj_tb.sv");
        $dumpvars(0, tri_proj_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #5;
        rst = 1;
        #10;
        rst = 0;
        #10;
        
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire