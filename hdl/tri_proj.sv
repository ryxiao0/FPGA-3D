/*module tri_proj (
    input wire clk_in,
    input wire rst_in,
    input wire [31:0] homo_tri [3:0] [2:0],
    input wire valid_in,
    output logic [31:0] 2D_triangle [1:0] [2:0]
);

    parameter RECIP_D=32'b0; // hardcode to 1/d, which we can calculate by hand

    localparam IDLE=0, DIV1=1, RECIP1=2, X=3, Y=5, Z=7;
    logic [2:0] state;
    logic [31:0] rep_data_in;
    logic [31:0] rep_data_out;
    logic rep_v_in;
    logic rep_v_out;

    logic [31:0] mult_data_in;
    logic [31:0] mult_data_out;
    logic mult_v_in;
    logic mult_v_out;

    logic [31:0] proj_mat [3:0] [3:0];

    reciprocal rep (
        .aclk(clk_in),
        .s_axis_a_tdata(rep_data_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(rep_v_in),
        .s_axis_tdata(rep_data_out),
        .s_axis_tready(),
        .s_axis_tvalid(rep_v_out)
    );

    multiplier proj (
        .aclk(clk_in),
        .s_axis_a_tdata(rep_data_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(rep_v_in),
        .s_axis_a_tdata(rep_data_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(rep_v_in),
        .s_axis_tdata(rep_data_out),
        .s_axis_tready(),
        .s_axis_tvalid(rep_v_out)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            rep_v_in <= 0;
        end else begin
            if (valid_in) begin
                case (state)
                    IDLE: begin
                        if (valid_in) begin
                            mult_v_in <= 1;
                            mult_data_in <= 
                        end
                    end
                    DIV1: begin // z/d

                    end
                    RECIP1: begin // 1/(z/d)

                    end
                    X: begin // x * 1/(z/d)

                    end
                    Y: begin // y * 1/(z/d)

                    end
                endcase;
            end
        end
    end

endmodule

module tri_proj_one (
    input wire clk_in,
    input wire rst_in,
    input wire [31:0] homo_coor [3:0],
    input wire valid_in,
    output logic [31:0] new_2D_coor [1:0]
    output logic valid_out;
);

    parameter RECIP_D=32'b0; // hardcode to 1/d, which we can calculate by hand

    localparam IDLE=0, DIV1=1, RECIP1=2, X=3, Y=5, Z=7;
    logic [2:0] state;
    logic [31:0] rep_data_in;
    logic [31:0] rep_data_out;
    logic rep_v_in;
    logic rep_v_out;
    logic [31:0] recip_val;

    logic [31:0] mult1_data_in;
    logic [31:0] mult2_data_in;
    logic [31:0] mult_data_out;
    logic mult_v_in;
    logic mult_v_out;

    logic [31:0] proj_mat [3:0] [3:0];

    reciprocal rep (
        .aclk(clk_in),
        .s_axis_a_tdata(rep_data_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(rep_v_in),
        .s_axis_tdata(rep_data_out),
        .s_axis_tready(1'b1),
        .s_axis_tvalid(rep_v_out)
    );

    multiplier proj (
        .aclk(clk_in),
        .s_axis_a_tdata(mult1_data_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(mult_v_in),
        .s_axis_b_tdata(mult2_data_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(mult_v_in),
        .s_axis_tdata(mult_data_out),
        .s_axis_tready(1'b1),
        .s_axis_tvalid(mult_v_out)
    );

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            rep_v_in <= 0;
        end else begin
            if (valid_in) begin
                case (state)
                    IDLE: begin
                        if (valid_in) begin
                            mult_v_in <= 1;
                            mult1_data_in <= homo_coor[1]; // z coordinate
                            mult2_data_in <= RECIP_D;
                        end
                        new_2D_coor <= 0;
                        valid_out <= 0;
                    end
                    DIV1: begin // z/d
                        if (mult_v_out) begin
                            rep_data_in <= mult_data_out;
                            rep_v_in <= 1;
                        end else mult_v_in <= 0;
                    end
                    RECIP1: begin // 1/(z/d)
                        if (recip_v_out) begin
                            mult1_data_in <= rep_data_out;
                            mult2_data_in <= homo_coor[3]; // x coordinate
                            mult_v_in <= 1;
                        end else rep_v_in
                    end
                    X: begin // x * 1/(z/d)

                    end
                    Y: begin // y * 1/(z/d)

                    end
                endcase;
            end
        end
    end

endmodule
*/