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

    parameter NF=12; // get number of facets from python

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
    logic [10:0] hcount_scaled;
    logic [9:0] vcount_scaled;
    logic valid_addr_scaled;

    // Get Vertices
    logic [31:0] triangle [3:0] [2:0];
    logic gv_valid_out;
    logic gv_obj_done;

    // Transformations
    logic [31:0] tf_pos_in [3:0];
    logic [31:0] tf_dist;
    logic [31:0] tf_scale;
    logic [4:0] tf_pitch, tf_yaw, tf_roll;
    logic tf_valid_in, tf_valid_out;
    logic [31:0] tf_pos_out [3:0];

    // FIFO
    logic fifo_in_valid;
    logic fifo_in_ready;
    logic fifo_out_valid;
    logic fifo_out_ready;
    logic [31:0] fifo_in_triangle [3:0] [2:0];
    logic [383:0] fifo_in_triange_unrolled;
    logic [383:0] fifo_out_triangle_unrolled;
    logic [31:0] fifo_out_triangle [3:0] [2:0];

    // Triangle Projection
    logic tp_obj_done_in, tp_obj_done_out;
    logic [31:0] tp_coor_in [3:0];
    logic tp_valid_in, tp_valid_out;
    logic [8:0] tp_x_out, tp_y_out, tp_z_out;

    // Rasterizer
    logic [8:0] v1_rast [2:0];
    logic [8:0] v2_rast [2:0];
    logic [8:0] v3_rast [2:0];
    logic [8:0] x_rast, y_rast;
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

    get_vertices #(
        .NUM_FACETS(NF)
        ) gv (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .tri_out(triangle),
        .valid_out(gv_valid_out),
        .obj_done(gv_obj_done)
    );

    // always_ff @(posedge clk_pixel) begin
    //     if (sys_rst) begin
    //         distance <= 32'h40a00000; // 5
    //     end else begin
    //         if (btn[0])
    //     end
    // end

    assign tf_dist = 32'h40a00000;

    transformation tf (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .pos(tf_pos_in),
        .distance(tf_dist),
        .scale(tf_scale),
        .pitch(tf_pitch),
        .roll(tf_roll),
        .yaw(tf_yaw),
        .valid_in(tf_valid_in),
        .valid_out(tf_valid_out),
        .new_pos(tf_pos_out)
    );

    fifo my_fifo (
        .s_axis_aresetn(btn[0]),
        .s_axis_aclk(clk_100mhz),
        .s_axis_tvalid(fifo_in_valid),
        .s_axis_tready(fifo_in_ready),
        .s_axis_tdata(fifo_in_triange_unrolled),
        .m_axis_tvalid(fifo_out_valid),
        .m_axis_tready(fifo_out_ready),
        .m_axis_tdata(fifo_out_triangle_unrolled)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            in_tri <= 0;
        end else begin
            if(fifo_in_valid) begin
                // rolling the triangle to put into the FIFO
                fifo_in_triange_unrolled = {triangle[3][2], triangle[3][1], triangle[3][0], triangle[2][2], triangle[2][1], triangle[2][0], triangle[1][2], triangle[1][1], triangle[1][0], triangle[0][2], triangle[0][1], triangle[0][0]}
            end
            if(fifo_out_valid) begin
                // unrolling the triangle out of fifo
                for(int i = 0; i < 4; i= i + 1) begin
                    for(int j = 0; j < 3; j = j + 1) begin
                        int x = j * 32 + i * 32 * 3;
                        fifo_out_triangle[x+31:x]
                    end
                end
            end
        end
    end


    tri_proj tp (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .obj_done_in(tp_obj_done_in),
        .coor_in(tp_coor_in),
        .valid_in(tp_valid_in)
        .valid_out(tp_valid_out),
        .obj_done_out(tp_obj_done_out),
        .x(tp_x_out),
        .y(tp_y_out),
        .z(tp_z_out)
    );

    /*
    Add color mapping here
    */

    // Tests a single triangle
    // assign valid_tri = 1;
    // assign v1_rast[2] = 20;
    // assign v1_rast[1] = 20;
    // assign v1_rast[0] = 30;
    // assign v2_rast[2] = 20;
    // assign v2_rast[1] = 40;
    // assign v2_rast[0] = 30;
    // assign v3_rast[2] = 40;
    // assign v3_rast[1] = 20;
    // assign v3_rast[0] = 30;

    logic [7:0] c;
    assign c = (sw[0])? gray: 8'hFF;

    assign obj_done = new_frame;

    rasterizer rast (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .vert1(v1_rast),
        .vert2(v2_rast),
        .vert3(v3_rast),
        .valid_tri(valid_tri),
        .obj_done(obj_done),
        .new_frame(new_frame),
        .hcount(hcount_scaled),
        .vcount(vcount_scaled),
        .color_out(gray)
    );

    //three tmds_encoders (blue, green, red)
    //will ise gray value for each rgb value
    tmds_encoder tmds_red(
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .data_in(c),
        .control_in(2'b0),
        .ve_in(active_draw),
        .tmds_out(tmds_10b[2]));

    tmds_encoder tmds_green(
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .data_in(c),
        .control_in(2'b0),
        .ve_in(active_draw),
        .tmds_out(tmds_10b[1]));

    tmds_encoder tmds_blue(
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .data_in(c),
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