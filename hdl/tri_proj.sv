module tri_proj (
    input wire clk_in,
    input wire rst_in,
    input wire [31:0] homo_tri [2:0] [3:0],
    output logic [31:0] triangle [2:0]
);

    logic [31:0] proj_mat [3:0] [3:0];

    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == j && i != 3) proj_mat[i][j] = 1;
                else if (i == 3 && j == 2) proj_mat[i][j] = 1;// 1/d
            end
        end
    end



endmodule