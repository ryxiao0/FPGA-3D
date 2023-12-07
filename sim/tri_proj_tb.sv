`timescale 1ns / 1ps
`default_nettype none

module tri_proj_tb;

    logic clk;
    logic rst;
    logic [31:0] coor_in [3:0];
    logic [31:0] x_in, y_in, z_in;
    logic v_in;
    logic [8:0] x, y, z;
    logic v_out;

    assign coor_in[3] = x_in;
    assign coor_in[2] = y_in;
    assign coor_in[1] = z_in;
    assign coor_in[0] = 32'h3f800000;

    tri_proj uut (
        .clk_in(clk),
        .rst_in(rst),
        .coor_in(coor_in),
        .valid_in(v_in),
        .x(x),
        .y(y),
        .z(z),
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
        x_in = 32'h40c00000;
        y_in = 32'h40c00000;
        z_in = 32'h40c00000;
        v_in = 1;
        #10;
        v_in <= 0;
        #3000;
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire