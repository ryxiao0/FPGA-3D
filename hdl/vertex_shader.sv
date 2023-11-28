`ifdef SYNTHESIS
`define FPATH(X) `"X`"
`else /* ! SYNTHESIS */
`define FPATH(X) `"data/X`"
`endif  /* ! SYNTHESIS */

module vertex_shader #(
    parameter NUM_VERT=8;
)
(
    input wire clk_in,
    input wire rst_in,
    input wire [1:0] sel,
    input wire [31:0] pitch,
    input wire [31:0] roll,
    input wire [31:0] yaw,
    input wire [31:0] scale,
    output logic [31:0] new_pos [3:0],
    output logic valid_out
    output logic obj_done;
);

    localparam COM=0, TRANS=1;
    logic [1:0] state;

    logic [31:0] old_pos [3:0];
    logic [15:0] read_addr;
    logic [31:0] v1;
    logic [31:0] v2;
    logic [31:0] v3;
    logic [31:0] com [2:0];
    logic [95:0] dout;

    logic trans_out;
    logic trans_in;
    logic [31:0] trans_dout [3:0];

    transformation trans (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .sel(sel),
        .pos(old_pos),
        .pitch(pitch),
        .roll(roll),
        .yaw(yaw),
        .scale(scale),
        .com(com),
        .valid_in(trans_in),
        .valid_out(trans_out),
        .new_pos(trans_dout)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            read_addr <= 0;
            valid_out <= 0;
            old_pos[0] <= 32'h3f800000;
            state <= COM;
        end else begin
            case (state)
                COM: begin
                    com[2] <= dout[95:64];
                    com[1] <= dout[63:32];
                    com[0] <= dout[31:0];
                    state <= TRANS;
                    read_addr <= read_addr+1;
                    valid_out <= 0;
                end
                TRANS: begin
                    if (trans_out) begin
                        trans_in <= 1;
                        old_pos[3] <= dout[95:64];
                        old_pos[2] <= dout[63:32];
                        old_pos[1] <= dout[31:0];
                        old_pos[0] <= 32'h3f800000;
                        new_pos <= trans_dout;
                        valid_out <= 1;
                        if (read_addr == NUM_VERT) begin
                            read_addr <= 0;
                            state <= COM;
                        end else read_addr <= read_addr+1;
                    end else begin
                        trans_in <= 0;
                        valid_out <= 0;
                    end
                end
            endcase;
        end
    end

    xilinx_single_port_ram_read_first #(
        .RAM_WIDTH(96),                       // Specify RAM data width
        .RAM_DEPTH(65536),                     // Specify RAM depth (number of entries)
        .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
        .INIT_FILE(`FPATH(cube.mem))          // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) vertex_inst (
        .addra(read_addr),     // Address bus, width determined from RAM_DEPTH
        .dina(0),       // RAM input data, width determined from RAM_WIDTH
        .clka(clk_in),       // Clock
        .wea(0),         // Write enable
        .ena(1),         // RAM Enable, for additional power savings, disable port when not in use
        .rsta(rst_in),       // Output reset (does not affect memory contents)
        .regcea(1),   // Output register enable
        .douta(dout)      // RAM output data, width determined from RAM_WIDTH
    );
endmodule