`default_nettype none
`timescale 1ns/1ps
/*
This module was generated with Manta v0.0.5 on 21 Nov 2023 at 23:09:59 by ryanxiao

If this breaks or if you've got spicy formal verification memes, contact fischerm [at] mit.edu

Provided under a GNU GPLv3 license. Go wild.

Here's an example instantiation of the Manta module you configured, feel free to copy-paste
this into your source!

manta manta_inst (
    .clk(clk),

    .rx(rx),
    .tx(tx),
    
    .val21_in(val21_in), 
    .val22_in(val22_in), 
    .val23_in(val23_in), 
    .val24_in(val24_in), 
    .val1_out(val1_out), 
    .val2_out(val2_out), 
    .val3_out(val3_out), 
    .val4_out(val4_out), 
    .val5_out(val5_out), 
    .val6_out(val6_out), 
    .val7_out(val7_out), 
    .val8_out(val8_out), 
    .val9_out(val9_out), 
    .val10_out(val10_out), 
    .val11_out(val11_out), 
    .val12_out(val12_out), 
    .val13_out(val13_out), 
    .val14_out(val14_out), 
    .val15_out(val15_out), 
    .val16_out(val16_out), 
    .val17_out(val17_out), 
    .val18_out(val18_out), 
    .val19_out(val19_out), 
    .val20_out(val20_out));

*/

module manta (
    input wire clk,

    input wire rx,
    output reg tx,
    
    input wire [31:0] val21_in,
    input wire [31:0] val22_in,
    input wire [31:0] val23_in,
    input wire [31:0] val24_in,
    output reg [31:0] val1_out,
    output reg [31:0] val2_out,
    output reg [31:0] val3_out,
    output reg [31:0] val4_out,
    output reg [31:0] val5_out,
    output reg [31:0] val6_out,
    output reg [31:0] val7_out,
    output reg [31:0] val8_out,
    output reg [31:0] val9_out,
    output reg [31:0] val10_out,
    output reg [31:0] val11_out,
    output reg [31:0] val12_out,
    output reg [31:0] val13_out,
    output reg [31:0] val14_out,
    output reg [31:0] val15_out,
    output reg [31:0] val16_out,
    output reg [31:0] val17_out,
    output reg [31:0] val18_out,
    output reg [31:0] val19_out,
    output reg [31:0] val20_out);


    uart_rx #(.CLOCKS_PER_BAUD(33)) urx (
        .clk(clk),
        .rx(rx),
    
        .data_o(urx_brx_data),
        .valid_o(urx_brx_valid));
    
    reg [7:0] urx_brx_data;
    reg urx_brx_valid;
    
    bridge_rx brx (
        .clk(clk),
    
        .data_i(urx_brx_data),
        .valid_i(urx_brx_valid),
    
        .addr_o(brx_project_io_core_addr),
        .data_o(brx_project_io_core_data),
        .rw_o(brx_project_io_core_rw),
        .valid_o(brx_project_io_core_valid));
    reg [15:0] brx_project_io_core_addr;
    reg [15:0] brx_project_io_core_data;
    reg brx_project_io_core_rw;
    reg brx_project_io_core_valid;
    

    project_io_core project_io_core_inst (
        .bus_clk(clk),
        .user_clk(clk),
    
        // ports
        .val21_in(val21_in),
        .val22_in(val22_in),
        .val23_in(val23_in),
        .val24_in(val24_in),
        .val1_out(val1_out),
        .val2_out(val2_out),
        .val3_out(val3_out),
        .val4_out(val4_out),
        .val5_out(val5_out),
        .val6_out(val6_out),
        .val7_out(val7_out),
        .val8_out(val8_out),
        .val9_out(val9_out),
        .val10_out(val10_out),
        .val11_out(val11_out),
        .val12_out(val12_out),
        .val13_out(val13_out),
        .val14_out(val14_out),
        .val15_out(val15_out),
        .val16_out(val16_out),
        .val17_out(val17_out),
        .val18_out(val18_out),
        .val19_out(val19_out),
        .val20_out(val20_out),
    
        // input port
        .addr_i(brx_project_io_core_addr),
        .data_i(brx_project_io_core_data),
        .rw_i(brx_project_io_core_rw),
        .valid_i(brx_project_io_core_valid),
    
        // output port
        .addr_o(),
        .data_o(project_io_core_btx_data),
        .rw_o(project_io_core_btx_rw),
        .valid_o(project_io_core_btx_valid));

    
    reg [15:0] project_io_core_btx_data;
    reg project_io_core_btx_rw;
    reg project_io_core_btx_valid;
    bridge_tx btx (
        .clk(clk),
    
        .data_i(project_io_core_btx_data),
        .rw_i(project_io_core_btx_rw),
        .valid_i(project_io_core_btx_valid),
    
        .data_o(btx_utx_data),
        .start_o(btx_utx_start),
        .done_i(utx_btx_done));
    
    reg [7:0] btx_utx_data;
    reg btx_utx_start;
    reg utx_btx_done;
    
    uart_tx #(.CLOCKS_PER_BAUD(33)) utx (
        .clk(clk),
    
        .data_i(btx_utx_data),
        .start_i(btx_utx_start),
        .done_o(utx_btx_done),
    
        .tx(tx));

