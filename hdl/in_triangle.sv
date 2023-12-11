module in_triangle(
    input clk_in,
    input rst_in,
    input wire [8:0] v1 [2:0],
    input wire [8:0] v2 [2:0],
    input wire [8:0] v3 [2:0],
    input wire [8:0] x,
    input wire [8:0] y,
    input wire valid_in,
    output logic in_tri,
    output logic valid_out
);

    enum {GET, DET, CALC} state;
    
    // vertices w sign
    logic signed [9:0] vert1 [2:0];
    logic signed [9:0] vert2 [2:0];
    logic signed [9:0] vert3 [2:0];

    assign vert1[0] = {1'b0, v1[0]};
    assign vert1[1] = {1'b0, v1[1]};
    assign vert1[2] = {1'b0, v1[2]};
    assign vert2[0] = {1'b0, v2[0]};
    assign vert2[1] = {1'b0, v2[1]};
    assign vert2[2] = {1'b0, v2[2]};
    assign vert3[0] = {1'b0, v3[0]};
    assign vert3[1] = {1'b0, v3[1]};
    assign vert3[2] = {1'b0, v3[2]};

    // column vectors : msb = x, lsb = y
    logic signed [9:0] vect1 [1:0];
    logic signed [9:0] vect2 [1:0];
    logic signed [9:0] v0 [1:0];
    logic signed [9:0] v [1:0];

    assign v0[1] = vert1[2];
    assign v0[0] = vert1[1];
    assign vect1[1] = vert2[2]-vert1[2];
    assign vect1[0] = vert2[1]-vert1[1];
    assign vect2[1] = vert3[2]-vert1[2];
    assign vect2[0] = vert3[1]-vert1[1];
    assign v[1] = x;
    assign v[0] = y;

    // determinants
    logic signed [16:0] detv1v2;
    logic signed [16:0] detvv2;
    logic signed [16:0] detv0v2;
    logic signed [16:0] detvv1;
    logic signed [16:0] detv0v1;

    // assign detv1v2 = vect1[1]*vect2[0] - vect1[0]*vect2[1];
    // assign detvv2 = v[1]*vect2[0] - v[0]*vect2[1];
    // assign detv0v2 = v0[1]*vect2[0] - v0[0]*vect2[1];
    // assign detvv1 = v[1]*vect1[0] - v[0]*vect1[1];
    // assign detv0v1 = v0[1]*vect1[0] - v0[0]*vect1[1];

    // numerators
    logic signed [16:0] a_num;
    logic signed [16:0] b_num;

    assign a_num = detvv2 - detv0v2;
    assign b_num = detvv1 - detv0v1;

    logic [15:0] a_raw;
    logic [15:0] b_raw;
    logic [15:0] det_raw;
    // assign a_raw = (a_num[16])? -a_num[15:0]: a_num[15:0];
    // assign b_raw = (b_num[16])? -b_num[15:0]: b_num[15:0];
    // assign det_raw = (detv1v2[16])? -detv1v2[15:0]: detv1v2[15:0];

    // output signals
    logic a;
    logic b;

    assign a = ((~(detv1v2[16] ^ a_num[16])) & (a_raw <= det_raw)) | !a_raw;
    assign b = ((detv1v2[16] ^ b_num[16]) & (b_raw <= det_raw)) | !b_raw;

    // assign in_tri = a & b & (a_num[15:0] < det_raw - b_raw);

    always_ff @(posedge clk_in) begin
        if (rst_in) begin
            valid_out <= 0;
            in_tri <= 0;
        end else begin
            case (state)
                GET: begin 
                    if (valid_in) begin
                        detv1v2 <= vect1[1]*vect2[0] - vect1[0]*vect2[1];
                        detvv2 <= v[1]*vect2[0] - v[0]*vect2[1];
                        detv0v2 <= v0[1]*vect2[0] - v0[0]*vect2[1];
                        detvv1 <= v[1]*vect1[0] - v[0]*vect1[1];
                        detv0v1 <= v0[1]*vect1[0] - v0[0]*vect1[1];
                        state <= DET;
                    end
                    valid_out <= 0;
                    in_tri <= 0;
                end
                DET: begin
                    // a_num = detvv2 - detv0v2;
                    // b_num = detvv1 - detv0v1;
                    a_raw <= (a_num[16])? -a_num[15:0]: a_num[15:0];
                    b_raw <= (b_num[16])? -b_num[15:0]: b_num[15:0];
                    det_raw <= (detv1v2[16])? -detv1v2[15:0]: detv1v2[15:0];
                    state <= CALC;
                end
                CALC: begin
                    in_tri <= (((~(detv1v2[16] ^ a_num[16])) & (a_raw <= det_raw)) | !a_raw) &
                                (((detv1v2[16] ^ b_num[16]) & (b_raw <= det_raw)) | !b_raw) & (a_raw + b_raw <= det_raw);
                    valid_out <= 1;
                    state <= GET;
                end
                    // in_tri <= a & b & (a_raw + b_raw <= det_raw);
                    // valid_out <= 1;
            endcase;
        end
    end

endmodule