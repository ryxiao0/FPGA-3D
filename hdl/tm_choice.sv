module tm_choice (
  input wire [7:0] data_in,
  output logic [8:0] qm_out
  );

    logic [3:0] pop_count;

    assign pop_count = data_in[0]+data_in[1]+data_in[2]+data_in[3]+data_in[4]+data_in[5]+data_in[6]+data_in[7];

    assign qm_out[0] = data_in[0];
    assign qm_out[1] = (pop_count > 4 || (pop_count == 4 && ~data_in[0]))? ~(qm_out[0]^data_in[1]): qm_out[0]^data_in[1];
    assign qm_out[2] = (pop_count > 4 || (pop_count == 4 && ~data_in[0]))? ~(qm_out[1]^data_in[2]): qm_out[1]^data_in[2];
    assign qm_out[3] = (pop_count > 4 || (pop_count == 4 && ~data_in[0]))? ~(qm_out[2]^data_in[3]): qm_out[2]^data_in[3];
    assign qm_out[4] = (pop_count > 4 || (pop_count == 4 && ~data_in[0]))? ~(qm_out[3]^data_in[4]): qm_out[3]^data_in[4];
    assign qm_out[5] = (pop_count > 4 || (pop_count == 4 && ~data_in[0]))? ~(qm_out[4]^data_in[5]): qm_out[4]^data_in[5];
    assign qm_out[6] = (pop_count > 4 || (pop_count == 4 && ~data_in[0]))? ~(qm_out[5]^data_in[6]): qm_out[5]^data_in[6];
    assign qm_out[7] = (pop_count > 4 || (pop_count == 4 && ~data_in[0]))? ~(qm_out[6]^data_in[7]): qm_out[6]^data_in[7];
    assign qm_out[8] = (pop_count > 4 || (pop_count == 4 && ~data_in[0]))? 0: 1;

endmodule //end tm_choice