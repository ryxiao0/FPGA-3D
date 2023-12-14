`timescale 1ns / 1ps
`default_nettype none

`ifdef SYNTHESIS
`define FPATH(X) `"X`"
`else /* ! SYNTHESIS */
`define FPATH(X) `"data/X`"
`endif  /* ! SYNTHESIS */

module get_vertices#(
    parameter NUM_FACETS = 12
    )
    (
    input wire clk_in,
    input wire rst_in,
    output logic [31:0] v1 [3:0],
    output logic [31:0] v2 [3:0],
    output logic [31:0] v3 [3:0],
    output logic valid_out,
    output logic obj_done,
    input wire ready_in
);

    enum {INIT, GETF, GETTINGF, GETV1, GETTINGV1, GETV2, GETTINGV2, GETV3, GETTINGV3, OUT} state;

    logic [11:0] facet_read, vertex_read;
    logic [11:0] f1, f2, f3;
    logic [31:0] x, y, z;
    logic [47:0] facet_out;
    logic [31:0] v1_temp [3:0];
    logic [31:0] v2_temp [3:0];
    logic [31:0] v3_temp [3:0];

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            facet_read <= 0;
            obj_done <= 0;
            state <= INIT;
        end else begin
            case (state)
                INIT: begin
                    facet_read <= 0;
                    state <= GETF;
                    obj_done <= 0;
                    valid_out <= 0;
                end
                GETF: begin
                    obj_done <= 0;
                    valid_out <= 0;
                    state <= GETTINGF;
                end
                GETTINGF: begin
                    vertex_read <= f1-1;
                    state <= GETV1;
                end
                GETV1: begin
                    state <= GETTINGV1;
                end
                GETTINGV1: begin
                    v1_temp[3] <= x;
                    v1_temp[2] <= y;
                    v1_temp[1] <= z;
                    v1_temp[0] <= 1;
                    vertex_read <= f2-1;
                    state <= GETV2;
                end
                GETV2: begin
                    state <= GETTINGV2;
                end
                GETTINGV2: begin
                    v2_temp[3] <= x;
                    v2_temp[2] <= y;
                    v2_temp[1] <= z;
                    v2_temp[0] <= 1;
                    vertex_read <= f3-1;
                    state <= GETV3;
                end
                GETV3: begin
                    state <= GETTINGV3;
                end
                GETTINGV3: begin
                    v3_temp[3] <= x;
                    v3_temp[2] <= y;
                    v3_temp[1] <= z;
                    v3_temp[0] <= 1;
                    state <= OUT;
                end
                OUT: begin
                    if (ready_in) begin
                        v1 <= v1_temp;
                        v2 <= v2_temp;
                        v3 <= v3_temp;
                        valid_out <= 1;
                        if (facet_read == NUM_FACETS-1) begin
                            state <= INIT;
                            obj_done <= 1;
                        end else begin
                            state <= GETF;
                            facet_read <= facet_read + 1;
                        end
                    end
                end
            endcase;
        end
    end

    ///////////
    /// ROM ///
    ///////////

    xilinx_single_port_ram_read_first #(
        .RAM_WIDTH(96),                       // Specify RAM data width
        .RAM_DEPTH(4096),                     // Specify RAM depth (number of entries)
        .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
        .INIT_FILE(`FPATH(cube_vertices.mem))          // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) vertex_inst (
        .addra(vertex_read),     // Address bus, width determined from RAM_DEPTH
        .dina(0),       // RAM input data, width determined from RAM_WIDTH
        .clka(clk_in),       // Clock
        .wea(0),         // Write enable
        .ena(1),         // RAM Enable, for additional power savings, disable port when not in use
        .rsta(rst_in),       // Output reset (does not affect memory contents)
        .regcea(1),   // Output register enable
        .douta({x, y, z})      // RAM output data, width determined from RAM_WIDTH
    );

    xilinx_single_port_ram_read_first #(
        .RAM_WIDTH(48),                       // Specify RAM data width
        .RAM_DEPTH(4096),                     // Specify RAM depth (number of entries)
        .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
        .INIT_FILE(`FPATH(cube_facets.mem))          // Specify name/location of RAM initialization file if using one (leave blank if not)
    ) facet_inst (
        .addra(facet_read),     // Address bus, width determined from RAM_DEPTH
        .dina(0),       // RAM input data, width determined from RAM_WIDTH
        .clka(clk_in),       // Clock
        .wea(0),         // Write enable
        .ena(1),         // RAM Enable, for additional power savings, disable port when not in use
        .rsta(rst_in),       // Output reset (does not affect memory contents)
        .regcea(1),   // Output register enable
        .douta({f1, f2, f3})      // RAM output data, width determined from RAM_WIDTH
    );

endmodule

`default_nettype wire