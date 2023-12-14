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
    logic [31:0] gv_v1_out [3:0];
    logic [31:0] gv_v2_out [3:0];
    logic [31:0] gv_v3_out [3:0];
    logic gv_valid_out;
    logic gv_obj_done;
    logic gv_ready_in;

    // Input System
    // logic [8:0] current_translate [2:0];
    // logic [31:0] current_scale;
    // logic [31:0] current_scale;
    // logic [4:0] current_pitch;
    // logic [4:0] current_roll; 
    // logic [4:0] current_yaw;
    // logic [8:0] translate [2:0];
    // logic [31:0] scale;
    // logic [4:0] pitch;
    // logic [4:0] roll; 
    // logic [4:0] yaw;
    // logic scale_valid_out;

    // Transformations
    logic [31:0] tf_pos_in_1 [3:0];
    logic [31:0] tf_pos_in_2 [3:0];
    logic [31:0] tf_pos_in_3 [3:0];
    logic [31:0] tf_dist; // depth from viewpoint
    logic [31:0] tf_scale; // scale
    logic [4:0] tf_pitch, tf_yaw, tf_roll; // rotatations, btn[0] increases pitch (x), btn[1] increases yaw (y), btn[2] increases roll (z)
    logic tf_valid_in;
    logic tf_valid_out_1, tf_valid_out_2, tf_valid_out_3;
    logic tf_obj_done_in;
    logic tf_obj_done_out_1, tf_obj_done_out_2, tf_obj_done_out_3;
    logic [31:0] tf_pos_out_1 [3:0];
    logic [31:0] tf_pos_out_2 [3:0];
    logic [31:0] tf_pos_out_3 [3:0];
    logic tf_ready_in;
    logic tf_ready_out_1, tf_ready_out_2, tf_ready_out_3;

    // FIFO
    logic fifo_in_valid;
    logic fifo_in_ready;
    logic fifo_out_valid;
    logic fifo_out_ready;
    logic [31:0] fifo_in_triangle [2:0] [3:0];
    logic [383:0] fifo_in_triangle_unrolled;
    logic [383:0] fifo_out_triangle_unrolled;
    logic [31:0] fifo_out_triangle [2:0] [3:0];

    // Triangle Projection
    logic tp_obj_done_in;
    logic tp_obj_done_out_1, tp_obj_done_out_2, tp_obj_done_out_3;
    logic [31:0] tp_coor_in_1 [3:0];
    logic [31:0] tp_coor_in_2 [3:0];
    logic [31:0] tp_coor_in_3 [3:0];
    logic tp_valid_in;
    logic tp_valid_out_1, tp_valid_out_2, tp_valid_out_3;
    logic [8:0] tp_coor_out_1 [2:0];
    logic [8:0] tp_coor_out_2 [2:0];
    logic [8:0] tp_coor_out_3 [2:0];
    logic tp_ready_in;
    logic tp_ready_out_1, tp_ready_out_2, tp_ready_out_3;

    // Rasterizer
    logic [8:0] v1_rast [2:0];
    logic [8:0] v2_rast [2:0];
    logic [8:0] v3_rast [2:0];
    logic [8:0] x_rast, y_rast;
    logic [7:0] depth;
    logic rast_valid_in, rast_valid_out;
    logic rast_obj_done_in;
    logic [7:0] gray;
    logic rast_ready_out;

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
        .scale_in({sw[15],sw[14]}),
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
        .v1(gv_v1_out),
        .v2(gv_v2_out),
        .v3(gv_v3_out),
        .valid_out(gv_valid_out),
        .obj_done(gv_obj_done),
        .ready_in(gv_ready_in)
    );

    // assign led[0] = gv_valid_out;


    // always_ff @(posedge clk_pixel) begin
    //     if (sys_rst) begin
    //         distance <= 32'h40a00000; // 5
    //     end else begin
    //         if (btn[0])
    //     end
    // end


    // getting inputs for transformation
    // system_inputs #(
    //  .rot_max(3), // the maximum value of pitch, roll and yaw, 
    //   .translate_max(24), // the maximum value of translate in any direction
    //  .scale_min(1),
    //  .scale_max(1))
    //  s
    // (
    //     .clk_in(clk_100mhz),
    //     .rst_in(rst_in), 
    //     .sw(sw),
    //     .valid_in(1),
    //     .current_translate(current_translate),
    //     .current_scale(current_scale),
    //     .current_pitch(current_pitch),
    //     .current_roll(current_roll), 
    //     .current_yaw(current_yaw),
    //     .translate(new_translate),
    //     .scale(new_scale),
    //     .pitch(new_pitch),
    //     .roll(new_roll), 
    //     .yaw(new_yaw),
    //     .scale_valid_out(scale_valid_out)
    // );
    // always_ff @(posedge clk_in) begin
    //     current_translate <= new_translate;
    //     current_pitch <= new_pitch;
    //     current_roll <= new_roll;
    //     current_yaw <= new_yaw
    //     if(scale_valid_out) begin
    //         current_scale <= new_scale;
    //     end
    // end

    // Transformation Test - works, theres an odd gray square tho
    assign tf_pos_in_1[3] = 32'h3f800000; // 1
    assign tf_pos_in_1[2] = 32'h3f800000; // 1
    assign tf_pos_in_1[1] = 32'h00000000; // from 0 units away

    assign tf_pos_in_2[3] = 32'hbf800000; // 1
    assign tf_pos_in_2[2] = 32'h3f800000; // -1
    assign tf_pos_in_2[1] = 32'h00000000; // from 10 units away

    assign tf_pos_in_3[3] = 32'h00000000; // 0
    assign tf_pos_in_3[2] = 32'h00000000; // 0
    assign tf_pos_in_3[1] = 32'h00000000; // from 0 units away

    assign tf_valid_in = 1;
    assign tf_obj_done_in = new_frame;

    assign tf_dist = 32'h41200000; // 10 units away

    // assign tf_pos_in_1 = gv_v1_out;
    // assign tf_pos_in_2 = gv_v2_out;
    // assign tf_pos_in_3 = gv_v3_out;

    // assign tf_valid_in = gv_valid_out;
    // assign gv_ready_in = tf_ready_out_1;

    // assign tf_obj_done_in = gv_obj_done;

    transformation tf1 (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .pos(tf_pos_in_1),
        .distance(tf_dist),
        .scale(tf_scale),
        .pitch(tf_pitch),
        .roll(tf_roll),
        .yaw(tf_yaw),
        .obj_done_in(tf_obj_done_in),
        .valid_in(tf_valid_in),
        .valid_out(tf_valid_out_1),
        .obj_done_out(tf_obj_done_out_1),
        .new_pos(tf_pos_out_1),
        .ready_in(tf_ready_in),
        .ready_out(tf_ready_out_1)
    );

    transformation tf2 (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .pos(tf_pos_in_2),
        .distance(tf_dist),
        .scale(tf_scale),
        .pitch(tf_pitch),
        .roll(tf_roll),
        .yaw(tf_yaw),
        .obj_done_in(tf_obj_done_in),
        .valid_in(tf_valid_in),
        .valid_out(tf_valid_out_2),
        .obj_done_out(tf_obj_done_out_2),
        .new_pos(tf_pos_out_2),
        .ready_in(tf_ready_in),
        .ready_out(tf_ready_out_2)
    );

    transformation tf3 (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .pos(tf_pos_in_3),
        .distance(tf_dist),
        .scale(tf_scale),
        .pitch(tf_pitch),
        .roll(tf_roll),
        .yaw(tf_yaw),
        .obj_done_in(tf_obj_done_in),
        .valid_in(tf_valid_in),
        .valid_out(tf_valid_out_3),
        .obj_done_out(tf_obj_done_out_3),
        .new_pos(tf_pos_out_3),
        .ready_in(tf_ready_in),
        .ready_out(tf_ready_out_3)
    );

    // logic [31:0] fifo_obj_done_sig [3:0];
    // assign fifo_obj_done_sig [0] = 32'b0;
    // assign fifo_obj_done_sig [1] = 32'b0;
    // assign fifo_obj_done_sig [2] = 32'b0;
    // assign fifo_obj_done_sig [3] = 32'b0;

    // assign fifo_in_triangle[0] = (tf_obj_done_out_1)? fifo_obj_done_sig: tf_pos_out_1;
    // assign fifo_in_triangle[1] = (tf_obj_done_out_2)? fifo_obj_done_sig: tf_pos_out_2;
    // assign fifo_in_triangle[2] = (tf_obj_done_out_3)? fifo_obj_done_sig: tf_pos_out_3;
    // assign fifo_in_triangle_unrolled = {fifo_in_triangle[2][3], fifo_in_triangle[1][3], fifo_in_triangle[0][3], fifo_in_triangle[2][2], fifo_in_triangle[1][2], fifo_in_triangle[0][2], fifo_in_triangle[2][1], fifo_in_triangle[1][1], fifo_in_triangle[0][1], fifo_in_triangle[2][0], fifo_in_triangle[1][0], fifo_in_triangle[0][0]};
    // assign fifo_in_valid = tf_valid_out_3;

    // fifo my_fifo (
    //     .s_axis_aresetn(btn[0]),
    //     .s_axis_aclk(clk_pixel),
    //     .s_axis_tvalid(fifo_in_valid),
    //     .s_axis_tready(fifo_in_ready),
    //     .s_axis_tdata(fifo_in_triangle_unrolled),
    //     .m_axis_tvalid(fifo_out_valid),
    //     .m_axis_tready(1'b1), // add ready signal later
    //     .m_axis_tdata(fifo_out_triangle_unrolled)
    // );

    // always_ff @(posedge clk_pixel) begin
    //     if (sys_rst) begin
    //         fifo_in_valid <= 0;
    //         fifo_out_valid <= 0;
    //     end else begin
    //         if(fifo_in_valid) begin
    //             // rolling the triangle to put into the FIFO
    //             fifo_in_triange_unrolled <= {fifo_in_triangle[3][2], triangle[3][1], triangle[3][0], triangle[2][2], triangle[2][1], triangle[2][0], triangle[1][2], triangle[1][1], triangle[1][0], triangle[0][2], triangle[0][1], triangle[0][0]};
    //         end
    //         if(fifo_out_valid) begin
    //             // unrolling the triangle out of fifo
    //             fifo_out_triangle[0][0] <= fifo_out_triangle_unrolled[31:0];
    //             fifo_out_triangle[0][1] <= fifo_out_triangle_unrolled[63:32];
    //             fifo_out_triangle[0][2] <= fifo_out_triangle_unrolled[95:64];
    //             fifo_out_triangle[1][0] <= fifo_out_triangle_unrolled[127:96];
    //             fifo_out_triangle[1][1] <= fifo_out_triangle_unrolled[159:128];
    //             fifo_out_triangle[1][2] <= fifo_out_triangle_unrolled[191:160];
    //             fifo_out_triangle[2][0] <= fifo_out_triangle_unrolled[223:192];
    //             fifo_out_triangle[2][1] <= fifo_out_triangle_unrolled[255:224];
    //             fifo_out_triangle[2][2] <= fifo_out_triangle_unrolled[287:256];
    //             fifo_out_triangle[3][0] <= fifo_out_triangle_unrolled[319:288];
    //             fifo_out_triangle[3][1] <= fifo_out_triangle_unrolled[351:320];
    //             fifo_out_triangle[3][2] <= fifo_out_triangle_unrolled[383:352];

    //         end
    //     end
    // end

    // assign fifo_out_triangle[0][0] = fifo_out_triangle_unrolled[31:0];
    // assign fifo_out_triangle[1][0] = fifo_out_triangle_unrolled[63:32];
    // assign fifo_out_triangle[2][0] = fifo_out_triangle_unrolled[95:64];
    // assign fifo_out_triangle[0][1] = fifo_out_triangle_unrolled[127:96];
    // assign fifo_out_triangle[1][1] = fifo_out_triangle_unrolled[159:128];
    // assign fifo_out_triangle[2][1] = fifo_out_triangle_unrolled[191:160];
    // assign fifo_out_triangle[0][2] = fifo_out_triangle_unrolled[223:192];
    // assign fifo_out_triangle[1][2] = fifo_out_triangle_unrolled[255:224];
    // assign fifo_out_triangle[2][2] = fifo_out_triangle_unrolled[287:256];
    // assign fifo_out_triangle[0][3] = fifo_out_triangle_unrolled[319:288];
    // assign fifo_out_triangle[1][3] = fifo_out_triangle_unrolled[351:320];
    // assign fifo_out_triangle[2][3] = fifo_out_triangle_unrolled[383:352];

    // assign tp_coor_in_1 = fifo_out_triangle[0];
    // assign tp_coor_in_2 = fifo_out_triangle[1];
    // assign tp_coor_in_3 = fifo_out_triangle[2];

    // assign tp_obj_done_in = (fifo_out_triangle[0][0] == 32'b0 && fifo_out_triangle[1][0] == 32'b0 && fifo_out_triangle[2][0] == 32'b0);

    // assign tp_valid_in = fifo_out_valid;

    // Triangle Projection Test - works
    // assign tp_coor_in_1[3] = 32'h3f800000; // 1
    // assign tp_coor_in_1[2] = 32'h3f800000; // 1
    // assign tp_coor_in_1[1] = 32'h41200000; // from 10 units away

    // assign tp_coor_in_2[3] = 32'hbf800000; // 1
    // assign tp_coor_in_2[2] = 32'h3f800000; // -1
    // assign tp_coor_in_2[1] = 32'h41200000; // from 10 units away

    // assign tp_coor_in_3[3] = 32'h00000000; // 0
    // assign tp_coor_in_3[2] = 32'h00000000; // 0
    // assign tp_coor_in_3[1] = 32'h41200000; // from 10 units away

    // assign tp_valid_in = 1;
    // assign tp_obj_done_in = new_frame;

    assign tp_coor_in_1 = tf_pos_out_1;
    assign tp_coor_in_2 = tf_pos_out_2;
    assign tp_coor_in_3 = tf_pos_out_3; 

    assign tp_valid_in = tf_valid_out_1;
    assign tf_ready_in = tp_ready_out_1;

    assign tp_obj_done_in = tf_obj_done_out_1;

    tri_proj tp1 (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .obj_done_in(tp_obj_done_in),
        .coor_in(tp_coor_in_1),
        .valid_in(tp_valid_in),
        .valid_out(tp_valid_out_1),
        .obj_done_out(tp_obj_done_out_1),
        .coor_out(tp_coor_out_1),
        .ready_in(tp_ready_in),
        .ready_out(tp_ready_out_1)
    );

    tri_proj tp2 (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .obj_done_in(tp_obj_done_in),
        .coor_in(tp_coor_in_2),
        .valid_in(tp_valid_in),
        .valid_out(tp_valid_out_2),
        .obj_done_out(tp_obj_done_out_2),
        .coor_out(tp_coor_out_2),
        .ready_in(tp_ready_in),
        .ready_out(tp_ready_out_2)
    );

    tri_proj tp3 (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .obj_done_in(tp_obj_done_in),
        .coor_in(tp_coor_in_3),
        .valid_in(tp_valid_in),
        .valid_out(tp_valid_out_3),
        .obj_done_out(tp_obj_done_out_3),
        .coor_out(tp_coor_out_3),
        .ready_in(tp_ready_in),
        .ready_out(tp_ready_out_3)
    );

    // assign 

    /*
    Add color mapping here
    */

    // Tests a single triangle
    // assign rast_valid_in = 1;
    // assign v1_rast[2] = 20;
    // assign v1_rast[1] = 20;
    // assign v1_rast[0] = 30;
    // assign v2_rast[2] = 20;
    // assign v2_rast[1] = 40;
    // assign v2_rast[0] = 30;
    // assign v3_rast[2] = 40;
    // assign v3_rast[1] = 20;
    // assign v3_rast[0] = 30;
    // assign rast_obj_done_in = new_frame;

    logic [7:0] c;
    assign c = (sw[0])? gray: 8'hCC;

    assign v1_rast = tp_coor_out_1;
    assign v2_rast = tp_coor_out_2;
    assign v3_rast = tp_coor_out_3;

    assign rast_valid_in = tp_valid_out_3;
    assign tp_ready_in = rast_ready_out;

    assign rast_obj_done_in = tp_obj_done_out_1;

    rasterizer rast (
        .clk_in(clk_pixel),
        .rst_in(sys_rst),
        .vert1(v1_rast),
        .vert2(v2_rast),
        .vert3(v3_rast),
        .valid_tri(rast_valid_in),
        .obj_done(rast_obj_done_in),
        .new_frame(new_frame),
        .hcount(hcount_scaled),
        .vcount(vcount_scaled),
        .color_out(gray),
        .ready_out(rast_ready_out)
    );

    // assign led[15:8] = gray;

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