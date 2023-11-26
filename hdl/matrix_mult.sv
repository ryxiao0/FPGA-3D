module matrix_mult
    (
        input wire clk_in,
        input wire rst_in,
        input wire valid_in,
        input wire [31:0] mat1_in [3:0] [3:0],
        input wire [31:0] mat2_in [3:0],
        output logic valid_out,
        output logic [31:0] mat_out [3:0]
    );

    localparam IDLE=0, ONE=1, TWO=2, THREE=3, FOUR=4, READY=5;
    logic [2:0] state;
    logic [31:0] row0 [3:0];
    logic [31:0] out0;
    logic [31:0] temp [3:0];
    logic v0_in;
    logic v0_out;

    matrix_mult_single mms_a (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .row_in(row0),
        .col_in(mat2_in),
        .valid_in(v0_in),
        .valid_out(v0_out),
        .val_out(out0)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            mat_out[0] <= 0;
            mat_out[1] <= 0;
            mat_out[2] <= 0;
            mat_out[3] <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (valid_in) begin
                        row0 <= mat1_in[0];
                        v0_in <= 1;
                        state <= ONE;
                        mat_out[0] <= 0;
                        mat_out[1] <= 0;
                        mat_out[2] <= 0;
                        mat_out[3] <= 0;
                    end
                    valid_out <= 0;
                end
                ONE: begin
                    if (v0_out) begin
                        temp[0] <= out0;
                        row0 <= mat1_in[1];
                        v0_in <= 1;
                        state <= TWO;
                    end else v0_in <= 0;
                end
                TWO: begin
                    if (v0_out) begin
                        temp[1] <= out0;
                        row0 <= mat1_in[2];
                        v0_in <= 1;
                        state <= THREE;
                    end else v0_in <= 0;
                end
                THREE: begin
                    if (v0_out) begin
                        temp[2] <= out0;
                        row0 <= mat1_in[3];
                        v0_in <= 1;
                        state <= FOUR;
                    end else v0_in <= 0;
                end
                FOUR: begin
                    if (v0_out) begin
                        temp[3] <= out0;
                        state <= READY;
                    end else v0_in <= 0;
                end
                READY: begin
                    mat_out <= temp;
                    valid_out <= 1;
                    state <= IDLE;
                end
            endcase;
        end
    end

endmodule


module matrix_mult_single (
    input wire clk_in,
    input wire rst_in,
    input wire [31:0] row_in [3:0],
    input wire [31:0] col_in [3:0],
    input wire valid_in,
    output logic valid_out,
    output logic [31:0] val_out
);

    localparam IDLE=0, MULT0=1, ADD0=2, MULT1=3, ADD1=4, MULT2=5, ADD2=6, MULT3=7, ADD3=8, READY=9;

    logic [3:0] state;
    logic [1:0] idx;
    logic m_valid_in;
    logic m_valid_out;
    logic a_valid_in;
    logic a_valid_out;
    logic [31:0] m_data_out;
    logic [31:0] a_data_out;

    logic [31:0] m_data;
    logic [31:0] med_val;

    multiplier mult (
        .aclk(clk_in),
        .s_axis_a_tdata(row_in[idx]),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(m_valid_in),
        .s_axis_b_tdata(col_in[idx]),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(m_valid_in),
        .m_axis_result_tdata(m_data_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(m_valid_out)
    );

    adder add (
        .aclk(clk_in),
        .s_axis_a_tdata(med_val),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(a_valid_in),
        .s_axis_b_tdata(m_data),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(a_valid_in),
        .m_axis_result_tdata(a_data_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(a_valid_out)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            val_out <= 0;
            state <= IDLE;
            idx <= 0;
            med_val <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (valid_in) begin
                        m_valid_in <= 1;
                        state = MULT0;
                        val_out <= 0;
                    end
                    valid_out <= 0;
                end
                MULT0: begin
                    if (m_valid_out) begin
                        a_valid_in <= 1;
                        state <= ADD0;
                        idx <= idx + 1;
                        m_valid_in <= 0;
                        m_data <= m_data_out;
                    end
                end
                ADD0: begin
                    if (a_valid_out) begin
                        med_val <= a_data_out;
                        m_valid_in <= 1;
                        state <= MULT1;
                        a_valid_in <= 0;
                    end
                end
                MULT1: begin
                    if (m_valid_out) begin
                        a_valid_in <= 1;
                        state <= ADD1;
                        idx <= idx + 1;
                        m_valid_in <= 0;
                        m_data <= m_data_out;
                    end
                end
                ADD1: begin
                    if (a_valid_out) begin
                        med_val <= a_data_out;
                        m_valid_in <= 1;
                        state <= MULT2;
                        a_valid_in <= 0;
                    end
                end
                MULT2: begin
                    if (m_valid_out) begin
                        a_valid_in <= 1;
                        state <= ADD2;
                        idx <= idx + 1;
                        m_valid_in <= 0;
                        m_data <= m_data_out;
                    end
                end
                ADD2: begin
                    if (a_valid_out) begin
                        med_val <= a_data_out;
                        m_valid_in <= 1;
                        state <= MULT3;
                        a_valid_in <= 0;
                    end
                end
                MULT3: begin
                    if (m_valid_out) begin
                        a_valid_in <= 1;
                        state <= ADD3;
                        idx <= idx + 1;
                        m_valid_in <= 0;
                        m_data <= m_data_out;
                    end
                end
                ADD3: begin
                    if (a_valid_out) begin
                        med_val <= a_data_out;
                        state <= READY;
                        a_valid_in <= 0;
                    end
                end
                READY: begin
                    val_out <= med_val;
                    valid_out <= 1;
                    state <= IDLE;
                end
            endcase;
        end
    end
endmodule