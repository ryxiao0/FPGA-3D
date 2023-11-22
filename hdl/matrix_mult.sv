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

    logic idle;

    logic [31:0] row0 [3:0];
    logic [31:0] row1 [3:0];
    logic [31:0] row2 [3:0];
    logic [31:0] row3 [3:0];

    logic [31:0] out0;
    logic [31:0] out1;
    logic [31:0] out2;
    logic [31:0] out3;

    logic [31:0] temp [3:0];

    assign row0 = mat1_in[0];
    assign row1 = mat1_in[1];
    assign row2 = mat1_in[2];
    assign row3 = mat1_in[3];

    logic v0;
    logic v1;
    logic v2;
    logic v3;
    logic r0;
    logic r1;
    logic r2;
    logic r3;

    matrix_mult_single mms_a (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .row_in(row0),
        .col_in(mat2_in),
        .valid_in(valid_in),
        .valid_out(v0),
        .mat_out(out0)
    );

    matrix_mult_single mms_b (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .row_in(row1),
        .col_in(mat2_in),
        .valid_in(valid_in),
        .valid_out(v1),
        .mat_out(out1)
    );

    matrix_mult_single mms_c (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .row_in(row2),
        .col_in(mat2_in),
        .valid_in(valid_in),
        .valid_out(v2),
        .mat_out(out2)
    );

    matrix_mult_single mms_d (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .row_in(row3),
        .col_in(mat2_in),
        .valid_in(valid_in),
        .valid_out(v3),
        .mat_out(out3)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            mat_out[0] <= 0;
            mat_out[1] <= 0;
            mat_out[2] <= 0;
            mat_out[3] <= 0;
        end else begin
            if (idle) begin
                valid_out <= 0;
                r0 <= 0;
                r1 <= 0;
                r2 <= 0;
                r3 <= 0;
                if (valid_in) idle <= 0;
            end else begin
                if (v0) begin
                    temp[0] <= out0;
                    r0 <= 1;
                end
                if (v1) begin
                    temp[1] <= out1;
                    r1 <= 1;
                end
                if (v2) begin
                    temp[2] <= out2;
                    r2 <= 1;
                end
                if (v3) begin
                    temp[3] <= out3;
                    r3 <= 1;
                end
                if (r0 & r1 & r2 & r3) begin
                    mat_out <= temp;
                    valid_out <= 1;
                    idle <= 1;
                end
            end
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

    logic [31:0] med_val;

    multiplier mult (
        .aclk(clk_in),
        .s_axis_a_tdata(row_in[idx]),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(m_in),
        .s_axis_b_tdata(col_in[idx]),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(m_in),
        .m_axis_result_tdata(m_out),
        .m_axis_result_tready(),
        .m_axis_result_tvalid(valid_zero)
    );

    adder add (
        .aclk(clk_in),
        .s_axis_a_tdata(med_val),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(a_valid_in),
        .s_axis_b_tdata(m_data_out),
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
            state <= 0;
            idx <= 0;
            med_val <= 0;
        end else begin
            if (state == IDLE) begin
                if (valid_in) begin
                    m_valid_in <= 1;
                    state = MULT0;
                end
            end else if (state == MULT0) begin
                if (m_valid_out) begin
                    a_valid_in <= 1;
                    state <= ADD0;
                    idx <= idx + 1;
                end else m_valid_in <= 0;
            end else if (state == ADD0) begin
                if (a_valid_out) begin
                    med_val <= a_data_out;
                    m_valid_in <= 1;
                    state <= MULT1;
                end else a_valid_out <= 0;
            end else if (state == MULT1) begin
                if (m_valid_out) begin
                    a_valid_in <= 1;
                    state <= ADD1;
                    idx <= idx + 1;
                end else m_valid_in <= 0;
            end else if (state == ADD1) begin
                if (a_valid_out) begin
                    med_val <= a_data_out;
                    m_valid_in <= 1;
                    state <= MULT2;
                end a_valid_out <= 0;
            end else if (state == MULT2) begin
                if (m_valid_out) begin
                    a_valid_in <= 1;
                    state <= ADD2;
                    idx <= idx + 1;
                end else m_valid_in <= 0;
            end else if (state == ADD2) begin
                if (a_valid_out) begin
                    med_val <= a_data_out;
                    m_valid_in <= 1;
                    state <= MULT3;
                end a_valid_out <= 0;
            end else if (state == MULT3) begin
                if (m_valid_out) begin
                    a_valid_in <= 1;
                    state <= ADD3;
                    idx <= idx + 1;
                end else m_valid_in <= 0;
            end else if (state == ADD3) begin
                if (a_valid_out) begin
                    med_val <= a_data_out;
                    state <= READY;
                end a_valid_out <= 0;
            end else if (state == READY) begin
                val_out <= med_val;
                valid_out <= 1;
                state <= IDLE;
            end
        end
    end


endmodule