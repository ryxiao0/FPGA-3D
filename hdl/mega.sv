module mega (
    input wire clk_in,
    input wire rst_in,
    input wire [10:0] hcount,
    input wire [9:0] vcount,
    output logic [7:0] color
);

    logic sys_rst;
    assign sys_rst = rst_in;

    logic clk_pixel;
    assign clk_pixel = clk_in;

    // Get Vertices
    logic [31:0] gv_v1_out [3:0];
    logic [31:0] gv_v2_out [3:0];
    logic [31:0] gv_v3_out [3:0];
    logic gv_valid_out;
    logic gv_obj_done;
    logic gv_ready_in;

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

    get_vertices #(
        .NUM_FACETS(12)
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

    assign tf_dist = 32'h41f00000; // 30 units away

    assign tf_pos_in_1 = gv_v1_out;
    assign tf_pos_in_2 = gv_v2_out;
    assign tf_pos_in_3 = gv_v3_out;

    assign tf_valid_in = gv_valid_out;
    assign gv_ready_in = tf_ready_out_1;

    assign tf_obj_done_in = gv_obj_done;

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

    logic [7:0] c;
    assign c = gray;

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
        .hcount(hcount),
        .vcount(vcount),
        .count_valid(1'b1),
        .color_out(gray),
        .ready_out(rast_ready_out)
    );

    assign color = c;


endmodule