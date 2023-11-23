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
    localparam OUTPUT_WIDTH = 540;
    localparam OUTPUT_HEIGHT = 540;

    // inputs 
    // angle: roll, pitch and yaw — integers from 0 to 5760. (1/16 of a degree)
    logic [12:0] roll;
    logic [12:0] pitch;
    logic [12:0] yaw; 

    // position: x, y, z - integers from 0 to output_width/height * 4 (4 increases per pixel)
    // x and y relative to COM 
    // z for zooming later
    logic [11:0] input_x;
    logic [11:0] input_y;
    logic [11:0] input_z;

    always_ff @(posedge clk_100mhz) begin
        if(btn[0]) begin
            // sys reset signal 
            input_x <= OUTPUT_WIDTH/2;
            input_y <= OUTPUT_HEIGHT/2;
            input_z <= 0;
            roll <= 0;
            pitch <= 0; 
            yaw <= 0;
        end else begin
            if (sw[0]) begin 
                roll <= (roll + 1) % 5760;
            end 
            if (sw[1]) begin
                pitch <= (pitch + 1) % 5760;
            end 
            if (sw[2]) begin
                yaw <= (yaw + 1) % 5760;
            end
            if (sw[13]) begin
                input_x <= (input_x + 1) % (OUTPUT_WIDTH * 4);
            end 
            if (sw[14]) begin
                input_y <= (input_y + 1) % (OUTPUT_HEIGHT * 4);
            end
            if (sw[15]) begin
                input_z <= (input_z + 1) % (OUTPUT_WIDTH * 4);
            end
        end 
    end


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
    
    assign val21 = mat_out[0];
    assign val22 = mat_out[1];
    assign val23 = mat_out[2];
    assign val24 = mat_out[3];

    manta matrix_mult (
        .clk(clk_100mhz),
        .tx(uart_txd),
        .rx(uart_rxd),
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

    logic fifo_in_valid;
    logic fifo_in_ready;
    logic [8:0] fifo_in_data; // 32 bit integers [2:0][3:0] 
    logic fifo_out_valid;
    logic fifo_out_ready;
    logic [8:0] fifo_out_data; // 32 bit integers [2:0][3:0]


    manta fifo (
        .s_axis_aresetn(btn[0]),
        .s_axis_aclk(clk_100mhz),
        .s_axis_tvalid(fifo_in_valid),
        .s_axis_tready(fifo_in_ready),
        .s_axis_tdata(fifo_in_data),
        .m_axis_tvalid(fifo_out_valid),
        .m_axis_tready(fifo_out_ready),
        .m_axis_tdata(fifo_out_data)
    );

    // manta reciprocal (
    //     .aclk(clk_100mhz),
    //     .s_axis_aclk(clk_100mhz),
    //     .s_axis_a_tvalid(recip_in_valid),
    //     .s_axis_a_tready(recip_in_ready),
    //     .s_axis_a_tdata(recip_in_data),
    //     .m_axis_result_tvalid(recip_out_valid),
    //     .m_axis_result_tready(recip_out_ready),
    //     .m_axis_result_tdata(recip_out_data)
    // );

endmodule //top_level

`default_nettype wire