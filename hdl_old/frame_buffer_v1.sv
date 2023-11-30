module frame_buffer #(
    parameter WIDTH = 360,
    parameter HEIGHT = 360
    )
    (
    input wire clk_in,
    input wire rst_in,
    input wire valid_in,
    input wire buffer_sel, // 0 - frame buffer 0 outputted, 1 - frame buffer 1 outputted
    input wire [8:0] x_coor,
    input wire [8:0] y_coor,
    input wire in_tri,
    input wire [7:0] depth,
    input wire [8:0] hcount,
    input wire [8:0] vcount,
    output logic [7:0] color,
    output logic valid_out
);

    parameter BLACK=8'h00;

    logic [16:0] read_addr;
    logic [16:0] write_addr;

    assign read_addr = hcount + vcount*WIDTH;
    assign write_addr = hcount + vcount*WIDTH;

    logic valid_read;
    logic valid_read_pipe [1:0];
    logic [15:0] buffer_in0;
    logic [15:0] buffer_in1;
    logic [7:0] color_val;
    logic [15:0] read_out0;
    logic [15:0] read_out1;

    logic [15:0] read_out_w;
    logic [7:0] read_out;

    assign read_out_w = (buffer_sel)? read_out0: read_out1; // buffer being written
    assign read_out = (buffer_sel)? read_out1[15:8]: read_out0[15:8]; // buffer being outputted

    logic wea0;
    logic wea1;

    assign color_val = 8'hCC; // temp for testing

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            color <= 0;
        end else begin 
            if (valid_read) begin

                // for writing to frame buffer
                if (depth < read_out_w[7:0] && in_tri) begin
                    if (buffer_sel) begin
                        wea0 <= 1;
                        buffer_in0 <= {color_val, depth};
                    end else begin
                        wea1 <= 1;
                        buffer_in1 <= {color_val, depth};
                    end
                end else begin
                    wea1 <= 0;
                    wea0 <= 0;
                end

                // for reading from frame buffer
                color <= read_out;
                valid_out <= 1;
                if (buffer_sel) begin
                    wea1 <= 1;
                    buffer_in1 <= 4'h00FF; // reset to black and max depth
                end else begin
                    wea0 <= 0;
                    buffer_in0 <= 4'h00FF;
                end

            end else begin
                wea0 <= 0;
                wea1 <= 0;
            end
        end
    end

    // pipelining for BRAM reads (2 cycles)
    always_ff @(posedge clk_in)begin
        valid_read_pipe[0] <= valid_in;
        valid_read_pipe[1] <= valid_read_pipe[0];
    end
    assign valid_read = valid_read_pipe[1];

    xilinx_true_dual_port_read_first_2_clock_ram #(
        .RAM_WIDTH(16), // most sig 8 is color, least sig 8 is depth (z)
        .RAM_DEPTH(WIDTH*HEIGHT))
        z_buffer0 (
        .addra(write_addr), // rasterizer output
        .clka(clk_in),
        .wea(wea0),
        .dina(buffer_in0),
        .ena(1'b1),
        .regcea(1'b1),
        .rsta(rst_in),
        .douta(),
        .addrb(read_addr),
        .dinb(),
        .clkb(clk_in),
        .web(1'b0),
        .enb(1'b1),
        .rstb(rst_in),
        .regceb(1'b1),
        .doutb(read_out0)
    );

    xilinx_true_dual_port_read_first_2_clock_ram #(
        .RAM_WIDTH(16), // most sig 8 is color, least sig 8 is depth (z)
        .RAM_DEPTH(WIDTH*HEIGHT))
        z_buffer0 (
        .addra(write_addr), // rasterizer output
        .clka(clk_in),
        .wea(wea1),
        .dina(buffer_in1),
        .ena(1'b1),
        .regcea(1'b1),
        .rsta(rst_in),
        .douta(),
        .addrb(read_addr),
        .dinb(),
        .clkb(clk_in),
        .web(1'b0),
        .enb(1'b1),
        .rstb(rst_in),
        .regceb(1'b1),
        .doutb(read_out1)
    );

endmodule