endmodule

/* ---- Module Definitions ----  */

// Modified from Dan Gisselquist's rx_uart module,
// available at https://zipcpu.com/tutorial/ex-09-uartrx.zip

module uart_rx (
    input wire clk,

    input wire rx,

    output reg [7:0] data_o,
    output reg valid_o);

    parameter CLOCKS_PER_BAUD = 0;
    localparam IDLE = 0;
    localparam BIT_ZERO = 1;
    localparam STOP_BIT = 9;

    reg	[3:0] state = IDLE;
    reg	[15:0] baud_counter = 0;
    reg zero_baud_counter;
    assign zero_baud_counter = (baud_counter == 0);

    // 2FF Synchronizer
    reg ck_uart = 1;
    reg	q_uart = 1;
    always @(posedge clk)
        { ck_uart, q_uart } <= { q_uart, rx };

    always @(posedge clk)
        if (state == IDLE) begin
            state <= IDLE;
            baud_counter <= 0;
            if (!ck_uart) begin
                state <= BIT_ZERO;
                baud_counter <= CLOCKS_PER_BAUD+CLOCKS_PER_BAUD/2-1'b1;
            end
        end

        else if (zero_baud_counter) begin
            state <= state + 1;
            baud_counter <= CLOCKS_PER_BAUD-1'b1;
            if (state == STOP_BIT) begin
                state <= IDLE;
                baud_counter <= 0;
            end
        end

        else baud_counter <= baud_counter - 1'b1;

    always @(posedge clk)
        if ( (zero_baud_counter) && (state != STOP_BIT) )
            data_o <= {ck_uart, data_o[7:1]};

    initial	valid_o = 1'b0;
    always @(posedge clk)
        valid_o <= ( (zero_baud_counter) && (state == STOP_BIT) );

