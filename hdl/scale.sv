`timescale 1ns / 1ps
`default_nettype none

module scale(
  input wire [1:0] scale_in,
  input wire [10:0] hcount_in,
  input wire [9:0] vcount_in,
  output logic [10:0] scaled_hcount_out,
  output logic [9:0] scaled_vcount_out,
  output logic valid_addr_out
);
  //always just default to scale 1
  //(you need to update/modify this to spec)!
  assign valid_addr_out = (scale_in == 2'b00)? hcount_in <240 && vcount_in <320:
                          (scale_in == 2'b10)? hcount_in <960 && vcount_in <640:
                          (scale_in == 2'b11)? hcount_in <720 && vcount_in <720: 0;

  assign scaled_hcount_out =  (scale_in == 2'b10)? hcount_in >> 2: // divide by 4
                              (scale_in == 2'b11)? hcount_in >> 1: hcount_in;  // divide by 2

  assign scaled_vcount_out = (scale_in[1])? vcount_in >> 1: vcount_in; // divide by 2

endmodule


`default_nettype wire

