module video_sig_gen
    #(
    parameter ACTIVE_H_PIXELS = 1280,
    parameter H_FRONT_PORCH = 110,
    parameter H_SYNC_WIDTH = 40,
    parameter H_BACK_PORCH = 220,
    parameter ACTIVE_LINES = 720,
    parameter V_FRONT_PORCH = 5,
    parameter V_SYNC_WIDTH = 5,
    parameter V_BACK_PORCH = 20)
    (
    input wire clk_pixel_in,
    input wire rst_in,
    output logic [$clog2(1650)-1:0] hcount_out,
    output logic [$clog2(750)-1:0] vcount_out,
    output logic vs_out,
    output logic hs_out,
    output logic ad_out,
    output logic nf_out,
    output logic [5:0] fc_out);

    localparam TOTAL_PIXELS = ACTIVE_H_PIXELS+H_FRONT_PORCH+H_SYNC_WIDTH+H_BACK_PORCH; //figure this out (change me)
    localparam TOTAL_LINES = ACTIVE_LINES+V_FRONT_PORCH+V_SYNC_WIDTH+V_BACK_PORCH; //figure this out (change me)

    logic prev_rst;
    
    //your code here
    always_ff @(posedge clk_pixel_in) begin
        if (rst_in) begin
            hcount_out <= 0;
            vcount_out <= 0;
            nf_out <= 0;
            fc_out <= 0;
            prev_rst <= 1;
        end else begin
            prev_rst <= 0;
            if (hcount_out >= TOTAL_PIXELS-1) begin
                if (vcount_out >= TOTAL_LINES-1) vcount_out <= 0;
                else vcount_out <= vcount_out+1;
                hcount_out <= 0;
            end else if (~prev_rst) hcount_out <= hcount_out+1;
            if (hcount_out == ACTIVE_H_PIXELS-1 && vcount_out == ACTIVE_LINES) begin
                fc_out <= fc_out+1;
                nf_out <= 1;
            end else nf_out <= 0;
        end
    end

    assign ad_out = (hcount_out < ACTIVE_H_PIXELS && vcount_out < ACTIVE_LINES && ~rst_in && ~prev_rst);
    assign vs_out = ((vcount_out >= ACTIVE_LINES+V_FRONT_PORCH) && (vcount_out < ACTIVE_LINES+V_FRONT_PORCH+V_SYNC_WIDTH) && ~rst_in);
    assign hs_out = (hcount_out >= ACTIVE_H_PIXELS+H_FRONT_PORCH && hcount_out < ACTIVE_H_PIXELS+H_FRONT_PORCH+H_SYNC_WIDTH && ~rst_in);
 
endmodule