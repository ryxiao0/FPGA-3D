module rasterizer #(
    parameter WIDTH = 360,
    parameter HEIGHT = 360,
    parameter BITWIDTH = $clog(WIDTH)-1,
    parameter BITHEIGHT = $clog(HEIGHT)-1
    )
    (
    input wire clk_in,
    input wire rst_in,
    input wire [8:0] vert1 [2:0],
    input wire [8:0] vert2 [2:0],
    input wire [8:0] vert3 [2:0],
    input wire valid_tri,
    input wire obj_done,
    input wire new_frame,
    // input wire [5:0] hcount,
    // input wire [5:0] vcount,
    input wire [10:0] hcount,
    input wire [9:0] vcount,
    output logic [7:0] color_out,
    output logic ready_out
);

    parameter BLACK=8'h00, COLOR=8'hCC;

    ////////////////
    ///Rasterizer///
    ////////////////

    enum {RECEIVE, ITER, CHECK, SEND} state;

    // calculate rom address
    localparam STAGES = 2;


    // CHANGE - pipelined incorrectly, should pipeline color
    // logic [$clog2(WIDTH*HEIGHT)-1:0] image_addr;
    logic [10:0] hcount_in_pipe [STAGES-1:0];
    logic [9:0] vcount_in_pipe [STAGES-1:0];
    // logic [5:0] hcount_in_pipe [STAGES-1:0];
    // logic [5:0] vcount_in_pipe [STAGES-1:0];

    always_ff @(posedge clk_in) begin
        hcount_in_pipe[0] <= hcount;
        vcount_in_pipe[0] <= vcount;
        for (int i=1;i<STAGES;i=i+1) begin // 2 3 or 4 stages
        hcount_in_pipe[i] <= hcount_in_pipe[i-1];
        vcount_in_pipe[i] <= vcount_in_pipe[i-1];
        end
    end

    // buffer swap
    logic buf_sel;
    always_ff @(posedge clk_in) begin
        if (rst_in) buf_sel <= 0;
        else if (obj_done) buf_sel <= ~buf_sel;
    end

    // write buffer: 0 means buffer0 is being read, 1 means buffer1 is being read
    logic [16:0] write_addr, write_in;
    logic wea0, wea1;
    logic [8:0] read_out_w;

    // bounding box for pixel iterating
    logic [8:0] x_max, x_min, y_max, y_min;
    logic [8:0] x_iter, y_iter;
    logic [8:0] depth; 

    assign x_max = (vert1[2] > vert2[2] && 
                    vert1[2] > vert3[2])? vert1[2]:
                    (vert2[2] > vert3[2])? vert2[2]: vert3[2];

    assign x_min = (vert1[2] < vert2[2] && 
                    vert1[2] < vert3[2])? vert1[2]:
                    (vert2[2] < vert3[2])? vert2[2]: vert3[2];

    assign y_max = (vert1[1] > vert2[1] && 
                    vert1[1] > vert3[1])? vert1[1]:
                    (vert2[1] > vert3[1])? vert2[1]: vert3[1];

    assign y_min = (vert1[1] < vert2[1] && 
                    vert1[1] < vert3[1])? vert1[1]:
                    (vert2[1] < vert3[1])? vert2[1]: vert3[1];

    // get minimum depth (z) of triangle (assume surfaces don't go through each other)
    assign depth = (vert1[0] < vert2[0] && 
                    vert1[0] < vert3[0])? vert1[0]:
                    (vert2[0] < vert3[0])? vert2[0]: vert3[0];

    // read buffer 0 means buffer1 is read, 1 means buffer0 is read
    logic valid_r;
    logic [7:0] read_pipe [1:0];
    logic [15:0] buffer_in0, buffer_in1;
    logic [7:0] color_val;
    logic [16:0] read_out0, read_out1;
    logic [7:0] read_out;
    logic [16:0] read_addr0, read_addr1;
    logic [16:0] write_addr0, write_addr1;

    assign read_out_w = (buf_sel)? read_out0[8:0]: read_out1[8:0]; // buffer being written
    assign read_addr0 = (buf_sel)? x_iter + y_iter*WIDTH: hcount_in_pipe[STAGES-1] + vcount_in_pipe[STAGES-1]*WIDTH;
    assign read_addr1 = (~buf_sel)? x_iter + y_iter*WIDTH: hcount_in_pipe[STAGES-1] + vcount_in_pipe[STAGES-1]*WIDTH;
    assign read_out = (buf_sel)? read_out1[16:9]: read_out0[16:9]; // buffer being outputted
    assign write_addr0 = write_addr;
    assign write_addr1 = write_addr;

    logic in_tri_v_in, in_tri_out, in_tri_v_out;

    in_triangle intri (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .v1(vert1),
        .v2(vert2),
        .v3(vert3),
        .x(x_iter),
        .y(y_iter),
        .valid_in(in_tri_v_in),
        .in_tri(in_tri_out),
        .valid_out(in_tri_v_out)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            x_iter <= x_min;
            y_iter <= y_min;
            wea0 <= 0;
            wea1 <= 0;
            state <= RECEIVE;
            in_tri_v_in <= 0;
        end else begin
            case (state)
                RECEIVE: begin
                    if (valid_tri) begin
                        state <= ITER;
                        ready_out <= 0;
                    end else ready_out <= 1;
                    x_iter <= x_min-1;
                    y_iter <= y_min-1;
                    wea0 <= 0;
                    wea1 <= 0;
                end
                ITER: begin
                    if (x_iter <= x_max) x_iter <= x_iter + 1;
                    else begin
                        x_iter <= x_min;
                        y_iter <= y_iter + 1;
                    end
                    in_tri_v_in <= 1;
                    state <= CHECK;
                end
                CHECK: begin
                    if (in_tri_v_out) begin
                        if (in_tri_out) begin
                            // if (depth <= read_out_w[8:0]) begin
                                write_addr <= x_iter + y_iter*WIDTH;
                                write_in <= {COLOR, depth};
                                if (buf_sel) wea0 <= 1;
                                else wea1 <= 1;
                            // end else begin
                            //     wea0 <= 0;
                            //     wea1 <= 0;
                            // end
                        end

                        if (y_iter > y_max) state <= SEND;
                        else state <= ITER;

                        in_tri_v_in <= 0;
                    end
                end
                SEND: begin // need to figure out timing
                    state <= RECEIVE;
                end
            endcase;
        end
    end

    //////////////////
    ///Frame Buffer///
    //////////////////

    assign color_out = read_out;

    xilinx_true_dual_port_read_first_2_clock_ram #(
        .RAM_WIDTH(17), // most sig 8 is color, least sig 8 is depth (z)
        .RAM_DEPTH(WIDTH*HEIGHT))
        z_buffer0 (
        .addra(write_addr0), // rasterizer output
        .clka(clk_in),
        .wea(wea0),
        .dina(write_in),
        .ena(1'b1),
        .regcea(1'b1),
        .rsta(rst_in),
        .douta(),
        .addrb(read_addr0),
        .dinb(),
        .clkb(clk_in),
        .web(1'b0),
        .enb(1'b1),
        .rstb(rst_in),
        .regceb(1'b1),
        .doutb(read_out0)
    );

    xilinx_true_dual_port_read_first_2_clock_ram #(
        .RAM_WIDTH(17), // most sig 8 is color, least sig 8 is depth (z)
        .RAM_DEPTH(WIDTH*HEIGHT))
        z_buffer1 (
        .addra(write_addr1), // rasterizer output
        .clka(clk_in),
        .wea(wea1),
        .dina(write_in),
        .ena(1'b1),
        .regcea(1'b1),
        .rsta(rst_in),
        .douta(),
        .addrb(read_addr1),
        .dinb(),
        .clkb(clk_in),
        .web(1'b0),
        .enb(1'b1),
        .rstb(rst_in),
        .regceb(1'b1),
        .doutb(read_out1)
    );

endmodule