endmodule
module bridge_rx (
    input wire clk,

    input wire [7:0] data_i,
    input wire valid_i,

    output reg [15:0] addr_o,
    output reg [15:0] data_o,
    output reg rw_o,
    output reg valid_o);

    initial addr_o = 0;
    initial data_o = 0;
    initial rw_o = 0;
    initial valid_o = 0;

    function [3:0] from_ascii_hex;
        // convert an ascii char encoding a hex value to
        // the corresponding hex value
        input [7:0] c;

        if ((c >= 8'h30) && (c <= 8'h39)) from_ascii_hex = c - 8'h30;
        else if ((c >= 8'h41) && (c <= 8'h46)) from_ascii_hex = c - 8'h41 + 'd10;
        else from_ascii_hex = 0;
    endfunction

    function is_ascii_hex;
        // checks if a byte is an ascii char encoding a hex digit
        input [7:0] c;

        if ((c >= 8'h30) && (c <= 8'h39)) is_ascii_hex = 1; // 0-9
        else if ((c >= 8'h41) && (c <= 8'h46)) is_ascii_hex = 1; // A-F
        else is_ascii_hex = 0;
    endfunction

    reg [7:0] buffer [7:0]; // = 0; // todo: see if sby will tolerate packed arrays?

    localparam IDLE = 0;
    localparam READ = 1;
    localparam WRITE = 2;
    reg [1:0] state = 0;
    reg [3:0] byte_num = 0;

    always @(posedge clk) begin
        addr_o <= 0;
        data_o <= 0;
        rw_o <= 0;
        valid_o <= 0;

        if (state == IDLE) begin
            byte_num <= 0;
            if (valid_i) begin
                if (data_i == "R") state <= READ;
                if (data_i == "W") state <= WRITE;
           end
        end

        else begin
            if (valid_i) begin
                // buffer bytes regardless of if they're good
                byte_num <= byte_num + 1;
                buffer[byte_num] <= data_i;

                // current transaction specifies a read operation
                if(state == READ) begin

                    // go to idle if anything doesn't make sense
                    if(byte_num < 4) begin
                        if(!is_ascii_hex(data_i)) state <= IDLE;
                    end

                    else if(byte_num == 4) begin
                        state <= IDLE;

                        // put data on the bus if the last byte looks good
                        if((data_i == 8'h0D) || (data_i == 8'h0A)) begin
                            addr_o <=   (from_ascii_hex(buffer[0]) << 12) |
                                        (from_ascii_hex(buffer[1]) << 8)  |
                                        (from_ascii_hex(buffer[2]) << 4)  |
                                        (from_ascii_hex(buffer[3]));
                            data_o <= 0;
                            rw_o <= 0;
                            valid_o <= 1;
                        end
                    end
                end

                // current transaction specifies a write transaction
                if(state == WRITE) begin

                    // go to idle if anything doesn't make sense
                    if(byte_num < 8) begin
                        if(!is_ascii_hex(data_i)) state <= IDLE;
                    end

                    else if(byte_num == 8) begin
                        state <= IDLE;

                        // put data on the bus if the last byte looks good
                        if((data_i == 8'h0A) || (data_i == 8'h0D)) begin
                            addr_o <=   (from_ascii_hex(buffer[0]) << 12) |
                                        (from_ascii_hex(buffer[1]) << 8)  |
                                        (from_ascii_hex(buffer[2]) << 4)  |
                                        (from_ascii_hex(buffer[3]));
                            data_o <=   (from_ascii_hex(buffer[4]) << 12) |
                                        (from_ascii_hex(buffer[5]) << 8)  |
                                        (from_ascii_hex(buffer[6]) << 4)  |
                                        (from_ascii_hex(buffer[7]));
                            rw_o <= 1;
                            valid_o <= 1;
                        end
                    end
                end
            end
        end
    end

`ifdef FORMAL
        always @(posedge clk) begin
            // covers
            find_any_write_transaction: cover(rw_o == 1);
            find_any_read_transaction: cover(rw_o == 0);

            find_specific_write_transaction:
                cover(data_o == 16'h1234 && addr_o == 16'h5678 && rw_o == 1 && valid_o == 1);

            find_specific_read_transaction:
                cover(addr_o == 16'h1234 && rw_o == 0 && valid_o == 1);

            find_spacey_write_transaction:
                cover((rw_o == 1) && ($past(valid_i, 3) == 0));

            // asserts
            no_back_to_back_transactions:
                assert( ~(valid_o && $past(valid_o)) );

            no_invalid_states:
                assert(state == IDLE || state == READ || state == WRITE);

            byte_counter_only_increases:
                assert(byte_num == $past(byte_num) || byte_num == $past(byte_num) + 1 || byte_num == 0);
        end
`endif // FORMAL
endmodule

