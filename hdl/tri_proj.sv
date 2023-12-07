module tri_proj 
    #(
        parameter RECIP_D=32'h3e4ccccd // hardcode to 1/d, which we can calculate by hand
    )
    (
        input wire clk_in,
        input wire rst_in,
        input wire [31:0] coor_in [3:0],
        input wire valid_in,
        output logic [31:0] coor_out [1:0],
        output logic valid_out
);

    enum {IDLE, DIV, REC, X, Y} state;

    logic [31:0] rec_in, rec_out;
    logic rec_v_in, rec_v_out;

    logic [31:0] mult_a_in, mult_b_in, mult_out;
    logic mult_v_in, mult_v_out;

    reciprocal rec (
        .aclk(clk_in),
        .s_axis_a_tdata(rec_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(rec_v_in),
        .m_axis_result_tdata(rec_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(rec_v_out)
    );

    multiplier pro (
        .aclk(clk_in),
        .s_axis_a_tdata(mult_a_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_v_in),
        .s_axis_b_tdata(mult_b_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(mult_v_in),
        .m_axis_result_tdata(mult_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(mult_v_out)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    if (valid_in) begin
                        mult_v_in <= 1;
                        mult_a_in <= coor_in[1];
                        mult_b_in <= RECIP_D;
                        state <= DIV;
                    end
                    valid_out <= 0;
                end
                DIV: begin // z/d
                    if (mult_v_out) begin
                        rec_in <= mult_out;
                        rec_v_in <= 1;
                        state <= REC;
                    end else mult_v_in <= 0;
                end
                REC: begin // 1/(z/d)
                    if (rec_v_out) begin
                        mult_a_in <= rec_out;
                        mult_b_in <= coor_in[3]; // x
                        mult_v_in <= 1;
                        state <= X;
                    end else rec_v_in <= 0;
                end
                X: begin // x * 1/(z/d)
                    if (mult_v_out) begin
                        coor_out[1] <= mult_out;
                        mult_b_in <= coor_in[2]; // y
                        mult_v_in <= 1;
                        state <= Y;
                    end else mult_v_in <= 0;
                end
                Y: begin // y * 1/(z/d)
                    if (mult_v_out) begin
                        coor_out[0] <= mult_out;
                        valid_out <= 1;
                        state <= IDLE;
                    end else mult_v_in <= 0;
                end
            endcase;
        end
    end

endmodule