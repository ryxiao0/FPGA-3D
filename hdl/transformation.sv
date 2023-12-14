module transformation
    (
        input wire clk_in,
        input wire rst_in,
        input wire [31:0] pos [3:0],
        input wire [31:0] distance,
        input wire [31:0] scale,
        input wire [4:0] pitch, // x axis - like tilting up or down
        input wire [4:0] roll, // z axis - looking down z axis
        input wire [4:0] yaw, // y axis - like steering left or right
        input wire obj_done_in,
        input wire valid_in,
        output logic valid_out,
        output logic obj_done_out,
        output logic [31:0] new_pos [3:0],
        output logic ready_out,
        input wire ready_in
    );

    enum {READY, COSA, SINA, ADDA, SINB, COSB, ADDB, MED, TOVIEW} state;

    logic [31:0] add_a_in, add_b_in, add_out;
    logic add_v_in, add_v_out;
    logic obj_done_med;
    logic [31:0] add_buf;

    logic [31:0] pitch_med;

    adder add (
        .aclk(clk_in),
        .s_axis_a_tdata(add_a_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(add_v_in),
        .s_axis_b_tdata(add_b_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(add_v_in),
        .m_axis_result_tdata(add_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(add_v_out)
    );

    logic [31:0] roll_a_in, roll_b_in, roll_out;
    logic roll_v_in, roll_v_out;

    multiplier roll (
        .aclk(clk_in),
        .s_axis_a_tdata(roll_a_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(roll_v_in),
        .s_axis_b_tdata(roll_b_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(roll_v_in),
        .m_axis_result_tdata(roll_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(roll_v_out)
    );

    logic [31:0] yaw_a_in, yaw_b_in, yaw_out;
    logic yaw_v_in, yaw_v_out;

    multiplier yaw (
        .aclk(clk_in),
        .s_axis_a_tdata(yaw_a_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(yaw_v_in),
        .s_axis_b_tdata(yaw_b_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(yaw_v_in),
        .m_axis_result_tdata(yaw_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(yaw_v_out)
    );

    logic [31:0] pitch_a_in, pitch_b_in, pitch_out;
    logic pitch_v_in, pitch_v_out;

    multiplier pitch (
        .aclk(clk_in),
        .s_axis_a_tdata(pitch_a_in),
        .s_axis_a_tready(),
        .s_axis_a_tvalid(pitch_v_in),
        .s_axis_b_tdata(pitch_b_in),
        .s_axis_b_tready(),
        .s_axis_b_tvalid(pitch_v_in),
        .m_axis_result_tdata(pitch_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(pitch_v_out)
    );
    
    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            state <= READY;
            ready_out <= 1;
        end else begin
            case (state)
                READY: begin
                    if (valid_in) begin
                        // add_a_in <= pos[1];
                        // add_b_in <= distance;
                        // add_v_in <= 1;
                        pitch_a_in <= pos[2];
                        pitch_b_in <= cos(pitch);
                        pitch_v_in <= 1;
                        state <= COSA;
                        ready_out <= 0;
                        obj_done_med <= obj_done_in;
                    end
                    valid_out <= 0;
                end

                COSA: begin
                    if (pitch_v_out) begin
                        pitch_med <= pitch_out;
                        pitch_a_in <= pos[1];
                        pitch_b_in <= sin(pitch);
                        pitch_v_in <= 1;
                        state <= SINA;
                    end else pitch_v_in <= 0;
                end
                SINA: begin
                    if (pitch_v_out) begin
                        add_a_in <= pitch_out;
                        add_b_in <= pitch_med;
                        add_v_in <= 1;
                        state <= ADDA;
                    end else pitch_v_in <= 0;
                end
                ADDA: begin
                    if (add_v_out) begin
                        new_pos[2] <= add_out;
                        pitch_a_in <= {1, sin(pitch)[30:0]};
                        pitch_b_in <= pos[2];
                        pitch_v_in <= 1;
                        state <= SINB;
                    end else add_v_in <= 0;
                end
                SINB: begin
                    if (pitch_v_out) begin
                        pitch_med <= pitch_out;
                        pitch_a_in <= pos[1];
                        pitch_b_in <= cos(pitch);
                        pitch_v_in <= 1;
                        state <= COSB;
                    end else pitch_v_in <= 0;
                end
                COSB: begin
                    if (pitch_v_out) begin
                        add_a_in <= pitch_out;
                        add_b_in <= pitch_med;
                        add_v_in <= 1;
                        state <= ADDB;
                    end else pitch_v_in <= 0;
                end
                ADDB: begin
                    if (add_v_out) begin
                        add_a_in <= add_out;
                        add_b_in <= distance;
                        add_v_in <= 1;
                        state <= MED;
                    end else add_v_in <= 0;
                end

                MED: begin
                    if (add_v_out) begin
                        add_buf <= add_out;
                        state <= TOVIEW;
                    end else add_v_in <= 0;
                end
                TOVIEW: begin
                    if (ready_in) begin
                        valid_out <= 1;
                        obj_done_out <= obj_done_med;
                        new_pos[3] <= pos[3];
                        new_pos[1] <= add_buf;
                        new_pos[0] <= pos[0];
                        state <= READY;
                        ready_out <= 1;
                    end
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