module project_io_core (
    input wire bus_clk,
    input wire user_clk,

    // ports
    input wire [31:0] val21_in,
    input wire [31:0] val22_in,
    input wire [31:0] val23_in,
    input wire [31:0] val24_in,
    output reg [31:0] val1_out,
    output reg [31:0] val2_out,
    output reg [31:0] val3_out,
    output reg [31:0] val4_out,
    output reg [31:0] val5_out,
    output reg [31:0] val6_out,
    output reg [31:0] val7_out,
    output reg [31:0] val8_out,
    output reg [31:0] val9_out,
    output reg [31:0] val10_out,
    output reg [31:0] val11_out,
    output reg [31:0] val12_out,
    output reg [31:0] val13_out,
    output reg [31:0] val14_out,
    output reg [31:0] val15_out,
    output reg [31:0] val16_out,
    output reg [31:0] val17_out,
    output reg [31:0] val18_out,
    output reg [31:0] val19_out,
    output reg [31:0] val20_out,

    // input port
    input wire [15:0] addr_i,
    input wire [15:0] data_i,
    input wire rw_i,
    input wire valid_i,

    // output port
    output reg [15:0] addr_o,
    output reg [15:0] data_o,
    output reg rw_o,
    output reg valid_o
    );

    parameter BASE_ADDR = 0;

    reg strobe = 0;

    // input probe buffers
    reg [31:0] val21_in_buf = 0;
    reg [31:0] val22_in_buf = 0;
    reg [31:0] val23_in_buf = 0;
    reg [31:0] val24_in_buf = 0;

    // output probe buffers
    reg [31:0] val1_out_buf = 0;
    reg [31:0] val2_out_buf = 0;
    reg [31:0] val3_out_buf = 0;
    reg [31:0] val4_out_buf = 0;
    reg [31:0] val5_out_buf = 0;
    reg [31:0] val6_out_buf = 0;
    reg [31:0] val7_out_buf = 0;
    reg [31:0] val8_out_buf = 0;
    reg [31:0] val9_out_buf = 0;
    reg [31:0] val10_out_buf = 0;
    reg [31:0] val11_out_buf = 0;
    reg [31:0] val12_out_buf = 0;
    reg [31:0] val13_out_buf = 0;
    reg [31:0] val14_out_buf = 0;
    reg [31:0] val15_out_buf = 0;
    reg [31:0] val16_out_buf = 0;
    reg [31:0] val17_out_buf = 0;
    reg [31:0] val18_out_buf = 0;
    reg [31:0] val19_out_buf = 0;
    reg [31:0] val20_out_buf = 0;

    // output probe initial values
    initial begin
        val1_out = 0;
        val2_out = 0;
        val3_out = 0;
        val4_out = 0;
        val5_out = 0;
        val6_out = 0;
        val7_out = 0;
        val8_out = 0;
        val9_out = 0;
        val10_out = 0;
        val11_out = 0;
        val12_out = 0;
        val13_out = 0;
        val14_out = 0;
        val15_out = 0;
        val16_out = 0;
        val17_out = 0;
        val18_out = 0;
        val19_out = 0;
        val20_out = 0;
    end

    // synchronize buffers and probes on strobe
    always @(posedge user_clk) begin
        if(strobe) begin
            // update input buffers from input probes
            val21_in_buf <= val21_in;
            val22_in_buf <= val22_in;
            val23_in_buf <= val23_in;
            val24_in_buf <= val24_in;

            // update output buffers from output probes
            val1_out <= val1_out_buf;
            val2_out <= val2_out_buf;
            val3_out <= val3_out_buf;
            val4_out <= val4_out_buf;
            val5_out <= val5_out_buf;
            val6_out <= val6_out_buf;
            val7_out <= val7_out_buf;
            val8_out <= val8_out_buf;
            val9_out <= val9_out_buf;
            val10_out <= val10_out_buf;
            val11_out <= val11_out_buf;
            val12_out <= val12_out_buf;
            val13_out <= val13_out_buf;
            val14_out <= val14_out_buf;
            val15_out <= val15_out_buf;
            val16_out <= val16_out_buf;
            val17_out <= val17_out_buf;
            val18_out <= val18_out_buf;
            val19_out <= val19_out_buf;
            val20_out <= val20_out_buf;
        end
    end

    // handle bus operations
    always @(posedge bus_clk) begin
        addr_o <= addr_i;
        data_o <= data_i;
        rw_o <= rw_i;
        valid_o <= valid_i;

        // check if address is valid
        if( (valid_i) && (addr_i >= BASE_ADDR) && (addr_i <= BASE_ADDR + 48)) begin

            // reads
            if(!rw_i) begin
                case (addr_i)
                    BASE_ADDR + 0: data_o <= strobe;

                    BASE_ADDR + 1: data_o <= val21_in_buf[15:0];
                    BASE_ADDR + 2: data_o <= val21_in_buf[31:16];
                    BASE_ADDR + 3: data_o <= val22_in_buf[15:0];
                    BASE_ADDR + 4: data_o <= val22_in_buf[31:16];
                    BASE_ADDR + 5: data_o <= val23_in_buf[15:0];
                    BASE_ADDR + 6: data_o <= val23_in_buf[31:16];
                    BASE_ADDR + 7: data_o <= val24_in_buf[15:0];
                    BASE_ADDR + 8: data_o <= val24_in_buf[31:16];
                    BASE_ADDR + 9: data_o <= val1_out_buf[15:0];
                    BASE_ADDR + 10: data_o <= val1_out_buf[31:16];
                    BASE_ADDR + 11: data_o <= val2_out_buf[15:0];
                    BASE_ADDR + 12: data_o <= val2_out_buf[31:16];
                    BASE_ADDR + 13: data_o <= val3_out_buf[15:0];
                    BASE_ADDR + 14: data_o <= val3_out_buf[31:16];
                    BASE_ADDR + 15: data_o <= val4_out_buf[15:0];
                    BASE_ADDR + 16: data_o <= val4_out_buf[31:16];
                    BASE_ADDR + 17: data_o <= val5_out_buf[15:0];
                    BASE_ADDR + 18: data_o <= val5_out_buf[31:16];
                    BASE_ADDR + 19: data_o <= val6_out_buf[15:0];
                    BASE_ADDR + 20: data_o <= val6_out_buf[31:16];
                    BASE_ADDR + 21: data_o <= val7_out_buf[15:0];
                    BASE_ADDR + 22: data_o <= val7_out_buf[31:16];
                    BASE_ADDR + 23: data_o <= val8_out_buf[15:0];
                    BASE_ADDR + 24: data_o <= val8_out_buf[31:16];
                    BASE_ADDR + 25: data_o <= val9_out_buf[15:0];
                    BASE_ADDR + 26: data_o <= val9_out_buf[31:16];
                    BASE_ADDR + 27: data_o <= val10_out_buf[15:0];
                    BASE_ADDR + 28: data_o <= val10_out_buf[31:16];
                    BASE_ADDR + 29: data_o <= val11_out_buf[15:0];
                    BASE_ADDR + 30: data_o <= val11_out_buf[31:16];
                    BASE_ADDR + 31: data_o <= val12_out_buf[15:0];
                    BASE_ADDR + 32: data_o <= val12_out_buf[31:16];
                    BASE_ADDR + 33: data_o <= val13_out_buf[15:0];
                    BASE_ADDR + 34: data_o <= val13_out_buf[31:16];
                    BASE_ADDR + 35: data_o <= val14_out_buf[15:0];
                    BASE_ADDR + 36: data_o <= val14_out_buf[31:16];
                    BASE_ADDR + 37: data_o <= val15_out_buf[15:0];
                    BASE_ADDR + 38: data_o <= val15_out_buf[31:16];
                    BASE_ADDR + 39: data_o <= val16_out_buf[15:0];
                    BASE_ADDR + 40: data_o <= val16_out_buf[31:16];
                    BASE_ADDR + 41: data_o <= val17_out_buf[15:0];
                    BASE_ADDR + 42: data_o <= val17_out_buf[31:16];
                    BASE_ADDR + 43: data_o <= val18_out_buf[15:0];
                    BASE_ADDR + 44: data_o <= val18_out_buf[31:16];
                    BASE_ADDR + 45: data_o <= val19_out_buf[15:0];
                    BASE_ADDR + 46: data_o <= val19_out_buf[31:16];
                    BASE_ADDR + 47: data_o <= val20_out_buf[15:0];
                    BASE_ADDR + 48: data_o <= val20_out_buf[31:16];
                endcase
            end

            // writes
            else begin
                case (addr_i)
                    BASE_ADDR + 0: strobe <= data_i;

                    BASE_ADDR + 9: val1_out_buf[15:0] <= data_i;
                    BASE_ADDR + 10: val1_out_buf[31:16] <= data_i;
                    BASE_ADDR + 11: val2_out_buf[15:0] <= data_i;
                    BASE_ADDR + 12: val2_out_buf[31:16] <= data_i;
                    BASE_ADDR + 13: val3_out_buf[15:0] <= data_i;
                    BASE_ADDR + 14: val3_out_buf[31:16] <= data_i;
                    BASE_ADDR + 15: val4_out_buf[15:0] <= data_i;
                    BASE_ADDR + 16: val4_out_buf[31:16] <= data_i;
                    BASE_ADDR + 17: val5_out_buf[15:0] <= data_i;
                    BASE_ADDR + 18: val5_out_buf[31:16] <= data_i;
                    BASE_ADDR + 19: val6_out_buf[15:0] <= data_i;
                    BASE_ADDR + 20: val6_out_buf[31:16] <= data_i;
                    BASE_ADDR + 21: val7_out_buf[15:0] <= data_i;
                    BASE_ADDR + 22: val7_out_buf[31:16] <= data_i;
                    BASE_ADDR + 23: val8_out_buf[15:0] <= data_i;
                    BASE_ADDR + 24: val8_out_buf[31:16] <= data_i;
                    BASE_ADDR + 25: val9_out_buf[15:0] <= data_i;
                    BASE_ADDR + 26: val9_out_buf[31:16] <= data_i;
                    BASE_ADDR + 27: val10_out_buf[15:0] <= data_i;
                    BASE_ADDR + 28: val10_out_buf[31:16] <= data_i;
                    BASE_ADDR + 29: val11_out_buf[15:0] <= data_i;
                    BASE_ADDR + 30: val11_out_buf[31:16] <= data_i;
                    BASE_ADDR + 31: val12_out_buf[15:0] <= data_i;
                    BASE_ADDR + 32: val12_out_buf[31:16] <= data_i;
                    BASE_ADDR + 33: val13_out_buf[15:0] <= data_i;
                    BASE_ADDR + 34: val13_out_buf[31:16] <= data_i;
                    BASE_ADDR + 35: val14_out_buf[15:0] <= data_i;
                    BASE_ADDR + 36: val14_out_buf[31:16] <= data_i;
                    BASE_ADDR + 37: val15_out_buf[15:0] <= data_i;
                    BASE_ADDR + 38: val15_out_buf[31:16] <= data_i;
                    BASE_ADDR + 39: val16_out_buf[15:0] <= data_i;
                    BASE_ADDR + 40: val16_out_buf[31:16] <= data_i;
                    BASE_ADDR + 41: val17_out_buf[15:0] <= data_i;
                    BASE_ADDR + 42: val17_out_buf[31:16] <= data_i;
                    BASE_ADDR + 43: val18_out_buf[15:0] <= data_i;
                    BASE_ADDR + 44: val18_out_buf[31:16] <= data_i;
                    BASE_ADDR + 45: val19_out_buf[15:0] <= data_i;
                    BASE_ADDR + 46: val19_out_buf[31:16] <= data_i;
                    BASE_ADDR + 47: val20_out_buf[15:0] <= data_i;
                    BASE_ADDR + 48: val20_out_buf[31:16] <= data_i;
                endcase
            end
        end
    end

