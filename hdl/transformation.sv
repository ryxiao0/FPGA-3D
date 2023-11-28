module transformation
    #(
        parameter D=10;
    )
    (
        input wire clk_in,
        input wire rst_in,
        input wire [1:0] sel,
        input wire [31:0] pos [3:0],
        input signed wire [31:0] com [2:0],
        input wire [31:0] scale,
        input wire [4:0] pitch, // x axis - like tilting up or down
        input wire [4:0] roll, // z axis - looking down z axis
        input wire [4:0] yaw, // y axis - like steering left or right
        input wire valid_in,
        output logic valid_out,
        output logic [31:0] new_pos [3:0]
    );

    parameter X=0, Y=0, Z=D;

    localparam IDLE=0, COM=1, TRANS=2, BACK=3;
    logic [1:0] state;

    logic [31:0] com_mat [3:0] [3:0];
    logic [31:0] back_mat [3:0] [3:0];
    logic [31:0] scale_mat [3:0] [3:0];
    logic [31:0] pitch_mat [3:0] [3:0];
    logic [31:0] roll_mat [3:0] [3:0];
    logic [31:0] yaw_mat [3:0] [3:0];
    logic [31:0] id_mat [3:0] [3:0];
    

    logic [31:0] cur_pos [3:0],
    logic [31:0] mat [3:0] [3:0];
    logic v_in;
    logic v_out;
    logic [31:0] out [3:0];

    // Identity
    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == j) id_mat[i][j] = 1;
                else id_mat[i][j] = 0;
            end
        end
    end

    // Translation to COM
    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == j) begin
                    com_mat[i][j] = 1;
                end else if (j == 3) begin
                    if (i == 0) com_mat[i][j] = -com[2];
                    else if (i == 1) com_mat[i][j] = -com[1];
                    else if (i == 2) com_mat[i][j] = -com[0];
                end else com_mat[i][j] = 0;
            end
        end
    end

    // Translation to camera view
    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == j) begin
                    back_mat[i][j] = 1;
                end else if (j == 3 && i == 2) begin
                    back_mat[i][j] = D;
                end else back_mat[i][j] = 0;
            end
        end
    end

    // Scaling
    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == j) begin
                    if (i == 0) scale_mat[i][j] = scale;
                    else if (i == 1) scale_mat[i][j] = scale;
                    else if (i == 2) scale_mat[i][j] = scale;
                    else if (i == 3) scale_mat[i][j] = 1;
                end else scale_mat[i][j] = 0;
            end
        end
    end

    // Pitch - rotation about x axis
    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == 1 && j == 1) pitch_mat[i][j] = cos(pitch);
                else if (i == 1 && j == 2) pitch_mat[i][j] = -sin(pitch);
                else if (i == 2 && j == 1) pitch_mat[i][j] = sin(pitch);
                else if (i == 2 && j == 2) pitch_mat[i][j] = cos(pitch);
                else if ((i == 0 && j == 0) || (i == 3 && j == 3)) pitch_mat[i][j] = 1;
                else pitch_mat[i][j] = 0;
            end
        end
    end

    // Roll - rotation about z axis
    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == 0 && j == 0) roll_mat[i][j] = cos(roll);
                else if (i == 0 && j == 1) roll_mat[i][j] = -sin(roll);
                else if (i == 1 && j == 0) roll_mat[i][j] = sin(roll);
                else if (i == 1 && j == 1) roll_mat[i][j] = cos(roll);
                else if ((i == 2 && j == 2) || (i == 3 && j == 3)) roll_mat[i][j] = 1;
                else roll_mat[i][j] = 0;
            end
        end
    end

    // Yaw - rotation about y axis
    always_comb begin
        for (integer i=0;i<4;i=i+1) begin
            for (integer j=0;j<4;j=j+1) begin
                if (i == 0 && j == 0) yaw_mat[i][j] = cos(yaw);
                else if (i == 0 && j == 2) yaw_mat[i][j] = sin(yaw);
                else if (i == 2 && j == 0) yaw_mat[i][j] = -sin(yaw);
                else if (i == 2 && j == 2) yaw_mat[i][j] = cos(yaw);
                else if ((i == 1 && j == 1) || (i == 3 && j == 3)) yaw_mat[i][j] = 1;
                else yaw_mat[i][j] = 0;
            end
        end
    end

    assign tf_mat = (sel == 3'b00)? scale_mat:
                    (sel == 3'b01)? pitch_mat:
                    (sel == 3'b10)? yaw_mat:
                    (sel == 3'b11)? roll_mat: id_mat;


    matrix_mult transform (
        .clk_in(clk_in),
        .rst_in(rst_in),
        .valid_in(v_in),
        .mat1_in(mat),
        .mat2_in(cur_pos),
        .valid_out(v_out),
        .mat_out(out)
    );
    

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            v_in <= 0;
            valid_out <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (valid_in) begin
                        v_in <= 1;
                        mat <= trans_mat;
                        state <= COM;
                    end
                    v_in <= 0;
                    valid_out <= 0;
                end
                COM: begin
                    if (v_out) begin
                        cur_pos <= out;
                        v_in <= 1;
                        mat <= tf_mat;
                        state <= TRANS;
                    end else v_in <= 0;
                end
                TRANS: begin
                    if (v_out) begin
                        cur_pos <= out;
                        v_in <= 1;
                        mat <= back_mat;
                        state <= BACK;
                    end else v_in <= 0;
                end
                BACK: begin
                    if (v_out) begin
                        new_pos <= out;
                        valid_out <= 1;
                        state <= IDLE;
                    end else v_in <= 0;
                end
            endcase;
        end
    end

endmodule

// 16 increments of rotation (4 bit lookup input), 32 bit float output
function [31:0] sin (input [4:0] theta);
    case (theta)
        5'd0:  sin = 32'h00000000;
        5'd1:  sin = 32'h3e47c5c2;
        5'd2:  sin = 32'h3ec3ef15;
        5'd3:  sin = 32'h3f0e39da;
        5'd4:  sin = 32'h3f3504f3;
        5'd5:  sin = 32'h3f54db31;
        5'd6:  sin = 32'h3f6c835e;
        5'd7:  sin = 32'h3f7b14be;
        5'd8:  sin = 32'h3f800000;
        5'd9:  sin = 32'h3f7b14be;
        5'd10: sin = 32'h3f6c835e;
        5'd11: sin = 32'h3f54db31;
        5'd12: sin = 32'h3f3504f3;
        5'd13: sin = 32'h3f0e39da;
        5'd14: sin = 32'h3ec3ef15;
        5'd15: sin = 32'h3e47c5c2;
        5'd16: sin = 32'ha65cb3b4;
        5'd17: sin = 32'hbe47c5c2;
        5'd18: sin = 32'hbec3ef15;
        5'd19: sin = 32'hbf0e39da;
        5'd20: sin = 32'hbf3504f3;
        5'd21: sin = 32'hbf54db31;
        5'd22: sin = 32'hbf6c835e;
        5'd23: sin = 32'hbf7b14be;
        5'd24: sin = 32'hbf800000;
        5'd25: sin = 32'hbf7b14be;
        5'd26: sin = 32'hbf6c835e;
        5'd27: sin = 32'hbf54db31;
        5'd28: sin = 32'hbf3504f3;
        5'd29: sin = 32'hbf0e39da;
        5'd30: sin = 32'hbec3ef15;
        5'd31: sin = 32'hbe47c5c2;
    endcase;
endfunction

function [31:0] cos (input [4:0] theta);
    case (theta)
        5'd0:  cos = 32'h3f800000;
        5'd1:  cos = 32'h3f7b14be;
        5'd2:  cos = 32'h3f6c835e;
        5'd3:  cos = 32'h3f54db31;
        5'd4:  cos = 32'h3f3504f3;
        5'd5:  cos = 32'h3f0e39da;
        5'd6:  cos = 32'h3ec3ef15;
        5'd7:  cos = 32'h3e47c5c2;
        5'd8:  cos = 32'h248d3132;
        5'd9:  cos = 32'hbe47c5c2;
        5'd10: cos = 32'hbec3ef15;
        5'd11: cos = 32'hbf0e39da;
        5'd12: cos = 32'hbf3504f3;
        5'd13: cos = 32'hbf54db31;
        5'd14: cos = 32'hbf6c835e;
        5'd15: cos = 32'hbf7b14be;
        5'd16: cos = 32'hbf800000;
        5'd17: cos = 32'hbf7b14be;
        5'd18: cos = 32'hbf6c835e;
        5'd19: cos = 32'hbf54db31;
        5'd20: cos = 32'hbf3504f3;
        5'd21: cos = 32'hbf0e39da;
        5'd22: cos = 32'hbec3ef15;
        5'd23: cos = 32'hbe47c5c2;
        5'd24: cos = 32'h2732c363;
        5'd25: cos = 32'h3e47c5c2;
        5'd26: cos = 32'h3ec3ef15;
        5'd27: cos = 32'h3f0e39da;
        5'd28: cos = 32'h3f3504f3;
        5'd29: cos = 32'h3f54db31;
        5'd30: cos = 32'h3f6c835e;
        5'd31: cos = 32'h3f7b14be;
    endcase;
endfunction