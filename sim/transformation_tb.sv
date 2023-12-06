`timescale 1ns / 1ps
`default_nettype none

module transformation_tb;

    logic clk;
    logic rst;
    logic [31:0] x_in, y_in, z_in;
    logic [31:0] pos [3:0];
    logic v_in;
    logic [31:0] new_pos [3:0];
    logic [31:0] x, y, z, w;
    logic v_out;

    assign x = new_pos[3];
    assign y = new_pos[2];
    assign z = new_pos[1];
    assign w = new_pos[0];

    assign pos[3] = x_in;
    assign pos[2] = y_in;
    assign pos[1] = z_in;
    assign pos[0] = 32'h3f800000;

    transformation uut (
        .clk_in(clk),
        .rst_in(rst),
        .pos(pos),
        .valid_in(v_in),
        .valid_out(v_out),
        .new_pos(new_pos)
    );

    always begin
        clk = ~clk;
        #5;
    end

    initial begin
        $dumpfile("transformation_tb.sv");
        $dumpvars(0, transformation_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #5;
        rst = 1;
        #10;
        rst = 0;
        #5;
        x_in = 32'h3f800000;
        y_in = 32'h3f800000;
        z_in = 0;
        v_in = 1;
        #10;
        v_in = 0;
        #1000;
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire
