`timescale 1ns / 1ps
`default_nettype none

module matrix_mult_tb;

    logic clk;
    logic rst;
    logic valid_in;
    logic [31:0] mat1_in [3:0] [3:0];
    logic [31:0] mat2_in [3:0];
    logic valid_out;
    logic [31:0] mat_out [3:0];

    matrix_mult uut (
        .clk_in(clk),
        .rst_in(rst),
        .valid_in(valid_in),
        .mat1_in(mat1_in),
        .mat2_in(mat2_in),
        .valid_out(valid_out),
        .mat_out(mat_out)
    );

    always begin
        #5;
        clk = !clk;
    end

    initial begin
        $dumpfile("matrix_mult_tb.vcd"); //file to store value change dump (vcd)
        $dumpvars(0,matrix_mult_tb);
        $display("Starting Sim"); //print nice message at start
        clk = 0;
        rst = 0;
        #5;
        rst = 1;
        #10;
        rst = 0;
        #5;
        for (integer i=0;i<4;i=i+1) begin
            mat2_in[i] = 32'h3f800000;
            for (integer j=0;j<4;j=j+1) begin
                if (i == j) mat1_in[i][j] = 32'h3f800000;
                else mat1_in[i][j] = 0;
            end
        end
        valid_in = 1;
        #10;
        valid_in = 0;
        #1000;
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire