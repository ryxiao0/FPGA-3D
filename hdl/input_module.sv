// this module is untested
/*
module system_inputs#(
    parameter rot_max, // the maximum value of pitch, roll and yaw, 
    parameter translate_max, // the maximum value of translate in any direction
    parameter scale_min,
    parameter scale_max

)
    (
        input wire clk_in,
        input wire rst_in, 
        input wire [15:0] sw,
        input wire valid_in,
        input logic [8:0] current_translate [2:0],
        input logic [31:0] current_scale,
        input logic [4:0] current_pitch,
        input logic [4:0] current_roll, 
        input logic [4:0] current_yaw,
        output logic [8:0] translate [2:0],
        output logic [31:0] scale,
        output logic [4:0] pitch,
        output logic [4:0] roll, 
        output logic [4:0] yaw,
        output logic scale_valid_out
    );
   
   
    logic [31:0] adder_data_1;
    logic [31:0] adder_data_2;
    logic add_valid;
    logic [31:0] adder_out;
    logic adder_valid_out;

    // later replace with add/sub to be able to scale down 
    adder add (
        .aclk(clk_in),
        .s_axis_a_tdata(adder_data_1),
        .s_axis_a_tready(1'b1),
        .s_axis_a_tvalid(add_valid),
        .s_axis_b_tdata(adder_data_2),
        .s_axis_b_tready(1'b1),
        .s_axis_b_tvalid(add_valid),
        .m_axis_result_tdata(adder_out),
        .m_axis_result_tready(1'b1),
        .m_axis_result_tvalid(adder_valid_out)
    );
   


    always_ff @(posedge clk_100mhz) begin
        if(rst_in) begin
            // sys reset signal 
            translate[0] <= 0;
            translate[1] <= 0;
            translate[2] <= 0;
            scale <= 0;
            roll <= 0;
            pitch <= 0; 
            yaw <= 0;
        end else begin
            
            if(valid_in) begin
                // switches for rotating
                if (sw[0]) begin 
                    roll <= (current_roll + 1) % rot_max;
                end else if (sw[1]) begin
                    roll <= (current_roll - 1) % rot_max;
                end
                if (sw[2]) begin
                    pitch <= (current_pitch + 1) % rot_max;
                end else if(sw[3]) begin
                    pitch <= (current_pitch - 1) % rot_max;
                end
                if (sw[4]) begin
                    yaw <= (current_yaw + 1) % rot_max;
                end else if (sw[5]) begin 
                    yaw <= (current_yaw - 1) % rot_max;
                end 

                // switch for scaling 
                if (sw[6]) begin
                    if(current_scale == scale_max) begin
                        scale <= scale_min;
                    end else begin 
                        adder_data_1 <= current_scale;
                        adder_data_2 <= 32'b00111111100000000000000000000000;
                        add_valid <= 1;
                    end
                end 
                // end else if(sw[7]) begin
                //     adder_data_1 <= current_scale;
                //     adder_data_2 <= 32'b10111111100000000000000000000000;
                //     add_valid <= 1;

                // end

                // switches for translating
                if (sw[10]) begin
                    translate[0] <= (current_translate[0] + 1) % translate_max;
                end else if(sw[11]) begin
                    translate[0] <= (current_translate[0] - 1) % translate_max;
                end
                if (sw[12]) begin
                    translate[1] <= (current_translate[1] + 1) % translate_max;
                end else if(sw[13]) begin 
                    translate[1] <= (current_translate[1] - 1) % translate_max;
                end
                if (sw[14]) begin
                    translate[2] <= (current_translate[2] + 1) % translate_max;
                end else if(sw[15]) begin 
                    translate[2] <= (current_translate[2] - 1) % translate_max;
                end
            end
            if(adder_valid_out) begin
                scale <= adder_out;
                scale_valid_out <= 1;
            end else begin
                scale_valid_out <= 0;
            end
        end 
    end

endmodule
*/