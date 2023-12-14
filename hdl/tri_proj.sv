module tri_proj 
    #(
        parameter RECIP_D=32'h3e4ccccd // hardcode to 1/d, which we can calculate by hand
    )
    (
        input wire clk_in,
        input wire rst_in,
        input wire obj_done_in,
        input wire [31:0] coor_in [3:0],
        input wire valid_in,
        output logic [8:0] coor_out [2:0],
        output logic valid_out,
        output logic obj_done_out,
        output logic ready_out,
        input wire ready_in
);

    parameter M=32'h43340000; // 180

    enum {IDLE, DIV, REC, X, Y, MULTX, ROUNDX, MULTY, ROUNDY, MULTZ, ROUNDZ} state;

    logic [31:0] rec_in, rec_out;
    logic rec_v_in, rec_v_out;

    logic [31:0] mult_a_in, mult_b_in, mult_out;
    logic mult_v_in, mult_v_out;

    logic [31:0] round_in;
    logic [15:0] round_out; // fixed point, index [14:6] for 9 bit int, [15:6] for signed
    logic round_v_in, round_v_out;

    assign obj_done_out = obj_done_in;

    logic [31:0] x_f, y_f, z_f;

    assign z_f = coor_in[1];

    logic [9:0] shift;
    assign shift = round_out[15:6] + 180;

    logic [8:0] x, y, z;
    assign coor_out[2] = x;
    assign coor_out[1] = y;
    assign coor_out[0] = z;

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

    float_to_fixed round (
        .aclk(clk_in),
        .s_axis_a_tdata(round_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(round_v_in),
        .m_axis_result_tdata(round_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(round_v_out)
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
                        ready_out <= 0;
                    end else ready_out <= 1;
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
                        x_f <= mult_out;
                        mult_b_in <= coor_in[2]; // y
                        mult_v_in <= 1;
                        state <= Y;
                    end else mult_v_in <= 0;
                end
                Y: begin // y * 1/(z/d)
                    if (mult_v_out) begin
                        y_f <= mult_out;
                        mult_a_in <= M;
                        mult_b_in <= x_f;
                        mult_v_in <= 1;
                        state <= MULTX;
                    end else mult_v_in <= 0;
                end
                MULTX: begin
                    if (mult_v_out) begin
                        round_in <= mult_out;
                        round_v_in <= 1;
                        state <= ROUNDX;
                    end else mult_v_in <= 0;
                end
                ROUNDX: begin
                    if (round_v_out) begin
                        x <= shift[8:0]; // drop sign
                        mult_b_in <= y_f;
                        mult_v_in <= 1;
                        state <= MULTY;
                    end else round_v_in <= 0;
                end
                MULTY: begin
                    if (mult_v_out) begin
                        round_in <= mult_out;
                        round_v_in <= 1;
                        state <= ROUNDY;
                    end else mult_v_in <= 0;
                end
                ROUNDY: begin
                    if (round_v_out) begin
                        y <= shift[8:0]; // drop sign
                        mult_b_in <= z_f;
                        mult_v_in <= 1;
                        state <= MULTZ;
                    end else round_v_in <= 0;
                end
                MULTZ: begin
                    if (mult_v_out) begin
                        round_in <= mult_out;
                        round_v_in <= 1;
                        state <= ROUNDZ;
                    end else mult_v_in <= 0;
                end
                ROUNDZ: begin
                    if (round_v_out) begin
                        if (ready_in) begin
                            z <= shift[8:0]; // drop sign
                            valid_out <= 1;
                            state <= IDLE;
                        end
                    end else round_v_in <= 0;
                end
            endcase;
        end
    end

endmodule