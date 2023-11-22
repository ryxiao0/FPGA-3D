module translation
    (
        input wire clk_in,
        input wire rst_in,
        input wire [31:0] pos [3:0],
        input wire [31:0] x,
        input wire [31:0] y,
        input wire [31:0] z,
        input wire valid_in,
        output logic valid_out,
        output logic [31:0] new_pos [3:0]
    );

    logic [31:0] trans_mat [3:0] [3:0];
    logic v_in;
    logic v_out;
    logic [31:0] out [3:0];

    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == j) begin
                    if (i == 0) trans_mat[i][j] = x;
                    else if (i == 1) trans_mat[i][j] = y;
                    else if (i == 2) trans_mat[i][j] = z;
                    else if (i == 3) trans_mat[i][j] = 1;
                end
            end
        end
    end

    matrix_mult trans (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .valid_in(v_in),
        .mat1_in(trans_mat),
        .mat2_in(pos),
        .valid_out(v_out),
        .mat_out(out)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            v_in <= 0;
            valid_out <= 0;
        end else begin
            if (valid_in) v_in <= 1;
            else v_in <= 0;

            if (v_out) new_pos <= out;
        end
    end

endmodule