`timescale 1ns / 1ps
`default_nettype none

module pixel_shader_tb;

    logic clk;
    logic rst;
    logic [31:0] tri_in [3:0] [2:0];
    logic v_in, v_out;
    logic color_out;

    //assign coor_in[0] = 32'h3f800000;

    pixel_shader test_shader (
        .clk_in(clk),
        .rst_in(rst),
        .data_valid_in(v_in),
        .triangle(tri_in),
        .valid_out(v_out),
        .color_out(color_out)
    );

    always begin
        clk = ~clk;
        #5;
    end

    initial begin
        $dumpfile("pixel_shader_tb.sv");
        $dumpvars(0, tri_proj_tb);
        $display("Starting Sim");
        clk = 0;
        rst = 0;
        #5;
        rst = 1;
        #10;
        rst = 0;
        #10;
        tri_in[0][3] <= 32'd1; //should get 90 (0 in greyscale) if my traingle translation is correct
        tri_in[0][2] <= 32'd1;
        tri_in[0][1] <= 32'd0;

        tri_in[1][3] <= 32'd2;
        tri_in[1][2] <= 32'd2;
        tri_in[1][1] <= 32'd0;
        
        tri_in[2][3] <= 32'd2;
        tri_in[2][2] <= 32'd1;
        tri_in[2][1] <= 32'd0;
        
        v_in <= 1;
        #10;
        v_in <= 0;
        #3000;
        $display("Finishing Sim");
        $finish;
    end

endmodule

`default_nettype wire