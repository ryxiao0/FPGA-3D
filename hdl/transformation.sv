module transformation
    (
        input wire clk_in,
        input wire rst_in,
        input wire [31:0] pos [3:0],
        input wire [31:0] distance,
        input wire [31:0] scale,
        input wire [3:0] pitch, // x axis - like tilting up or down
        input wire [3:0] roll, // z axis - looking down z axis
        input wire [3:0] yaw, // y axis - like steering left or right
        input wire obj_done_in,
        input wire valid_in,
        output logic valid_out,
        output logic obj_done_out,
        output logic [31:0] new_pos [3:0],
        output logic ready_out,
        input wire ready_in
    );

    enum {READY, COSA, SINA, ADDA, SINB, COSB, ADDB, COSC, SINC, ADDC, SIND, COSD, ADDD, COSE, SINE, ADDE, SINF, COSF, ADDF, MED, TOVIEW} state;

    logic [31:0] add_a_in, add_b_in, add_out;
    logic add_v_in, add_v_out;
    logic obj_done_med;
    logic [31:0] add_buf;

    logic [31:0] mult_med;

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

    logic [31:0] mult_a_in, mult_b_in, mult_out;
    logic mult_v_in, mult_v_out;
    logic [31:0] mult_med_1, mult_med_2;

    multiplier mult (
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

    logic [31:0] sinp;
    logic [31:0] cosp;
    assign sinp = sin(pitch);
    assign cosp = cos(pitch);

    logic [31:0] siny;
    logic [31:0] cosy;
    assign siny = sin(yaw);
    assign cosy = cos(yaw);

    logic [31:0] sinr;
    logic [31:0] cosr;
    assign sinr = sin(roll);
    assign cosr = cos(roll);
    
    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            state <= READY;
            ready_out <= 1;
        end else begin
            case (state)
                READY: begin
                    if (valid_in) begin
                        mult_a_in <= pos[2]; // y * cos
                        mult_b_in <= cosp;
                        mult_v_in <= 1;
                        state <= COSA;
                        ready_out <= 0;
                        obj_done_med <= obj_done_in;
                    end
                    valid_out <= 0;
                end
                COSA: begin
                    if (mult_v_out) begin
                        mult_med <= mult_out;
                        mult_a_in <= pos[1]; // z * sin
                        mult_b_in <= sinp;
                        mult_v_in <= 1;
                        state <= SINA;
                    end else mult_v_in <= 0;
                end
                SINA: begin
                    if (mult_v_out) begin
                        add_a_in <= mult_out; // y value
                        add_b_in <= mult_med;
                        add_v_in <= 1;
                        state <= ADDA;
                    end else mult_v_in <= 0;
                end
                ADDA: begin
                    if (add_v_out) begin
                        new_pos[2] <= add_out;
                        mult_a_in <= {~sinp[31], sinp[30:0]}; // y * -sin
                        mult_b_in <= pos[2];
                        mult_v_in <= 1;
                        state <= SINB;
                    end else add_v_in <= 0;
                end
                SINB: begin
                    if (mult_v_out) begin
                        mult_med <= mult_out;
                        mult_a_in <= pos[1]; // z * cos
                        mult_b_in <= cosp;
                        mult_v_in <= 1;
                        state <= COSB;
                    end else mult_v_in <= 0;
                end
                COSB: begin
                    if (mult_v_out) begin
                        add_a_in <= mult_out; // z value
                        add_b_in <= mult_med;
                        add_v_in <= 1;
                        state <= ADDB;
                    end else mult_v_in <= 0;
                end

                ADDB: begin
                    if (add_v_out) begin
                        new_pos[1] <= add_out;
                        mult_a_in <= pos[3];
                        mult_b_in <= cosy; // x * cos
                        mult_v_in <= 1;
                        state <= COSC;
                    end else add_v_in <= 0;
                end
                COSC: begin
                    if (mult_v_out) begin
                        mult_med <= mult_out;
                        mult_a_in <= new_pos[1];
                        mult_b_in <= {~siny[31], siny[30:0]}; // z * -sin
                        mult_v_in <= 1;
                        state <= SINC;
                    end else mult_v_in <= 0;
                end
                SINC: begin
                    if (mult_v_out) begin
                        add_a_in <= mult_out; // x value
                        add_b_in <= mult_med;
                        add_v_in <= 1;
                        state <= ADDC;
                    end else mult_v_in <= 0;
                end
                ADDC: begin
                    if (add_v_out) begin
                        new_pos[3] <= add_out;
                        mult_a_in <= siny;
                        mult_b_in <= pos[3]; // x * sin
                        mult_v_in <= 1;
                        state <= SIND;
                    end else add_v_in <= 0;
                end
                SIND: begin
                    if (mult_v_out) begin
                        mult_med <= mult_out;
                        mult_a_in <= new_pos[1]; // z * cos
                        mult_b_in <= cosy;
                        mult_v_in <= 1;
                        state <= COSD;
                    end else mult_v_in <= 0;
                end
                COSD: begin
                    if (mult_v_out) begin
                        add_a_in <= mult_out; // z value
                        add_b_in <= mult_med;
                        add_v_in <= 1;
                        state <= ADDD;
                    end else mult_v_in <= 0;
                end

                ADDD: begin
                    if (add_v_out) begin
                        new_pos[1] <= add_out;
                        mult_a_in <= new_pos[3];
                        mult_b_in <= cosr; // x * cos
                        mult_v_in <= 1;
                        state <= COSE;
                    end else add_v_in <= 0;
                end
                COSE: begin
                    if (mult_v_out) begin
                        mult_med <= mult_out;
                        mult_a_in <= new_pos[2];
                        mult_b_in <= sinr; // y * sin
                        mult_v_in <= 1;
                        state <= SINE;
                    end else mult_v_in <= 0;
                end
                SINE: begin
                    if (mult_v_out) begin
                        add_a_in <= mult_out; // x value
                        add_b_in <= mult_med;
                        add_v_in <= 1;
                        state <= ADDE;
                    end else mult_v_in <= 0;
                end
                ADDE: begin
                    if (add_v_out) begin
                        new_pos[3] <= add_out;
                        mult_a_in <= {~sinr[31], sinr[30:0]};
                        mult_b_in <= new_pos[3]; // x * -sin
                        mult_v_in <= 1;
                        state <= SINF;
                    end else add_v_in <= 0;
                end
                SINF: begin
                    if (mult_v_out) begin
                        mult_med <= mult_out;
                        mult_a_in <= new_pos[2]; // y * cos
                        mult_b_in <= cosr;
                        mult_v_in <= 1;
                        state <= COSF;
                    end else mult_v_in <= 0;
                end
                COSF: begin
                    if (mult_v_out) begin
                        add_a_in <= mult_out; // y value
                        add_b_in <= mult_med;
                        add_v_in <= 1;
                        state <= ADDF;
                    end else mult_v_in <= 0;
                end
                ADDF: begin
                    if (add_v_out) begin
                        new_pos[2] <= add_out;
                        add_a_in <= new_pos[1]; // move further on z axis
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
                        new_pos[1] <= add_buf;
                        state <= READY;
                        ready_out <= 1;
                    end
                end
            endcase;
        end
    end

    // 16 increments of rotation (4 bit lookup input), 32 bit float output
    function [31:0] sin (input [3:0] theta);
        case (theta)
            4'd0: sin = 32'h00000000;
            4'd1: sin = 32'h3ec3ef15;
            4'd2: sin = 32'h3f3504f3;
            4'd3: sin = 32'h3f6c835e;
            4'd4: sin = 32'h3f800000;
            4'd5: sin = 32'h3f6c835e;
            4'd6: sin = 32'h3f3504f3;
            4'd7: sin = 32'h3ec3ef15;
            4'd8: sin = 32'h250d3132;
            4'd9: sin = 32'hbec3ef15;
            4'd10: sin = 32'hbf3504f3;
            4'd11: sin = 32'hbf6c835e;
            4'd12: sin = 32'hbf800000;
            4'd13: sin = 32'hbf6c835e;
            4'd14: sin = 32'hbf3504f3;
            4'd15: sin = 32'hbec3ef15;
        endcase;
    endfunction

    function [31:0] cos (input [3:0] theta);
        case (theta)
            4'd0: cos = 32'h3f800000;
            4'd1: cos = 32'h3f6c835e;
            4'd2: cos = 32'h3f3504f3;
            4'd3: cos = 32'h3ec3ef15;
            4'd4: cos = 32'h248d3132;
            4'd5: cos = 32'hbec3ef15;
            4'd6: cos = 32'hbf3504f3;
            4'd7: cos = 32'hbf6c835e;
            4'd8: cos = 32'hbf800000;
            4'd9: cos = 32'hbf6c835e;
            4'd10: cos = 32'hbf3504f3;
            4'd11: cos = 32'hbec3ef15;
            4'd12: cos = 32'ha553c9ca;
            4'd13: cos = 32'h3ec3ef15;
            4'd14: cos = 32'h3f3504f3;
            4'd15: cos = 32'h3f6c835e;
        endcase;
    endfunction

endmodule
