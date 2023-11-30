`timescale 1ns / 1ps
`default_nettype none

module top_level(
    input wire clk_100mhz,
    input wire [15:0] sw, //all 16 input slide switches
    input wire [3:0] btn, //all four momentary button switches
    output logic [15:0] led, //16 green output LEDs (located right above switches)
    output logic [2:0] hdmi_tx_p, //hdmi output signals (blue, green, red)
    output logic [2:0] hdmi_tx_n, //hdmi output signals (negatives)
    output logic hdmi_clk_p, hdmi_clk_n //differential hdmi clock
);

    parameter NUM_VERTICES=8; // get number of vertices from python

    assign led = sw;
    logic sys_rst;
    assign sys_rst = btn[0];

    //Clocking Variables:
    logic clk_pixel, clk_5x; //clock lines (pixel clock and 1/2 tmds clock)
    logic locked; //locked signal (we'll leave unused but still hook it up)

    //Signals related to driving the video pipeline
    logic [10:0] hcount; //horizontal count
    logic [9:0] vcount; //vertical count
    logic vert_sync; //vertical sync signal
    logic hor_sync; //horizontal sync signal
    logic active_draw; //active draw signal
    logic new_frame; //new frame (use this to trigger center of mass calculations)
    logic [5:0] frame_count; //current frame

    // Scaling
    logic [8:0] hcount_scaled;
    logic [8:0] vcount_scaled;
    logic valid_addr_scaled;

    // Rasterizer
    logic [8:0] x_rast;
    logic [8:0] y_rast;
    logic [7:0] depth;
    logic in_tri;
    logic rast_valid_out;
    logic [31:0] triangle [3:0] [2:0];
    logic valid_tri;
    logic obj_done;
    logic [7:0] gray;

    // TMDS
    logic [9:0] tmds_10b [0:2]; //output of each TMDS encoder!
    logic tmds_signal [2:0]; //output of each TMDS serializer!

    //clock manager...creates 74.25 Hz and 5 times 74.25 MHz for pixel and TMDS,respectively
    hdmi_clk_wiz_720p mhdmicw (
        .clk_pixel(clk_pixel),
        .clk_tmds(clk_5x),
        .reset(0),
        .locked(locked),
        .clk_ref(clk_100mhz)
    );

    video_sig_gen mvg(
        .clk_pixel_in(clk_pixel),
        .rst_in(sys_rst),
        .hcount_out(hcount),
        .vcount_out(vcount),
        .vs_out(vert_sync),
        .hs_out(hor_sync),
        .ad_out(active_draw),
        .nf_out(new_frame),
        .fc_out(frame_count)
    );

    scale s (
        .scale_in({sw[0],sw[1]}),
        .hcount_in(hcount),
        .vcount_in(vcount),
        .scaled_hcount_out(hcount_scaled),
        .scaled_vcount_out(vcount_scaled),
        .valid_addr_out(valid_addr_scaled)
    );

    assign valid_tri = 1;

    // tri_proj tp (

    // );

    rasterizer rast (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .triangle(triangle),
        .valid_tri(valid_tri),
        .obj_done(obj_done),
        .new_frame(new_frame),
        .hcount(hcount_scaled),
        .vcount(vcount_scaled),
        .color(gray)
    );

    //three tmds_encoders (blue, green, red)
    //will ise gray value for each rgb value
    tmds_encoder tmds_red(
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .data_in(gray),
        .control_in(2'b0),
        .ve_in(active_draw),
        .tmds_out(tmds_10b[2]));

    tmds_encoder tmds_green(
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .data_in(gray),
        .control_in(2'b0),
        .ve_in(active_draw),
        .tmds_out(tmds_10b[1]));

    tmds_encoder tmds_blue(
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .data_in(gray),
        .control_in({vert_sync,hor_sync}),
        .ve_in(active_draw),
        .tmds_out(tmds_10b[0]));

    //four tmds_serializers (blue, green, red, and clock)
    tmds_serializer red_ser(
        .clk_pixel_in(clk_pixel),
        .clk_5x_in(clk_5x),
        .rst_in(sys_rst),
        .tmds_in(tmds_10b[2]),
        .tmds_out(tmds_signal[2]));

    tmds_serializer green_ser(
        .clk_pixel_in(clk_pixel),
        .clk_5x_in(clk_5x),
        .rst_in(sys_rst),
        .tmds_in(tmds_10b[1]),
        .tmds_out(tmds_signal[1]));

    tmds_serializer blue_ser(
        .clk_pixel_in(clk_pixel),
        .clk_5x_in(clk_5x),
        .rst_in(sys_rst),
        .tmds_in(tmds_10b[0]),
        .tmds_out(tmds_signal[0]));

    OBUFDS OBUFDS_blue (.I(tmds_signal[0]), .O(hdmi_tx_p[0]), .OB(hdmi_tx_n[0]));
    OBUFDS OBUFDS_green(.I(tmds_signal[1]), .O(hdmi_tx_p[1]), .OB(hdmi_tx_n[1]));
    OBUFDS OBUFDS_red  (.I(tmds_signal[2]), .O(hdmi_tx_p[2]), .OB(hdmi_tx_n[2]));
    OBUFDS OBUFDS_clock(.I(clk_pixel), .O(hdmi_clk_p), .OB(hdmi_clk_n));

endmodule

`default_nettype wire