endmodule

module bridge_tx (
    input wire clk,

    input wire [15:0] data_i,
    input wire rw_i,
    input wire valid_i,

    output reg [7:0] data_o,
    output reg start_o,
    input wire done_i);

    function [7:0] to_ascii_hex;
        // convert a number from 0-15 into the corresponding ascii char
        input [3:0] n;
        to_ascii_hex = (n < 10) ? (n + 8'h30) : (n + 8'h41 - 'd10);
    endfunction

    localparam PREAMBLE = "D";
    localparam CR = 8'h0D;
    localparam LF = 8'h0A;

    reg busy = 0;
    reg [15:0] buffer = 0;
    reg [3:0] count = 0;

    assign start_o = busy;

    always @(posedge clk) begin
        // idle until valid read transaction arrives on bus
        if (!busy) begin
            if (valid_i && !rw_i) begin
                busy <= 1;
                buffer <= data_i;
            end
        end

        if (busy) begin
            // uart module is done transmitting a byte
            if(done_i) begin
                count <= count + 1;

                // message has been transmitted
                if (count > 5) begin
                    count <= 0;

                    // go back to idle or transmit next message
                    if (valid_i && !rw_i) buffer <= data_i;
                    else busy <= 0;
                end
            end
        end
    end

    always @(*) begin
        case (count)
            0: data_o = PREAMBLE;
            1: data_o = to_ascii_hex(buffer[15:12]);
            2: data_o = to_ascii_hex(buffer[11:8]);
            3: data_o = to_ascii_hex(buffer[7:4]);
            4: data_o = to_ascii_hex(buffer[3:0]);
            5: data_o = CR;
            6: data_o = LF;
            default: data_o = 0;
        endcase
    end
endmodule
module uart_tx (
	input wire clk,

	input wire [7:0] data_i,
	input wire start_i,
	output reg done_o,

	output reg tx);

	// this module supports only 8N1 serial at a configurable baudrate
	parameter CLOCKS_PER_BAUD = 0;
	reg [$clog2(CLOCKS_PER_BAUD)-1:0] baud_counter = 0;

	reg [8:0] buffer = 0;
	reg [3:0] bit_index = 0;

	initial done_o = 1;
	initial tx = 1;

	always @(posedge clk) begin
		if (start_i && done_o) begin
			baud_counter <= CLOCKS_PER_BAUD - 1;
			buffer <= {1'b1, data_i};
			bit_index <= 0;
			done_o <= 0;
			tx <= 0;
		end

		else if (!done_o) begin
			baud_counter <= baud_counter - 1;
			done_o <= (baud_counter == 1) && (bit_index == 9);

			// a baud period has elapsed
			if (baud_counter == 0) begin
				baud_counter <= CLOCKS_PER_BAUD - 1;

				// clock out another bit if there are any left
				if (bit_index < 9) begin
					tx <= buffer[bit_index];
					bit_index <= bit_index + 1;
				end

				// byte has been sent, send out next one or go to idle
				else begin
					if(start_i) begin
						buffer <= {1'b1, data_i};
						bit_index <= 0;
						tx <= 0;
					end

					else done_o <= 1;
				end
			end
		end
	end
endmodule
`default_nettype wire