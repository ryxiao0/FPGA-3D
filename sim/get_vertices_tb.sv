`timescale 1ns / 1ps
`default_nettype none

module get_vertices_tb;

    logic clk;
    logic rst;
    logic go;
    logic [31:0] v1 [3:0];
    logic [31:0] v2 [3:0];
    logic [31:0] v3 [3:0];
    logic valid_out;
    logic obj_done;
    logic ready_in;
    logic [31:0] v1_x, v1_y, v1_z;
    logic [31:0] v2_x, v2_y, v2_z;
    logic [31:0] v3_x, v3_y, v3_z;

    assign v1_x = v1[3];
    assign v1_y = v1[2];
    assign v1_z = v1[1];

    assign v2_x = v2[3];
    assign v2_y = v2[2];
    assign v2_z = v2[1];

    assign v3_x = v3[3];
    assign v3_y = v3[2];
    assign v3_z = v3[1];

    get_vertices uut (
        .clk_in(clk),
        .rst_in(rst),
        .v1(v1),
        .v2(v2),
        .v3(v3),
        .valid_out(valid_out),
        .obj_done(obj_done),
        .ready_in(ready_in)
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
        ready_in = 1;
        #10;
        // go = 0;
        #10000;
        $display("Finishing Sim");;
        $finish;
    end

endmodule

`default_nettype wire