module vertex_shader (
    input wire clk_in,
    input wire rst_in,
    input wire [31:0] pitch,
    input wire [31:0] roll,
    input wire [31:0] yaw,
    input wire [31:0] scale,
    input wire [31:0] x_trans,
    input wire [31:0] y_trans,
    input wire [31:0] z_trans,
    output logic [31:0] new_tri [3:0] [2:0],
    output logic valid_out
);

    logic [31:0] old_tri [3:0] [2:0];
    logic [15:0] read_addr;
    logic [31:0] v1;
    logic [31:0] v2;
    logic [31:0] v3;

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            
        end
    end

    xilinx_single_port_ram_read_first #(
        .RAM_WIDTH(96),                       // Specify RAM data width
        .RAM_DEPTH(65536),                     // Specify RAM depth (number of entries)
        .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
        .INIT_FILE(`FPATH(cube.mem))          // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) image_inst (
        .addra(tri_addr),     // Address bus, width determined from RAM_DEPTH
        .dina(0),       // RAM input data, width determined from RAM_WIDTH
        .clka(clk_in),       // Clock
        .wea(0),         // Write enable
        .ena(1),         // RAM Enable, for additional power savings, disable port when not in use
        .rsta(rst_in),       // Output reset (does not affect memory contents)
        .regcea(1),   // Output register enable
        .douta({old_tri[2], old_tri[1], old_tri[0]})      // RAM output data, width determined from RAM_WIDTH
    );
endmodule