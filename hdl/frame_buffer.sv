
//frame buffer - commented out so it doesn't do anything weird to the build until we input to it

/*
module frame_buffer
    (
        input wire clk_in,
        input wire rst_in,
        input wire data_valid_in, //signal for valid input pixel from zbuffer
        input wire [7:0] pixel_shader_val, //8 bit greyscale value
        input wire vid_addr_in, //addr to access for hdmi
        output logic video_valid_out, //signal of valid output
        output logic [7:0] pixel_val_out //8 bit output
    );

    localparam NUM_PIXELS = 360*360;
    

    enum {CLEAR, FILL, COPY};


    logic valid_addr;
    logic state;
    logic [8:0] buffer_out;
    logic [$clog2(NUM_PIXELS)-1:0] frame_addr;
    logic [$clog2(NUM_PIXELS)-1:0] vid_addr;
    logic cycle_counter[2:0];


    logic copy_in;


    xilinx_true_dual_port_read_first_2_clock_ram #(   //frame buffer, takes input from z-buffer bram. When a full frame is loaded, copy to video mem
    .RAM_WIDTH(8), //each entry is 8 bit greyscale value
    .RAM_DEPTH(360*360)) //there are 360*360 entries in full frame
    frame_buffer (
    .addra(frame_addr), //pixels are stored using this math
    .clka(clk_in),
    .wea(data_valid_in),
    .dina(pixel_shader_val),
    .ena(1'b1),
    .regcea(1'b1),
    .rsta(sys_rst),
    .douta(1'b0), //never read from this side
    .addrb(frame_addr),//lookup pixel address
    .dinb(8'b0),
    .clkb(clk_in),
    .web(1'b0),
    .enb(valid_addr),
    .rstb(sys_rst),
    .regceb(1'b1),
    .doutb(buffer_out)
  );

    xilinx_true_dual_port_read_first_2_clock_ram #(  //video mem, output can be read by hmdi a full frame at a time
    .RAM_WIDTH(8), 
    .RAM_DEPTH(360*360)) //360 by 360 pixels
    video_mem (
    .addra(frame_addr), 
    .clka(clk_in),
    .wea(copy_in),
    .dina(buffer_out),
    .ena(1'b1),
    .regcea(1'b1),
    .rsta(sys_rst),
    .douta(8'b0), //never read from this side
    .addrb(vid_addr_in),
    .dinb(8'b0),
    .clkb(clk_pixel),
    .web(1'b0),
    .enb(valid_addr_rot),
    .rstb(sys_rst),
    .regceb(1'b1),
    .doutb(pixel_val_out)
  );

  always_ff(@posedge clk_in) begin
    if(rst_in) begin
        frame_addr <= 0;
        vid_addr <= 0;
        cycle_counter <= 0;
        state <= CLEAR;
    end
    if(state <= CLEAR) begin //reset frame address and start writing new frame
        frame_addr <= 0;
        copy_in <= 1'b0;
        state <= FILL;
    end
    if(state <= FILL) begin //fill frame buffer
        if(pixel_valid_in) begin
            frame_addr <= frame_addr + 1;
        end
        if (frame_addr == NUM_PIXELS-1) begin
                state <= COPY;
                frame_addr <= 0;
                cycle_counter <= 0;  
                copy_in <= 1;         
        end
    end
    if(state == COPY) //copy entire frame into video memory.
        cycle_couter <= (cycle_counter == 2) ? 0 : cycle_counter + 1;
        if(cycle_counter == 2) begin
            copy_in <= 1'b1;
            frame_addr <= frame_addr + 1;
            if(frame_addr == NUM_PIXELS) begin
                state <= CLEAR;
            end
        end else begin
            copy_in <= 1'b0;
        end
    end


endmodule
*/

