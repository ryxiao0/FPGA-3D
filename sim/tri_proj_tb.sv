`timescale 1ns / 1ps
`default_nettype none

module tri_proj_tb;

    logic clk;
    logic rst;
    logic obj_done, obj_done_out;
    logic [31:0] coor_in [3:0];
    logic [31:0] x_in, y_in, z_in;
    logic v_in;
    logic [8:0] coor_out [2:0];
    logic [8:0] x, y, z;
    logic v_out;
    logic ready_in, ready_out;

    assign coor_in[3] = x_in;
    assign coor_in[2] = y_in;
    assign coor_in[1] = z_in;
    assign coor_in[0] = 32'h3f800000;

    assign x = coor_out[2];
    assign y = coor_out[1];
    assign z = coor_out[0];

    tri_proj uut (
        .clk_in(clk),
        .rst_in(rst),
        .obj_done_in(),
        .coor_in(coor_in),
        .valid_in(v_in),
        .coor_out(coor_out),
        .valid_out(v_out),
        .obj_done_out(obj_done_out),
        .ready_out(ready_out),
        .ready_in(ready_in)
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
        x_in = 32'h00000000;
        y_in = 32'h00000000;
        z_in = 32'h41200000;
        ready_in = 1;
        v_in = 1;
        #10;
        v_in <= 0;
        #3000;
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire