module rasterizer #(
    parameter WIDTH = 64,
    parameter HEIGHT = 64
    )
    (
    input wire clk_in,
    input wire rst_in,
    //input wire [8:0] triangle [2:0] [2:0],
    input wire valid_tri,
    input wire obj_done,
    input wire new_frame,
    input wire [5:0] hcount,
    input wire [5:0] vcount,
    output logic [7:0] color
);

    parameter BLACK=8'h00, COLOR=8'hCC;

    ////////////////
    ///Rasterizer///
    ////////////////

    // rounding to half even
    // IWID - input width (32)
    // OWID - output width (8)
    // assign	w_convergent = i_data[(IWID-1):0]
    //             + { {(OWID){1'b0}},
    //                 i_data[(IWID-OWID)],
    //                 {(IWID-OWID-1){!i_data[(IWID-OWID)]}}};
    // always @(posedge i_clk)
    //     o_convergent <= w_convergent[(IWID-1):(IWID-OWID)];


    enum {RECEIVE, ITER, SEND} state;

    logic buf_sel;
    always_ff @(posedge clk_in) begin
        if (rst_in) buf_sel <= 0;
        else if (new_frame) buf_sel <= ~buf_sel;
    end

    logic [16:0] write_addr;
    logic [16:0] write_in;
    logic wea0;
    logic wea1;
    logic [16:0] read_out_w;

    logic [31:0] proj_triangle [2:0] [2:0];
    logic [8:0] rounded_triangle [2:0] [2:0];

    logic [8:0] x_max;
    logic [8:0] x_min;
    logic [8:0] y_max;
    logic [8:0] y_min;
    logic [8:0] x_iter;
    logic [8:0] y_iter;
    logic [8:0] depth; 

    logic tp_valid_out;
    assign tp_valid_out = valid_tri;

    logic valid_r;
    logic read_pipe [1:0];
    logic [15:0] buffer_in0;
    logic [15:0] buffer_in1;
    logic [7:0] color_val;
    logic [16:0] read_out0;
    logic [16:0] read_out1;
    logic [7:0] read_out;

    logic [16:0] read_addr0;
    logic [16:0] read_addr1;

    // bounding box for pixel iterating
    // assign x_max = (rounded_triangle[2][0] > rounded_triangle[2][1] && 
    //                 rounded_triangle[2][0] > rounded_triangle[2][2])? rounded_triangle[2][0]:
    //                 (rounded_triangle[2][1] > rounded_triangle[2][2])? rounded_triangle[2][1]:
    //                                                                     rounded_triangle[2][2];

    // assign y_max = (rounded_triangle[1][0] > rounded_triangle[1][1] && 
    //                 rounded_triangle[1][0] > rounded_triangle[1][2])? rounded_triangle[1][0]:
    //                 (rounded_triangle[1][1] > rounded_triangle[1][2])? rounded_triangle[1][1]:
    //                                                                     rounded_triangle[1][2];

    // assign x_min = (rounded_triangle[2][0] < rounded_triangle[2][1] && 
    //                 rounded_triangle[2][0] < rounded_triangle[2][2])? rounded_triangle[2][0]:
    //                 (rounded_triangle[2][1] < rounded_triangle[2][2])? rounded_triangle[2][1]:
    //                                                                     rounded_triangle[2][2];

    // assign y_min = (rounded_triangle[1][0] < rounded_triangle[1][1] && 
    //                 rounded_triangle[1][0] < rounded_triangle[1][2])? rounded_triangle[1][0]:
    //                 (rounded_triangle[1][1] < rounded_triangle[1][2])? rounded_triangle[1][1]:
    //                                                                     rounded_triangle[1][2];

    assign x_max = WIDTH;
    assign x_min = 0;
    assign y_max = HEIGHT;
    assign y_min = 0;

    // get minimum depth (z) of triangle (assume surfaces don't go through each other)
    // assign depth = (rounded_triangle[0][0] < rounded_triangle[0][1] && 
    //                 rounded_triangle[0][0] < rounded_triangle[0][2])? rounded_triangle[0][0]:
    //                 (rounded_triangle[0][1] < rounded_triangle[0][2])? rounded_triangle[0][1]:
    //                                                                     rounded_triangle[0][2];
    assign depth = 0;

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            x_iter <= x_min;
            y_iter <= y_min;
            wea0 <= 0;
            wea1 <= 0;
        end else begin
            case (state)
                RECEIVE: begin
                    if (tp_valid_out) begin
                        state <= ITER;
                    end
                    x_iter <= x_min;
                    y_iter <= y_min;
                    wea0 <= 0;
                    wea1 <= 0;
                end
                ITER: begin
                    if (in_tri && depth < read_out_w[8:0]) begin
                        write_addr <= x_iter + y_iter*WIDTH;
                        write_in <= {COLOR, depth};
                        if (buf_sel) wea0 <= 1;
                        else wea1 <= 1;
                    end else begin
                        wea0 <= 0;
                        wea1 <= 0;
                    end

                    if (x_iter <= x_max) x_iter = x_iter + 1;
                    else begin
                        x_iter <= x_min;
                        if (y_iter <= y_max) y_iter = y_iter + 1;
                        else begin
                            y_iter <= y_min;
                            state <= SEND; // iterated through every pixel in box
                        end
                    end
                end
                SEND: begin // need to figure out timing
                    state <= RECEIVE;
                end
            endcase;
        end
    end

    assign read_out_w = (buf_sel)? read_out0: read_out1; // buffer being written
    assign in_tri = ((x_iter >= 100 && x_iter < (100 + 150)) && 
                        (y_iter >= 100 && y_iter < (100 + 150)));

    //////////////////
    ///Frame Buffer///
    //////////////////
    // logic [16:0] read_addr0;
    // logic [16:0] read_addr1;

    assign read_addr0 = (buf_sel)? x_iter + y_iter*WIDTH: hcount + vcount*WIDTH;
    assign read_addr1 = (~buf_sel)? x_iter + y_iter*WIDTH: hcount + vcount*WIDTH;

    // logic valid_r;
    // logic read_pipe [1:0];
    // logic [15:0] buffer_in0;
    // logic [15:0] buffer_in1;
    // logic [7:0] color_val;
    // logic [16:0] read_out0;
    // logic [16:0] read_out1;
    // logic [7:0] read_out;

    assign read_out = (buf_sel)? read_out1[16:9]: read_out0[16:9]; // buffer being outputted

    always_ff @(posedge clk_in) begin
        if (rst_in) color <= 0;
        else color <= read_pipe[1];
    end
    // pipelining for BRAM reads (2 cycles)
    always_ff @(posedge clk_in)begin
        read_pipe[0] <= read_out;
        read_pipe[1] <= read_pipe[0];
    end

    xilinx_true_dual_port_read_first_2_clock_ram #(
        .RAM_WIDTH(17), // most sig 8 is color, least sig 8 is depth (z)
        .RAM_DEPTH(WIDTH*HEIGHT))
        z_buffer0 (
        .addra(write_addr), // rasterizer output
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
        .addra(write_addr), // rasterizer output
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