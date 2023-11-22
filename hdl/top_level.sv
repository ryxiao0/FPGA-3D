`timescale 1ns / 1ps
`default_nettype none

module top_level(
    input wire clk_100mhz,
    input wire [15:0] sw, //all 16 input slide switches
    input wire [3:0] btn, //all four momentary button switches
    output logic [15:0] led, //16 green output LEDs (located right above switches)
    output logic [2:0] rgb0, //rgb led
    output logic [2:0] rgb1, //rgb led
    output logic [2:0] hdmi_tx_p, //hdmi output signals (blue, green, red)
    output logic [2:0] hdmi_tx_n, //hdmi output signals (negatives)
    output logic hdmi_clk_p, hdmi_clk_n, //differential hdmi clock
    output logic [6:0] ss0_c,
    output logic [6:0] ss1_c,
    output logic [3:0] ss0_an,
    output logic [3:0] ss1_an,
    input wire [7:0] pmoda,
    input wire [2:0] pmodb,
    output logic pmodbclk,
    output logic pmodblock,
    output logic uart_txd,
    input wire uart_rxd
);

    logic [31:0] val1;
    logic [31:0] val2;
    logic [31:0] val3;
    logic [31:0] val4;
    logic [31:0] val5;
    logic [31:0] val6;
    logic [31:0] val7;
    logic [31:0] val8;
    logic [31:0] val9;
    logic [31:0] val10;
    logic [31:0] val11;
    logic [31:0] val12;
    logic [31:0] val13;
    logic [31:0] val14;
    logic [31:0] val15;
    logic [31:0] val16;
    logic [31:0] val17;
    logic [31:0] val18;
    logic [31:0] val19;
    logic [31:0] val20;
    logic [31:0] val21;
    logic [31:0] val22;
    logic [31:0] val23;
    logic [31:0] val24;

    logic [31:0] mat1 [3:0] [3:0];
    logic [31:0] mat2 [3:0];

    assign mat1[0][0] = val1;
    assign mat1[0][1] = val2;
    assign mat1[0][2] = val3;
    assign mat1[0][3] = val4;
    assign mat1[1][0] = val5;
    assign mat1[1][1] = val6;
    assign mat1[1][2] = val7;
    assign mat1[1][3] = val8;
    assign mat1[2][0] = val9;
    assign mat1[2][1] = val10;
    assign mat1[2][2] = val11;
    assign mat1[2][3] = val12;
    assign mat1[3][0] = val13;
    assign mat1[3][1] = val14;
    assign mat1[3][2] = val15;
    assign mat1[3][3] = val16;

    assign mat2[0] = val17;
    assign mat2[1] = val18;
    assign mat2[2] = val19;
    assign mat2[3] = val20;

    logic v_in;
    logic v_out;
    logic [31:0] mat_out [3:0];

    assign led = sw;

    matrix_mult mm (
        .clk_in(clk_100mhz),
        .rst_in(btn[0]),
        .valid_in(v_in),
        .mat1_in(mat1),
        .mat2_in(mat2),
        .valid_out(v_out),
        .mat_out(mat_out)
    );
    

    manta matrix_mult (
        .clk(clk_100mhz),
        .tx(uart_txd),
        .rx(uart_rx),
        .val1_out(val1),
        .val2_out(val2),
        .val3_out(val3),
        .val4_out(val4),
        .val5_out(val5),
        .val6_out(val6),
        .val7_out(val7),
        .val8_out(val8),
        .val9_out(val9),
        .val10_out(val10),
        .val11_out(val11),
        .val12_out(val12),
        .val13_out(val13),
        .val14_out(val14),
        .val15_out(val15),
        .val16_out(val16),
        .val17_out(val17),
        .val18_out(val18),
        .val19_out(val19),
        .val20_out(val20),
        .val21_in(val21),
        .val22_in(val22),
        .val23_in(val23),
        .val24_in(val24)
    );

endmodule //top_level

`default_nettype wire