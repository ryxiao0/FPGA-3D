// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Dec  7 21:36:56 2023
// Host        : eecs-digital-33 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force obj/cpu_impl_netlist.v -mode timesim -sdf_anno true
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module hdmi_clk_wiz_720p
   (clk_pixel,
    clk_tmds,
    clk_100mhz);
  output clk_pixel;
  output clk_tmds;
  input clk_100mhz;

  wire clk_100mhz;
  wire clk_pixel;
  wire clk_pixel_clk_wiz_0;
  wire clk_ref_clk_wiz_0;
  wire clk_tmds;
  wire clk_tmds_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_100mhz),
        .O(clk_ref_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SPLIT_LOADS_ON_BUFG *) 
  BUFG clkout1_buf
       (.I(clk_pixel_clk_wiz_0),
        .O(clk_pixel));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_tmds_clk_wiz_0),
        .O(clk_tmds));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(37.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(2),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_ref_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_pixel_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_tmds_clk_wiz_0),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
endmodule

module in_triangle
   (CEA2,
    \x_iter_reg[1] ,
    S,
    DI,
    \y_iter_reg[7] ,
    buf_sel_reg,
    buf_sel_reg_0,
    \state_reg[0]_0 ,
    \x_iter_reg[2] ,
    \x_iter_reg[3] ,
    \x_iter_reg[4] ,
    \state_reg[0]_1 ,
    \state_reg[1]_inv ,
    clk_pixel,
    SR,
    in_tri_v_in,
    x_iter,
    state,
    \y_iter_reg[8] ,
    \y_iter_reg[8]_0 ,
    \y_iter_reg[8]_1 ,
    \y_iter_reg[8]_2 ,
    \y_iter_reg[8]_3 ,
    CO,
    y_iter,
    wea1_reg,
    wea0_reg,
    wea1_reg_0,
    detvv1_reg_0,
    \state_reg[1]_inv_0 );
  output CEA2;
  output \x_iter_reg[1] ;
  output [3:0]S;
  output [2:0]DI;
  output [3:0]\y_iter_reg[7] ;
  output buf_sel_reg;
  output buf_sel_reg_0;
  output \state_reg[0]_0 ;
  output \x_iter_reg[2] ;
  output \x_iter_reg[3] ;
  output \x_iter_reg[4] ;
  output \state_reg[0]_1 ;
  output \state_reg[1]_inv ;
  input clk_pixel;
  input [0:0]SR;
  input in_tri_v_in;
  input [8:0]x_iter;
  input [1:0]state;
  input \y_iter_reg[8] ;
  input \y_iter_reg[8]_0 ;
  input \y_iter_reg[8]_1 ;
  input \y_iter_reg[8]_2 ;
  input \y_iter_reg[8]_3 ;
  input [0:0]CO;
  input [7:0]y_iter;
  input wea1_reg;
  input wea0_reg;
  input wea1_reg_0;
  input detvv1_reg_0;
  input [0:0]\state_reg[1]_inv_0 ;

  wire [8:1]A_0;
  wire CEA2;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [3:0]S;
  wire [0:0]SR;
  wire [16:1]a_num;
  wire [0:0]a_num__0;
  wire a_num_carry__0_i_1_n_0;
  wire a_num_carry__0_i_2_n_0;
  wire a_num_carry__0_i_3_n_0;
  wire a_num_carry__0_i_4_n_0;
  wire a_num_carry__0_n_0;
  wire a_num_carry__1_i_1_n_0;
  wire a_num_carry__1_i_2_n_0;
  wire a_num_carry__1_i_3_n_0;
  wire a_num_carry__1_i_4_n_0;
  wire a_num_carry__1_n_0;
  wire a_num_carry__2_i_1_n_0;
  wire a_num_carry__2_i_2_n_0;
  wire a_num_carry__2_i_3_n_0;
  wire a_num_carry__2_i_4_n_0;
  wire a_num_carry__2_n_0;
  wire a_num_carry__3_i_1_n_0;
  wire a_num_carry_i_1_n_0;
  wire a_num_carry_i_2_n_0;
  wire a_num_carry_i_3_n_0;
  wire a_num_carry_i_4_n_0;
  wire a_num_carry_n_0;
  wire [15:1]a_raw1;
  wire \a_raw[10]_i_1_n_0 ;
  wire \a_raw[11]_i_1_n_0 ;
  wire \a_raw[12]_i_1_n_0 ;
  wire \a_raw[12]_i_3_n_0 ;
  wire \a_raw[12]_i_4_n_0 ;
  wire \a_raw[12]_i_5_n_0 ;
  wire \a_raw[12]_i_6_n_0 ;
  wire \a_raw[13]_i_1_n_0 ;
  wire \a_raw[14]_i_1_n_0 ;
  wire \a_raw[15]_i_1_n_0 ;
  wire \a_raw[15]_i_3_n_0 ;
  wire \a_raw[15]_i_4_n_0 ;
  wire \a_raw[15]_i_5_n_0 ;
  wire \a_raw[1]_i_1_n_0 ;
  wire \a_raw[2]_i_1_n_0 ;
  wire \a_raw[3]_i_1_n_0 ;
  wire \a_raw[4]_i_1_n_0 ;
  wire \a_raw[4]_i_3_n_0 ;
  wire \a_raw[4]_i_4_n_0 ;
  wire \a_raw[4]_i_5_n_0 ;
  wire \a_raw[4]_i_6_n_0 ;
  wire \a_raw[4]_i_7_n_0 ;
  wire \a_raw[5]_i_1_n_0 ;
  wire \a_raw[6]_i_1_n_0 ;
  wire \a_raw[7]_i_1_n_0 ;
  wire \a_raw[8]_i_1_n_0 ;
  wire \a_raw[8]_i_3_n_0 ;
  wire \a_raw[8]_i_4_n_0 ;
  wire \a_raw[8]_i_5_n_0 ;
  wire \a_raw[8]_i_6_n_0 ;
  wire \a_raw[9]_i_1_n_0 ;
  wire \a_raw_reg[12]_i_2_n_0 ;
  wire \a_raw_reg[4]_i_2_n_0 ;
  wire \a_raw_reg[8]_i_2_n_0 ;
  wire \a_raw_reg_n_0_[0] ;
  wire \a_raw_reg_n_0_[10] ;
  wire \a_raw_reg_n_0_[11] ;
  wire \a_raw_reg_n_0_[12] ;
  wire \a_raw_reg_n_0_[13] ;
  wire \a_raw_reg_n_0_[14] ;
  wire \a_raw_reg_n_0_[15] ;
  wire \a_raw_reg_n_0_[1] ;
  wire \a_raw_reg_n_0_[2] ;
  wire \a_raw_reg_n_0_[3] ;
  wire \a_raw_reg_n_0_[4] ;
  wire \a_raw_reg_n_0_[5] ;
  wire \a_raw_reg_n_0_[6] ;
  wire \a_raw_reg_n_0_[7] ;
  wire \a_raw_reg_n_0_[8] ;
  wire \a_raw_reg_n_0_[9] ;
  wire [16:1]b_num;
  wire [0:0]b_num__0;
  wire b_num_carry__0_i_1_n_0;
  wire b_num_carry__0_i_2_n_0;
  wire b_num_carry__0_i_3_n_0;
  wire b_num_carry__0_i_4_n_0;
  wire b_num_carry__0_n_0;
  wire b_num_carry__1_i_1_n_0;
  wire b_num_carry__1_i_2_n_0;
  wire b_num_carry__1_i_3_n_0;
  wire b_num_carry__1_i_4_n_0;
  wire b_num_carry__1_n_0;
  wire b_num_carry__2_i_1_n_0;
  wire b_num_carry__2_i_2_n_0;
  wire b_num_carry__2_i_3_n_0;
  wire b_num_carry__2_i_4_n_0;
  wire b_num_carry__2_n_0;
  wire b_num_carry__3_i_1_n_0;
  wire b_num_carry_i_1_n_0;
  wire b_num_carry_i_2_n_0;
  wire b_num_carry_i_3_n_0;
  wire b_num_carry_i_4_n_0;
  wire b_num_carry_n_0;
  wire [15:0]b_raw;
  wire [15:1]b_raw1;
  wire \b_raw[10]_i_1_n_0 ;
  wire \b_raw[11]_i_1_n_0 ;
  wire \b_raw[12]_i_1_n_0 ;
  wire \b_raw[12]_i_3_n_0 ;
  wire \b_raw[12]_i_4_n_0 ;
  wire \b_raw[12]_i_5_n_0 ;
  wire \b_raw[12]_i_6_n_0 ;
  wire \b_raw[13]_i_1_n_0 ;
  wire \b_raw[14]_i_1_n_0 ;
  wire \b_raw[15]_i_1_n_0 ;
  wire \b_raw[15]_i_2_n_0 ;
  wire \b_raw[15]_i_4_n_0 ;
  wire \b_raw[15]_i_5_n_0 ;
  wire \b_raw[15]_i_6_n_0 ;
  wire \b_raw[1]_i_1_n_0 ;
  wire \b_raw[2]_i_1_n_0 ;
  wire \b_raw[3]_i_1_n_0 ;
  wire \b_raw[4]_i_1_n_0 ;
  wire \b_raw[4]_i_3_n_0 ;
  wire \b_raw[4]_i_4_n_0 ;
  wire \b_raw[4]_i_5_n_0 ;
  wire \b_raw[4]_i_6_n_0 ;
  wire \b_raw[4]_i_7_n_0 ;
  wire \b_raw[5]_i_1_n_0 ;
  wire \b_raw[6]_i_1_n_0 ;
  wire \b_raw[7]_i_1_n_0 ;
  wire \b_raw[8]_i_1_n_0 ;
  wire \b_raw[8]_i_3_n_0 ;
  wire \b_raw[8]_i_4_n_0 ;
  wire \b_raw[8]_i_5_n_0 ;
  wire \b_raw[8]_i_6_n_0 ;
  wire \b_raw[9]_i_1_n_0 ;
  wire \b_raw_reg[12]_i_2_n_0 ;
  wire \b_raw_reg[4]_i_2_n_0 ;
  wire \b_raw_reg[8]_i_2_n_0 ;
  wire buf_sel_reg;
  wire buf_sel_reg_0;
  wire clk_pixel;
  wire detv1v2;
  wire detvv11_i_10_n_0;
  wire detvv11_i_11_n_0;
  wire detvv11_i_15_n_0;
  wire detvv11_i_2_n_0;
  wire detvv11_i_3_n_0;
  wire detvv11_i_4_n_0;
  wire detvv11_i_5_n_0;
  wire detvv11_i_6_n_0;
  wire detvv11_i_7_n_0;
  wire detvv11_i_8_n_0;
  wire detvv11_i_9_n_0;
  wire detvv11_n_100;
  wire detvv11_n_101;
  wire detvv11_n_102;
  wire detvv11_n_103;
  wire detvv11_n_104;
  wire detvv11_n_105;
  wire detvv11_n_89;
  wire detvv11_n_90;
  wire detvv11_n_91;
  wire detvv11_n_92;
  wire detvv11_n_93;
  wire detvv11_n_94;
  wire detvv11_n_95;
  wire detvv11_n_96;
  wire detvv11_n_97;
  wire detvv11_n_98;
  wire detvv11_n_99;
  wire detvv1_reg_0;
  wire [16:0]detvv1_reg__0;
  wire detvv1_reg_i_11_n_0;
  wire detvv21_n_100;
  wire detvv21_n_101;
  wire detvv21_n_102;
  wire detvv21_n_103;
  wire detvv21_n_104;
  wire detvv21_n_105;
  wire detvv21_n_89;
  wire detvv21_n_90;
  wire detvv21_n_91;
  wire detvv21_n_92;
  wire detvv21_n_93;
  wire detvv21_n_94;
  wire detvv21_n_95;
  wire detvv21_n_96;
  wire detvv21_n_97;
  wire detvv21_n_98;
  wire detvv21_n_99;
  wire [16:0]detvv2_reg__0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire in_tri1;
  wire in_tri1_carry__0_i_1_n_0;
  wire in_tri1_carry__0_i_2_n_0;
  wire in_tri1_carry__0_i_3_n_0;
  wire in_tri1_carry_i_1_n_0;
  wire in_tri1_carry_i_2_n_0;
  wire in_tri1_carry_i_3_n_0;
  wire in_tri1_carry_i_4_n_0;
  wire in_tri1_carry_i_5_n_0;
  wire in_tri1_carry_n_0;
  wire [15:0]in_tri2;
  wire in_tri2_carry__0_i_1_n_0;
  wire in_tri2_carry__0_i_2_n_0;
  wire in_tri2_carry__0_i_3_n_0;
  wire in_tri2_carry__0_i_4_n_0;
  wire in_tri2_carry__0_n_0;
  wire in_tri2_carry__1_i_1_n_0;
  wire in_tri2_carry__1_i_2_n_0;
  wire in_tri2_carry__1_i_3_n_0;
  wire in_tri2_carry__1_i_4_n_0;
  wire in_tri2_carry__1_n_0;
  wire in_tri2_carry__2_i_1_n_0;
  wire in_tri2_carry__2_i_2_n_0;
  wire in_tri2_carry__2_i_3_n_0;
  wire in_tri2_carry__2_i_4_n_0;
  wire in_tri2_carry_i_1_n_0;
  wire in_tri2_carry_i_2_n_0;
  wire in_tri2_carry_i_3_n_0;
  wire in_tri2_carry_i_4_n_0;
  wire in_tri2_carry_n_0;
  wire in_tri4;
  wire in_tri41_in;
  wire in_tri4_carry__0_i_1_n_0;
  wire in_tri4_carry__0_i_2_n_0;
  wire in_tri4_carry__0_i_3_n_0;
  wire in_tri4_carry_i_1_n_0;
  wire in_tri4_carry_i_2_n_0;
  wire in_tri4_carry_i_3_n_0;
  wire in_tri4_carry_i_4_n_0;
  wire in_tri4_carry_i_5_n_0;
  wire in_tri4_carry_n_0;
  wire \in_tri4_inferred__0/i__carry_n_0 ;
  wire in_tri_i_10_n_0;
  wire in_tri_i_1_n_0;
  wire in_tri_i_2_n_0;
  wire in_tri_i_3_n_0;
  wire in_tri_i_4_n_0;
  wire in_tri_i_5_n_0;
  wire in_tri_i_6_n_0;
  wire in_tri_i_7_n_0;
  wire in_tri_i_8_n_0;
  wire in_tri_i_9_n_0;
  wire in_tri_out;
  wire in_tri_v_in;
  wire in_tri_v_out;
  wire [1:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state_0;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[1]_inv ;
  wire [0:0]\state_reg[1]_inv_0 ;
  wire valid_out_i_1_n_0;
  wire wea0_reg;
  wire wea1_reg;
  wire wea1_reg_0;
  wire [8:0]x_iter;
  wire x_iter0;
  wire \x_iter_reg[1] ;
  wire \x_iter_reg[2] ;
  wire \x_iter_reg[3] ;
  wire \x_iter_reg[4] ;
  wire [7:0]y_iter;
  wire [3:0]\y_iter_reg[7] ;
  wire \y_iter_reg[8] ;
  wire \y_iter_reg[8]_0 ;
  wire \y_iter_reg[8]_1 ;
  wire \y_iter_reg[8]_2 ;
  wire \y_iter_reg[8]_3 ;
  wire [2:0]NLW_a_num_carry_CO_UNCONNECTED;
  wire [2:0]NLW_a_num_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_a_num_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_a_num_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_a_num_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_a_num_carry__3_O_UNCONNECTED;
  wire [2:0]\NLW_a_raw_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_a_raw_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_a_raw_reg[15]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_a_raw_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_a_raw_reg[8]_i_2_CO_UNCONNECTED ;
  wire [2:0]NLW_b_num_carry_CO_UNCONNECTED;
  wire [2:0]NLW_b_num_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_b_num_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_b_num_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_b_num_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_b_num_carry__3_O_UNCONNECTED;
  wire [2:0]\NLW_b_raw_reg[12]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_b_raw_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_b_raw_reg[15]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_b_raw_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_b_raw_reg[8]_i_2_CO_UNCONNECTED ;
  wire NLW_detvv11_CARRYCASCOUT_UNCONNECTED;
  wire NLW_detvv11_MULTSIGNOUT_UNCONNECTED;
  wire NLW_detvv11_OVERFLOW_UNCONNECTED;
  wire NLW_detvv11_PATTERNBDETECT_UNCONNECTED;
  wire NLW_detvv11_PATTERNDETECT_UNCONNECTED;
  wire NLW_detvv11_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_detvv11_ACOUT_UNCONNECTED;
  wire [17:0]NLW_detvv11_BCOUT_UNCONNECTED;
  wire [3:0]NLW_detvv11_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_detvv11_P_UNCONNECTED;
  wire [47:0]NLW_detvv11_PCOUT_UNCONNECTED;
  wire NLW_detvv1_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_detvv1_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_detvv1_reg_OVERFLOW_UNCONNECTED;
  wire NLW_detvv1_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_detvv1_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_detvv1_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_detvv1_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_detvv1_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_detvv1_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_detvv1_reg_P_UNCONNECTED;
  wire [47:0]NLW_detvv1_reg_PCOUT_UNCONNECTED;
  wire NLW_detvv21_CARRYCASCOUT_UNCONNECTED;
  wire NLW_detvv21_MULTSIGNOUT_UNCONNECTED;
  wire NLW_detvv21_OVERFLOW_UNCONNECTED;
  wire NLW_detvv21_PATTERNBDETECT_UNCONNECTED;
  wire NLW_detvv21_PATTERNDETECT_UNCONNECTED;
  wire NLW_detvv21_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_detvv21_ACOUT_UNCONNECTED;
  wire [17:0]NLW_detvv21_BCOUT_UNCONNECTED;
  wire [3:0]NLW_detvv21_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_detvv21_P_UNCONNECTED;
  wire [47:0]NLW_detvv21_PCOUT_UNCONNECTED;
  wire NLW_detvv2_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_detvv2_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_detvv2_reg_OVERFLOW_UNCONNECTED;
  wire NLW_detvv2_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_detvv2_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_detvv2_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_detvv2_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_detvv2_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_detvv2_reg_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_detvv2_reg_P_UNCONNECTED;
  wire [47:0]NLW_detvv2_reg_PCOUT_UNCONNECTED;
  wire [2:0]NLW_in_tri1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_in_tri1_carry_O_UNCONNECTED;
  wire [3:0]NLW_in_tri1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_in_tri1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_in_tri2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_in_tri2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_in_tri2_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_in_tri2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_in_tri4_carry_CO_UNCONNECTED;
  wire [3:0]NLW_in_tri4_carry_O_UNCONNECTED;
  wire [3:0]NLW_in_tri4_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_in_tri4_carry__0_O_UNCONNECTED;
  wire [2:0]\NLW_in_tri4_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_in_tri4_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_in_tri4_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_in_tri4_inferred__0/i__carry__0_O_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 a_num_carry
       (.CI(1'b0),
        .CO({a_num_carry_n_0,NLW_a_num_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(detvv2_reg__0[3:0]),
        .O({a_num[3:1],a_num__0}),
        .S({a_num_carry_i_1_n_0,a_num_carry_i_2_n_0,a_num_carry_i_3_n_0,a_num_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 a_num_carry__0
       (.CI(a_num_carry_n_0),
        .CO({a_num_carry__0_n_0,NLW_a_num_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(detvv2_reg__0[7:4]),
        .O(a_num[7:4]),
        .S({a_num_carry__0_i_1_n_0,a_num_carry__0_i_2_n_0,a_num_carry__0_i_3_n_0,a_num_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__0_i_1
       (.I0(detvv2_reg__0[7]),
        .O(a_num_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__0_i_2
       (.I0(detvv2_reg__0[6]),
        .O(a_num_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__0_i_3
       (.I0(detvv2_reg__0[5]),
        .O(a_num_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__0_i_4
       (.I0(detvv2_reg__0[4]),
        .O(a_num_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 a_num_carry__1
       (.CI(a_num_carry__0_n_0),
        .CO({a_num_carry__1_n_0,NLW_a_num_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(detvv2_reg__0[11:8]),
        .O(a_num[11:8]),
        .S({a_num_carry__1_i_1_n_0,a_num_carry__1_i_2_n_0,a_num_carry__1_i_3_n_0,a_num_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__1_i_1
       (.I0(detvv2_reg__0[11]),
        .O(a_num_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__1_i_2
       (.I0(detvv2_reg__0[10]),
        .O(a_num_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__1_i_3
       (.I0(detvv2_reg__0[9]),
        .O(a_num_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__1_i_4
       (.I0(detvv2_reg__0[8]),
        .O(a_num_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 a_num_carry__2
       (.CI(a_num_carry__1_n_0),
        .CO({a_num_carry__2_n_0,NLW_a_num_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(detvv2_reg__0[15:12]),
        .O(a_num[15:12]),
        .S({a_num_carry__2_i_1_n_0,a_num_carry__2_i_2_n_0,a_num_carry__2_i_3_n_0,a_num_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__2_i_1
       (.I0(detvv2_reg__0[15]),
        .O(a_num_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__2_i_2
       (.I0(detvv2_reg__0[14]),
        .O(a_num_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__2_i_3
       (.I0(detvv2_reg__0[13]),
        .O(a_num_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__2_i_4
       (.I0(detvv2_reg__0[12]),
        .O(a_num_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 a_num_carry__3
       (.CI(a_num_carry__2_n_0),
        .CO(NLW_a_num_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_a_num_carry__3_O_UNCONNECTED[3:1],a_num[16]}),
        .S({1'b0,1'b0,1'b0,a_num_carry__3_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry__3_i_1
       (.I0(detvv2_reg__0[16]),
        .O(a_num_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry_i_1
       (.I0(detvv2_reg__0[3]),
        .O(a_num_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry_i_2
       (.I0(detvv2_reg__0[2]),
        .O(a_num_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry_i_3
       (.I0(detvv2_reg__0[1]),
        .O(a_num_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    a_num_carry_i_4
       (.I0(detvv2_reg__0[0]),
        .O(a_num_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[10]_i_1 
       (.I0(a_raw1[10]),
        .I1(a_num[16]),
        .I2(a_num[10]),
        .O(\a_raw[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[11]_i_1 
       (.I0(a_raw1[11]),
        .I1(a_num[16]),
        .I2(a_num[11]),
        .O(\a_raw[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[12]_i_1 
       (.I0(a_raw1[12]),
        .I1(a_num[16]),
        .I2(a_num[12]),
        .O(\a_raw[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[12]_i_3 
       (.I0(a_num[12]),
        .O(\a_raw[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[12]_i_4 
       (.I0(a_num[11]),
        .O(\a_raw[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[12]_i_5 
       (.I0(a_num[10]),
        .O(\a_raw[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[12]_i_6 
       (.I0(a_num[9]),
        .O(\a_raw[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[13]_i_1 
       (.I0(a_raw1[13]),
        .I1(a_num[16]),
        .I2(a_num[13]),
        .O(\a_raw[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[14]_i_1 
       (.I0(a_raw1[14]),
        .I1(a_num[16]),
        .I2(a_num[14]),
        .O(\a_raw[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[15]_i_1 
       (.I0(a_raw1[15]),
        .I1(a_num[16]),
        .I2(a_num[15]),
        .O(\a_raw[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[15]_i_3 
       (.I0(a_num[15]),
        .O(\a_raw[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[15]_i_4 
       (.I0(a_num[14]),
        .O(\a_raw[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[15]_i_5 
       (.I0(a_num[13]),
        .O(\a_raw[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[1]_i_1 
       (.I0(a_raw1[1]),
        .I1(a_num[16]),
        .I2(a_num[1]),
        .O(\a_raw[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[2]_i_1 
       (.I0(a_raw1[2]),
        .I1(a_num[16]),
        .I2(a_num[2]),
        .O(\a_raw[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[3]_i_1 
       (.I0(a_raw1[3]),
        .I1(a_num[16]),
        .I2(a_num[3]),
        .O(\a_raw[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[4]_i_1 
       (.I0(a_raw1[4]),
        .I1(a_num[16]),
        .I2(a_num[4]),
        .O(\a_raw[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[4]_i_3 
       (.I0(a_num__0),
        .O(\a_raw[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[4]_i_4 
       (.I0(a_num[4]),
        .O(\a_raw[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[4]_i_5 
       (.I0(a_num[3]),
        .O(\a_raw[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[4]_i_6 
       (.I0(a_num[2]),
        .O(\a_raw[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[4]_i_7 
       (.I0(a_num[1]),
        .O(\a_raw[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[5]_i_1 
       (.I0(a_raw1[5]),
        .I1(a_num[16]),
        .I2(a_num[5]),
        .O(\a_raw[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[6]_i_1 
       (.I0(a_raw1[6]),
        .I1(a_num[16]),
        .I2(a_num[6]),
        .O(\a_raw[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[7]_i_1 
       (.I0(a_raw1[7]),
        .I1(a_num[16]),
        .I2(a_num[7]),
        .O(\a_raw[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[8]_i_1 
       (.I0(a_raw1[8]),
        .I1(a_num[16]),
        .I2(a_num[8]),
        .O(\a_raw[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[8]_i_3 
       (.I0(a_num[8]),
        .O(\a_raw[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[8]_i_4 
       (.I0(a_num[7]),
        .O(\a_raw[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[8]_i_5 
       (.I0(a_num[6]),
        .O(\a_raw[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \a_raw[8]_i_6 
       (.I0(a_num[5]),
        .O(\a_raw[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \a_raw[9]_i_1 
       (.I0(a_raw1[9]),
        .I1(a_num[16]),
        .I2(a_num[9]),
        .O(\a_raw[9]_i_1_n_0 ));
  FDRE \a_raw_reg[0] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(a_num__0),
        .Q(\a_raw_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \a_raw_reg[10] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[10]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \a_raw_reg[11] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[11]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \a_raw_reg[12] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[12]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \a_raw_reg[12]_i_2 
       (.CI(\a_raw_reg[8]_i_2_n_0 ),
        .CO({\a_raw_reg[12]_i_2_n_0 ,\NLW_a_raw_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(a_raw1[12:9]),
        .S({\a_raw[12]_i_3_n_0 ,\a_raw[12]_i_4_n_0 ,\a_raw[12]_i_5_n_0 ,\a_raw[12]_i_6_n_0 }));
  FDRE \a_raw_reg[13] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[13]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \a_raw_reg[14] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[14]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \a_raw_reg[15] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[15]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \a_raw_reg[15]_i_2 
       (.CI(\a_raw_reg[12]_i_2_n_0 ),
        .CO(\NLW_a_raw_reg[15]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_a_raw_reg[15]_i_2_O_UNCONNECTED [3],a_raw1[15:13]}),
        .S({1'b0,\a_raw[15]_i_3_n_0 ,\a_raw[15]_i_4_n_0 ,\a_raw[15]_i_5_n_0 }));
  FDRE \a_raw_reg[1] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[1]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \a_raw_reg[2] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[2]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \a_raw_reg[3] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[3]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \a_raw_reg[4] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[4]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \a_raw_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\a_raw_reg[4]_i_2_n_0 ,\NLW_a_raw_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\a_raw[4]_i_3_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(a_raw1[4:1]),
        .S({\a_raw[4]_i_4_n_0 ,\a_raw[4]_i_5_n_0 ,\a_raw[4]_i_6_n_0 ,\a_raw[4]_i_7_n_0 }));
  FDRE \a_raw_reg[5] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[5]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \a_raw_reg[6] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[6]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \a_raw_reg[7] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[7]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \a_raw_reg[8] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[8]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \a_raw_reg[8]_i_2 
       (.CI(\a_raw_reg[4]_i_2_n_0 ),
        .CO({\a_raw_reg[8]_i_2_n_0 ,\NLW_a_raw_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(a_raw1[8:5]),
        .S({\a_raw[8]_i_3_n_0 ,\a_raw[8]_i_4_n_0 ,\a_raw[8]_i_5_n_0 ,\a_raw[8]_i_6_n_0 }));
  FDRE \a_raw_reg[9] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\a_raw[9]_i_1_n_0 ),
        .Q(\a_raw_reg_n_0_[9] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b_num_carry
       (.CI(1'b0),
        .CO({b_num_carry_n_0,NLW_b_num_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(detvv1_reg__0[3:0]),
        .O({b_num[3:1],b_num__0}),
        .S({b_num_carry_i_1_n_0,b_num_carry_i_2_n_0,b_num_carry_i_3_n_0,b_num_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b_num_carry__0
       (.CI(b_num_carry_n_0),
        .CO({b_num_carry__0_n_0,NLW_b_num_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(detvv1_reg__0[7:4]),
        .O(b_num[7:4]),
        .S({b_num_carry__0_i_1_n_0,b_num_carry__0_i_2_n_0,b_num_carry__0_i_3_n_0,b_num_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__0_i_1
       (.I0(detvv1_reg__0[7]),
        .O(b_num_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__0_i_2
       (.I0(detvv1_reg__0[6]),
        .O(b_num_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__0_i_3
       (.I0(detvv1_reg__0[5]),
        .O(b_num_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__0_i_4
       (.I0(detvv1_reg__0[4]),
        .O(b_num_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b_num_carry__1
       (.CI(b_num_carry__0_n_0),
        .CO({b_num_carry__1_n_0,NLW_b_num_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(detvv1_reg__0[11:8]),
        .O(b_num[11:8]),
        .S({b_num_carry__1_i_1_n_0,b_num_carry__1_i_2_n_0,b_num_carry__1_i_3_n_0,b_num_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__1_i_1
       (.I0(detvv1_reg__0[11]),
        .O(b_num_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__1_i_2
       (.I0(detvv1_reg__0[10]),
        .O(b_num_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__1_i_3
       (.I0(detvv1_reg__0[9]),
        .O(b_num_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__1_i_4
       (.I0(detvv1_reg__0[8]),
        .O(b_num_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b_num_carry__2
       (.CI(b_num_carry__1_n_0),
        .CO({b_num_carry__2_n_0,NLW_b_num_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(detvv1_reg__0[15:12]),
        .O(b_num[15:12]),
        .S({b_num_carry__2_i_1_n_0,b_num_carry__2_i_2_n_0,b_num_carry__2_i_3_n_0,b_num_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__2_i_1
       (.I0(detvv1_reg__0[15]),
        .O(b_num_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__2_i_2
       (.I0(detvv1_reg__0[14]),
        .O(b_num_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__2_i_3
       (.I0(detvv1_reg__0[13]),
        .O(b_num_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__2_i_4
       (.I0(detvv1_reg__0[12]),
        .O(b_num_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 b_num_carry__3
       (.CI(b_num_carry__2_n_0),
        .CO(NLW_b_num_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_b_num_carry__3_O_UNCONNECTED[3:1],b_num[16]}),
        .S({1'b0,1'b0,1'b0,b_num_carry__3_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry__3_i_1
       (.I0(detvv1_reg__0[16]),
        .O(b_num_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry_i_1
       (.I0(detvv1_reg__0[3]),
        .O(b_num_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry_i_2
       (.I0(detvv1_reg__0[2]),
        .O(b_num_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry_i_3
       (.I0(detvv1_reg__0[1]),
        .O(b_num_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    b_num_carry_i_4
       (.I0(detvv1_reg__0[0]),
        .O(b_num_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[10]_i_1 
       (.I0(b_raw1[10]),
        .I1(b_num[16]),
        .I2(b_num[10]),
        .O(\b_raw[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[11]_i_1 
       (.I0(b_raw1[11]),
        .I1(b_num[16]),
        .I2(b_num[11]),
        .O(\b_raw[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[12]_i_1 
       (.I0(b_raw1[12]),
        .I1(b_num[16]),
        .I2(b_num[12]),
        .O(\b_raw[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[12]_i_3 
       (.I0(b_num[12]),
        .O(\b_raw[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[12]_i_4 
       (.I0(b_num[11]),
        .O(\b_raw[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[12]_i_5 
       (.I0(b_num[10]),
        .O(\b_raw[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[12]_i_6 
       (.I0(b_num[9]),
        .O(\b_raw[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[13]_i_1 
       (.I0(b_raw1[13]),
        .I1(b_num[16]),
        .I2(b_num[13]),
        .O(\b_raw[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[14]_i_1 
       (.I0(b_raw1[14]),
        .I1(b_num[16]),
        .I2(b_num[14]),
        .O(\b_raw[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \b_raw[15]_i_1 
       (.I0(state_0[1]),
        .I1(SR),
        .I2(state_0[0]),
        .O(\b_raw[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[15]_i_2 
       (.I0(b_raw1[15]),
        .I1(b_num[16]),
        .I2(b_num[15]),
        .O(\b_raw[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[15]_i_4 
       (.I0(b_num[15]),
        .O(\b_raw[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[15]_i_5 
       (.I0(b_num[14]),
        .O(\b_raw[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[15]_i_6 
       (.I0(b_num[13]),
        .O(\b_raw[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[1]_i_1 
       (.I0(b_raw1[1]),
        .I1(b_num[16]),
        .I2(b_num[1]),
        .O(\b_raw[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[2]_i_1 
       (.I0(b_raw1[2]),
        .I1(b_num[16]),
        .I2(b_num[2]),
        .O(\b_raw[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[3]_i_1 
       (.I0(b_raw1[3]),
        .I1(b_num[16]),
        .I2(b_num[3]),
        .O(\b_raw[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[4]_i_1 
       (.I0(b_raw1[4]),
        .I1(b_num[16]),
        .I2(b_num[4]),
        .O(\b_raw[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[4]_i_3 
       (.I0(b_num__0),
        .O(\b_raw[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[4]_i_4 
       (.I0(b_num[4]),
        .O(\b_raw[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[4]_i_5 
       (.I0(b_num[3]),
        .O(\b_raw[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[4]_i_6 
       (.I0(b_num[2]),
        .O(\b_raw[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[4]_i_7 
       (.I0(b_num[1]),
        .O(\b_raw[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[5]_i_1 
       (.I0(b_raw1[5]),
        .I1(b_num[16]),
        .I2(b_num[5]),
        .O(\b_raw[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[6]_i_1 
       (.I0(b_raw1[6]),
        .I1(b_num[16]),
        .I2(b_num[6]),
        .O(\b_raw[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[7]_i_1 
       (.I0(b_raw1[7]),
        .I1(b_num[16]),
        .I2(b_num[7]),
        .O(\b_raw[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[8]_i_1 
       (.I0(b_raw1[8]),
        .I1(b_num[16]),
        .I2(b_num[8]),
        .O(\b_raw[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[8]_i_3 
       (.I0(b_num[8]),
        .O(\b_raw[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[8]_i_4 
       (.I0(b_num[7]),
        .O(\b_raw[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[8]_i_5 
       (.I0(b_num[6]),
        .O(\b_raw[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \b_raw[8]_i_6 
       (.I0(b_num[5]),
        .O(\b_raw[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_raw[9]_i_1 
       (.I0(b_raw1[9]),
        .I1(b_num[16]),
        .I2(b_num[9]),
        .O(\b_raw[9]_i_1_n_0 ));
  FDRE \b_raw_reg[0] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(b_num__0),
        .Q(b_raw[0]),
        .R(1'b0));
  FDRE \b_raw_reg[10] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[10]_i_1_n_0 ),
        .Q(b_raw[10]),
        .R(1'b0));
  FDRE \b_raw_reg[11] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[11]_i_1_n_0 ),
        .Q(b_raw[11]),
        .R(1'b0));
  FDRE \b_raw_reg[12] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[12]_i_1_n_0 ),
        .Q(b_raw[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \b_raw_reg[12]_i_2 
       (.CI(\b_raw_reg[8]_i_2_n_0 ),
        .CO({\b_raw_reg[12]_i_2_n_0 ,\NLW_b_raw_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(b_raw1[12:9]),
        .S({\b_raw[12]_i_3_n_0 ,\b_raw[12]_i_4_n_0 ,\b_raw[12]_i_5_n_0 ,\b_raw[12]_i_6_n_0 }));
  FDRE \b_raw_reg[13] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[13]_i_1_n_0 ),
        .Q(b_raw[13]),
        .R(1'b0));
  FDRE \b_raw_reg[14] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[14]_i_1_n_0 ),
        .Q(b_raw[14]),
        .R(1'b0));
  FDRE \b_raw_reg[15] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[15]_i_2_n_0 ),
        .Q(b_raw[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \b_raw_reg[15]_i_3 
       (.CI(\b_raw_reg[12]_i_2_n_0 ),
        .CO(\NLW_b_raw_reg[15]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_b_raw_reg[15]_i_3_O_UNCONNECTED [3],b_raw1[15:13]}),
        .S({1'b0,\b_raw[15]_i_4_n_0 ,\b_raw[15]_i_5_n_0 ,\b_raw[15]_i_6_n_0 }));
  FDRE \b_raw_reg[1] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[1]_i_1_n_0 ),
        .Q(b_raw[1]),
        .R(1'b0));
  FDRE \b_raw_reg[2] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[2]_i_1_n_0 ),
        .Q(b_raw[2]),
        .R(1'b0));
  FDRE \b_raw_reg[3] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[3]_i_1_n_0 ),
        .Q(b_raw[3]),
        .R(1'b0));
  FDRE \b_raw_reg[4] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[4]_i_1_n_0 ),
        .Q(b_raw[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \b_raw_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\b_raw_reg[4]_i_2_n_0 ,\NLW_b_raw_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\b_raw[4]_i_3_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(b_raw1[4:1]),
        .S({\b_raw[4]_i_4_n_0 ,\b_raw[4]_i_5_n_0 ,\b_raw[4]_i_6_n_0 ,\b_raw[4]_i_7_n_0 }));
  FDRE \b_raw_reg[5] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[5]_i_1_n_0 ),
        .Q(b_raw[5]),
        .R(1'b0));
  FDRE \b_raw_reg[6] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[6]_i_1_n_0 ),
        .Q(b_raw[6]),
        .R(1'b0));
  FDRE \b_raw_reg[7] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[7]_i_1_n_0 ),
        .Q(b_raw[7]),
        .R(1'b0));
  FDRE \b_raw_reg[8] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[8]_i_1_n_0 ),
        .Q(b_raw[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \b_raw_reg[8]_i_2 
       (.CI(\b_raw_reg[4]_i_2_n_0 ),
        .CO({\b_raw_reg[8]_i_2_n_0 ,\NLW_b_raw_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(b_raw1[8:5]),
        .S({\b_raw[8]_i_3_n_0 ,\b_raw[8]_i_4_n_0 ,\b_raw[8]_i_5_n_0 ,\b_raw[8]_i_6_n_0 }));
  FDRE \b_raw_reg[9] 
       (.C(clk_pixel),
        .CE(\b_raw[15]_i_1_n_0 ),
        .D(\b_raw[9]_i_1_n_0 ),
        .Q(b_raw[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    detvv11
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,detvv11_i_2_n_0,detvv11_i_3_n_0,detvv11_i_4_n_0,detvv11_i_5_n_0,detvv11_i_6_n_0,detvv11_i_7_n_0,detvv11_i_8_n_0,detvv11_i_9_n_0,detvv11_i_10_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_detvv11_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_detvv11_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_detvv11_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_detvv11_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(x_iter0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_pixel),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_detvv11_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_detvv11_OVERFLOW_UNCONNECTED),
        .P({NLW_detvv11_P_UNCONNECTED[47:17],detvv11_n_89,detvv11_n_90,detvv11_n_91,detvv11_n_92,detvv11_n_93,detvv11_n_94,detvv11_n_95,detvv11_n_96,detvv11_n_97,detvv11_n_98,detvv11_n_99,detvv11_n_100,detvv11_n_101,detvv11_n_102,detvv11_n_103,detvv11_n_104,detvv11_n_105}),
        .PATTERNBDETECT(NLW_detvv11_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_detvv11_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_detvv11_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_detvv11_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    detvv11_i_1
       (.I0(SR),
        .I1(state[1]),
        .O(x_iter0));
  LUT4 #(
    .INIT(16'h0455)) 
    detvv11_i_10
       (.I0(SR),
        .I1(CO),
        .I2(x_iter[0]),
        .I3(state[0]),
        .O(detvv11_i_10_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    detvv11_i_11
       (.I0(\x_iter_reg[4] ),
        .I1(x_iter[6]),
        .O(detvv11_i_11_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    detvv11_i_12
       (.I0(x_iter[4]),
        .I1(x_iter[2]),
        .I2(x_iter[1]),
        .I3(x_iter[0]),
        .I4(x_iter[3]),
        .I5(x_iter[5]),
        .O(\x_iter_reg[4] ));
  LUT5 #(
    .INIT(32'h80000000)) 
    detvv11_i_13
       (.I0(x_iter[3]),
        .I1(x_iter[0]),
        .I2(x_iter[1]),
        .I3(x_iter[2]),
        .I4(x_iter[4]),
        .O(\x_iter_reg[3] ));
  LUT4 #(
    .INIT(16'h8000)) 
    detvv11_i_14
       (.I0(x_iter[2]),
        .I1(x_iter[1]),
        .I2(x_iter[0]),
        .I3(x_iter[3]),
        .O(\x_iter_reg[2] ));
  LUT3 #(
    .INIT(8'h80)) 
    detvv11_i_15
       (.I0(x_iter[0]),
        .I1(x_iter[1]),
        .I2(x_iter[2]),
        .O(detvv11_i_15_n_0));
  LUT6 #(
    .INIT(64'h0444400055555555)) 
    detvv11_i_2
       (.I0(SR),
        .I1(CO),
        .I2(detvv11_i_11_n_0),
        .I3(x_iter[7]),
        .I4(x_iter[8]),
        .I5(state[0]),
        .O(detvv11_i_2_n_0));
  LUT6 #(
    .INIT(64'h0444400055555555)) 
    detvv11_i_3
       (.I0(SR),
        .I1(CO),
        .I2(\x_iter_reg[4] ),
        .I3(x_iter[6]),
        .I4(x_iter[7]),
        .I5(state[0]),
        .O(detvv11_i_3_n_0));
  LUT5 #(
    .INIT(32'h04405555)) 
    detvv11_i_4
       (.I0(SR),
        .I1(CO),
        .I2(\x_iter_reg[4] ),
        .I3(x_iter[6]),
        .I4(state[0]),
        .O(detvv11_i_4_n_0));
  LUT5 #(
    .INIT(32'h04405555)) 
    detvv11_i_5
       (.I0(SR),
        .I1(CO),
        .I2(\x_iter_reg[3] ),
        .I3(x_iter[5]),
        .I4(state[0]),
        .O(detvv11_i_5_n_0));
  LUT5 #(
    .INIT(32'h04405555)) 
    detvv11_i_6
       (.I0(SR),
        .I1(CO),
        .I2(\x_iter_reg[2] ),
        .I3(x_iter[4]),
        .I4(state[0]),
        .O(detvv11_i_6_n_0));
  LUT5 #(
    .INIT(32'h04405555)) 
    detvv11_i_7
       (.I0(SR),
        .I1(CO),
        .I2(detvv11_i_15_n_0),
        .I3(x_iter[3]),
        .I4(state[0]),
        .O(detvv11_i_7_n_0));
  LUT6 #(
    .INIT(64'h0444400055555555)) 
    detvv11_i_8
       (.I0(SR),
        .I1(CO),
        .I2(x_iter[1]),
        .I3(x_iter[0]),
        .I4(x_iter[2]),
        .I5(state[0]),
        .O(detvv11_i_8_n_0));
  LUT5 #(
    .INIT(32'h04405555)) 
    detvv11_i_9
       (.I0(SR),
        .I1(CO),
        .I2(x_iter[0]),
        .I3(x_iter[1]),
        .I4(state[0]),
        .O(detvv11_i_9_n_0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    detvv1_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A_0,detvv1_reg_i_11_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_detvv1_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b1,1'b1}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_detvv1_reg_BCOUT_UNCONNECTED[17:0]),
        .C({detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_89,detvv11_n_90,detvv11_n_91,detvv11_n_92,detvv11_n_93,detvv11_n_94,detvv11_n_95,detvv11_n_96,detvv11_n_97,detvv11_n_98,detvv11_n_99,detvv11_n_100,detvv11_n_101,detvv11_n_102,detvv11_n_103,detvv11_n_104,detvv11_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_detvv1_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_detvv1_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(detv1v2),
        .CLK(clk_pixel),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_detvv1_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_detvv1_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_detvv1_reg_P_UNCONNECTED[47:17],detvv1_reg__0}),
        .PATTERNBDETECT(NLW_detvv1_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_detvv1_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_detvv1_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_detvv1_reg_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'hBFAA)) 
    detvv1_reg_i_1
       (.I0(SR),
        .I1(state[0]),
        .I2(CO),
        .I3(state[1]),
        .O(CEA2));
  LUT2 #(
    .INIT(4'h2)) 
    detvv1_reg_i_10
       (.I0(y_iter[0]),
        .I1(SR),
        .O(A_0[1]));
  LUT3 #(
    .INIT(8'h15)) 
    detvv1_reg_i_11
       (.I0(SR),
        .I1(detvv1_reg_0),
        .I2(state[0]),
        .O(detvv1_reg_i_11_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    detvv1_reg_i_2
       (.I0(state_0[1]),
        .I1(SR),
        .I2(in_tri_v_in),
        .I3(state_0[0]),
        .O(detv1v2));
  LUT2 #(
    .INIT(4'h2)) 
    detvv1_reg_i_3
       (.I0(y_iter[7]),
        .I1(SR),
        .O(A_0[8]));
  LUT2 #(
    .INIT(4'h2)) 
    detvv1_reg_i_4
       (.I0(y_iter[6]),
        .I1(SR),
        .O(A_0[7]));
  LUT2 #(
    .INIT(4'h2)) 
    detvv1_reg_i_5
       (.I0(y_iter[5]),
        .I1(SR),
        .O(A_0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    detvv1_reg_i_6
       (.I0(y_iter[4]),
        .I1(SR),
        .O(A_0[5]));
  LUT2 #(
    .INIT(4'h2)) 
    detvv1_reg_i_7
       (.I0(y_iter[3]),
        .I1(SR),
        .O(A_0[4]));
  LUT2 #(
    .INIT(4'h2)) 
    detvv1_reg_i_8
       (.I0(y_iter[2]),
        .I1(SR),
        .O(A_0[3]));
  LUT2 #(
    .INIT(4'h2)) 
    detvv1_reg_i_9
       (.I0(y_iter[1]),
        .I1(SR),
        .O(A_0[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    detvv21
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,detvv11_i_2_n_0,detvv11_i_3_n_0,detvv11_i_4_n_0,detvv11_i_5_n_0,detvv11_i_6_n_0,detvv11_i_7_n_0,detvv11_i_8_n_0,detvv11_i_9_n_0,detvv11_i_10_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_detvv21_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_detvv21_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_detvv21_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_detvv21_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(x_iter0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_pixel),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_detvv21_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_detvv21_OVERFLOW_UNCONNECTED),
        .P({NLW_detvv21_P_UNCONNECTED[47:17],detvv21_n_89,detvv21_n_90,detvv21_n_91,detvv21_n_92,detvv21_n_93,detvv21_n_94,detvv21_n_95,detvv21_n_96,detvv21_n_97,detvv21_n_98,detvv21_n_99,detvv21_n_100,detvv21_n_101,detvv21_n_102,detvv21_n_103,detvv21_n_104,detvv21_n_105}),
        .PATTERNBDETECT(NLW_detvv21_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_detvv21_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_detvv21_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_detvv21_UNDERFLOW_UNCONNECTED));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    detvv2_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A_0,detvv1_reg_i_11_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_detvv2_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b1,1'b1}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_detvv2_reg_BCOUT_UNCONNECTED[17:0]),
        .C({detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_89,detvv21_n_90,detvv21_n_91,detvv21_n_92,detvv21_n_93,detvv21_n_94,detvv21_n_95,detvv21_n_96,detvv21_n_97,detvv21_n_98,detvv21_n_99,detvv21_n_100,detvv21_n_101,detvv21_n_102,detvv21_n_103,detvv21_n_104,detvv21_n_105}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_detvv2_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_detvv2_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(detv1v2),
        .CLK(clk_pixel),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_detvv2_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_detvv2_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_detvv2_reg_P_UNCONNECTED[47:17],detvv2_reg__0}),
        .PATTERNBDETECT(NLW_detvv2_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_detvv2_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_detvv2_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_detvv2_reg_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1
       (.I0(\a_raw_reg_n_0_[15] ),
        .I1(\a_raw_reg_n_0_[14] ),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(\a_raw_reg_n_0_[13] ),
        .I1(\a_raw_reg_n_0_[12] ),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_3
       (.I0(\a_raw_reg_n_0_[11] ),
        .I1(\a_raw_reg_n_0_[10] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1
       (.I0(\a_raw_reg_n_0_[1] ),
        .I1(\a_raw_reg_n_0_[0] ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2
       (.I0(\a_raw_reg_n_0_[9] ),
        .I1(\a_raw_reg_n_0_[8] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3
       (.I0(\a_raw_reg_n_0_[7] ),
        .I1(\a_raw_reg_n_0_[6] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4
       (.I0(\a_raw_reg_n_0_[5] ),
        .I1(\a_raw_reg_n_0_[4] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(\a_raw_reg_n_0_[3] ),
        .I1(\a_raw_reg_n_0_[2] ),
        .O(i__carry_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in_tri1_carry
       (.CI(1'b0),
        .CO({in_tri1_carry_n_0,NLW_in_tri1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(in_tri1_carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_in_tri1_carry_O_UNCONNECTED[3:0]),
        .S({in_tri1_carry_i_2_n_0,in_tri1_carry_i_3_n_0,in_tri1_carry_i_4_n_0,in_tri1_carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in_tri1_carry__0
       (.CI(in_tri1_carry_n_0),
        .CO({NLW_in_tri1_carry__0_CO_UNCONNECTED[3],in_tri1,NLW_in_tri1_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_in_tri1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,in_tri1_carry__0_i_1_n_0,in_tri1_carry__0_i_2_n_0,in_tri1_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri1_carry__0_i_1
       (.I0(in_tri2[15]),
        .I1(in_tri2[14]),
        .O(in_tri1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri1_carry__0_i_2
       (.I0(in_tri2[13]),
        .I1(in_tri2[12]),
        .O(in_tri1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri1_carry__0_i_3
       (.I0(in_tri2[11]),
        .I1(in_tri2[10]),
        .O(in_tri1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri1_carry_i_1
       (.I0(in_tri2[1]),
        .I1(in_tri2[0]),
        .O(in_tri1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri1_carry_i_2
       (.I0(in_tri2[9]),
        .I1(in_tri2[8]),
        .O(in_tri1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri1_carry_i_3
       (.I0(in_tri2[7]),
        .I1(in_tri2[6]),
        .O(in_tri1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri1_carry_i_4
       (.I0(in_tri2[5]),
        .I1(in_tri2[4]),
        .O(in_tri1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri1_carry_i_5
       (.I0(in_tri2[3]),
        .I1(in_tri2[2]),
        .O(in_tri1_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 in_tri2_carry
       (.CI(1'b0),
        .CO({in_tri2_carry_n_0,NLW_in_tri2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a_raw_reg_n_0_[3] ,\a_raw_reg_n_0_[2] ,\a_raw_reg_n_0_[1] ,\a_raw_reg_n_0_[0] }),
        .O(in_tri2[3:0]),
        .S({in_tri2_carry_i_1_n_0,in_tri2_carry_i_2_n_0,in_tri2_carry_i_3_n_0,in_tri2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 in_tri2_carry__0
       (.CI(in_tri2_carry_n_0),
        .CO({in_tri2_carry__0_n_0,NLW_in_tri2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a_raw_reg_n_0_[7] ,\a_raw_reg_n_0_[6] ,\a_raw_reg_n_0_[5] ,\a_raw_reg_n_0_[4] }),
        .O(in_tri2[7:4]),
        .S({in_tri2_carry__0_i_1_n_0,in_tri2_carry__0_i_2_n_0,in_tri2_carry__0_i_3_n_0,in_tri2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__0_i_1
       (.I0(\a_raw_reg_n_0_[7] ),
        .I1(b_raw[7]),
        .O(in_tri2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__0_i_2
       (.I0(\a_raw_reg_n_0_[6] ),
        .I1(b_raw[6]),
        .O(in_tri2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__0_i_3
       (.I0(\a_raw_reg_n_0_[5] ),
        .I1(b_raw[5]),
        .O(in_tri2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__0_i_4
       (.I0(\a_raw_reg_n_0_[4] ),
        .I1(b_raw[4]),
        .O(in_tri2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 in_tri2_carry__1
       (.CI(in_tri2_carry__0_n_0),
        .CO({in_tri2_carry__1_n_0,NLW_in_tri2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\a_raw_reg_n_0_[11] ,\a_raw_reg_n_0_[10] ,\a_raw_reg_n_0_[9] ,\a_raw_reg_n_0_[8] }),
        .O(in_tri2[11:8]),
        .S({in_tri2_carry__1_i_1_n_0,in_tri2_carry__1_i_2_n_0,in_tri2_carry__1_i_3_n_0,in_tri2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__1_i_1
       (.I0(\a_raw_reg_n_0_[11] ),
        .I1(b_raw[11]),
        .O(in_tri2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__1_i_2
       (.I0(\a_raw_reg_n_0_[10] ),
        .I1(b_raw[10]),
        .O(in_tri2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__1_i_3
       (.I0(\a_raw_reg_n_0_[9] ),
        .I1(b_raw[9]),
        .O(in_tri2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__1_i_4
       (.I0(\a_raw_reg_n_0_[8] ),
        .I1(b_raw[8]),
        .O(in_tri2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 in_tri2_carry__2
       (.CI(in_tri2_carry__1_n_0),
        .CO(NLW_in_tri2_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\a_raw_reg_n_0_[14] ,\a_raw_reg_n_0_[13] ,\a_raw_reg_n_0_[12] }),
        .O(in_tri2[15:12]),
        .S({in_tri2_carry__2_i_1_n_0,in_tri2_carry__2_i_2_n_0,in_tri2_carry__2_i_3_n_0,in_tri2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__2_i_1
       (.I0(b_raw[15]),
        .I1(\a_raw_reg_n_0_[15] ),
        .O(in_tri2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__2_i_2
       (.I0(\a_raw_reg_n_0_[14] ),
        .I1(b_raw[14]),
        .O(in_tri2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__2_i_3
       (.I0(\a_raw_reg_n_0_[13] ),
        .I1(b_raw[13]),
        .O(in_tri2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry__2_i_4
       (.I0(\a_raw_reg_n_0_[12] ),
        .I1(b_raw[12]),
        .O(in_tri2_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry_i_1
       (.I0(\a_raw_reg_n_0_[3] ),
        .I1(b_raw[3]),
        .O(in_tri2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry_i_2
       (.I0(\a_raw_reg_n_0_[2] ),
        .I1(b_raw[2]),
        .O(in_tri2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry_i_3
       (.I0(\a_raw_reg_n_0_[1] ),
        .I1(b_raw[1]),
        .O(in_tri2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    in_tri2_carry_i_4
       (.I0(\a_raw_reg_n_0_[0] ),
        .I1(b_raw[0]),
        .O(in_tri2_carry_i_4_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in_tri4_carry
       (.CI(1'b0),
        .CO({in_tri4_carry_n_0,NLW_in_tri4_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(in_tri4_carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_in_tri4_carry_O_UNCONNECTED[3:0]),
        .S({in_tri4_carry_i_2_n_0,in_tri4_carry_i_3_n_0,in_tri4_carry_i_4_n_0,in_tri4_carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 in_tri4_carry__0
       (.CI(in_tri4_carry_n_0),
        .CO({NLW_in_tri4_carry__0_CO_UNCONNECTED[3],in_tri4,NLW_in_tri4_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_in_tri4_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,in_tri4_carry__0_i_1_n_0,in_tri4_carry__0_i_2_n_0,in_tri4_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri4_carry__0_i_1
       (.I0(b_raw[15]),
        .I1(b_raw[14]),
        .O(in_tri4_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri4_carry__0_i_2
       (.I0(b_raw[13]),
        .I1(b_raw[12]),
        .O(in_tri4_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri4_carry__0_i_3
       (.I0(b_raw[11]),
        .I1(b_raw[10]),
        .O(in_tri4_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri4_carry_i_1
       (.I0(b_raw[1]),
        .I1(b_raw[0]),
        .O(in_tri4_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri4_carry_i_2
       (.I0(b_raw[9]),
        .I1(b_raw[8]),
        .O(in_tri4_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri4_carry_i_3
       (.I0(b_raw[7]),
        .I1(b_raw[6]),
        .O(in_tri4_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri4_carry_i_4
       (.I0(b_raw[5]),
        .I1(b_raw[4]),
        .O(in_tri4_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    in_tri4_carry_i_5
       (.I0(b_raw[3]),
        .I1(b_raw[2]),
        .O(in_tri4_carry_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \in_tri4_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\in_tri4_inferred__0/i__carry_n_0 ,\NLW_in_tri4_inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(i__carry_i_1_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_in_tri4_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \in_tri4_inferred__0/i__carry__0 
       (.CI(\in_tri4_inferred__0/i__carry_n_0 ),
        .CO({\NLW_in_tri4_inferred__0/i__carry__0_CO_UNCONNECTED [3],in_tri41_in,\NLW_in_tri4_inferred__0/i__carry__0_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_in_tri4_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}));
  LUT6 #(
    .INIT(64'hFFFF00AE000000AE)) 
    in_tri_i_1
       (.I0(in_tri_i_2_n_0),
        .I1(in_tri41_in),
        .I2(a_num[16]),
        .I3(in_tri_i_3_n_0),
        .I4(state_0[0]),
        .I5(in_tri_out),
        .O(in_tri_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    in_tri_i_10
       (.I0(b_raw[12]),
        .I1(b_raw[13]),
        .I2(b_raw[4]),
        .I3(b_raw[5]),
        .O(in_tri_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    in_tri_i_2
       (.I0(in_tri_i_4_n_0),
        .I1(\a_raw_reg_n_0_[10] ),
        .I2(\a_raw_reg_n_0_[11] ),
        .I3(\a_raw_reg_n_0_[2] ),
        .I4(\a_raw_reg_n_0_[3] ),
        .I5(in_tri_i_5_n_0),
        .O(in_tri_i_2_n_0));
  LUT6 #(
    .INIT(64'h0DDDFFFFFFFFFFFF)) 
    in_tri_i_3
       (.I0(in_tri_i_6_n_0),
        .I1(in_tri_i_7_n_0),
        .I2(in_tri4),
        .I3(b_num[16]),
        .I4(in_tri1),
        .I5(state_0[1]),
        .O(in_tri_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    in_tri_i_4
       (.I0(\a_raw_reg_n_0_[0] ),
        .I1(\a_raw_reg_n_0_[1] ),
        .I2(\a_raw_reg_n_0_[8] ),
        .I3(\a_raw_reg_n_0_[9] ),
        .O(in_tri_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    in_tri_i_5
       (.I0(\a_raw_reg_n_0_[15] ),
        .I1(\a_raw_reg_n_0_[14] ),
        .I2(\a_raw_reg_n_0_[7] ),
        .I3(\a_raw_reg_n_0_[6] ),
        .I4(in_tri_i_8_n_0),
        .O(in_tri_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    in_tri_i_6
       (.I0(b_raw[3]),
        .I1(b_raw[2]),
        .I2(b_raw[11]),
        .I3(b_raw[10]),
        .I4(in_tri_i_9_n_0),
        .O(in_tri_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    in_tri_i_7
       (.I0(b_raw[15]),
        .I1(b_raw[14]),
        .I2(b_raw[7]),
        .I3(b_raw[6]),
        .I4(in_tri_i_10_n_0),
        .O(in_tri_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    in_tri_i_8
       (.I0(\a_raw_reg_n_0_[12] ),
        .I1(\a_raw_reg_n_0_[13] ),
        .I2(\a_raw_reg_n_0_[4] ),
        .I3(\a_raw_reg_n_0_[5] ),
        .O(in_tri_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    in_tri_i_9
       (.I0(b_raw[0]),
        .I1(b_raw[1]),
        .I2(b_raw[8]),
        .I3(b_raw[9]),
        .O(in_tri_i_9_n_0));
  FDRE in_tri_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(in_tri_i_1_n_0),
        .Q(in_tri_out),
        .R(SR));
  (* \PinAttr:I3:HOLD_DETOUR  = "184" *) 
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hEF88)) 
    in_tri_v_in_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(in_tri_v_out),
        .I3(in_tri_v_in),
        .O(\state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hC9C8)) 
    \state[0]_i_1 
       (.I0(SR),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .I3(in_tri_v_in),
        .O(\state[0]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \state[0]_i_1__0 
       (.I0(state[1]),
        .I1(in_tri_v_out),
        .I2(state[0]),
        .O(\state_reg[1]_inv ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE4)) 
    \state[1]_i_1 
       (.I0(SR),
        .I1(state_0[0]),
        .I2(state_0[1]),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h33DC)) 
    \state[1]_inv_i_1 
       (.I0(\state_reg[1]_inv_0 ),
        .I1(state[0]),
        .I2(in_tri_v_out),
        .I3(state[1]),
        .O(\state_reg[0]_1 ));
  FDRE \state_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state_0[0]),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state_0[1]),
        .R(1'b0));
  (* \PinAttr:I2:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    valid_out_i_1
       (.I0(state_0[1]),
        .I1(state_0[0]),
        .I2(in_tri_v_out),
        .O(valid_out_i_1_n_0));
  FDRE valid_out_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(valid_out_i_1_n_0),
        .Q(in_tri_v_out),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF333300002000)) 
    wea0_i_1
       (.I0(wea1_reg),
        .I1(state[1]),
        .I2(in_tri_v_out),
        .I3(in_tri_out),
        .I4(state[0]),
        .I5(wea0_reg),
        .O(buf_sel_reg));
  LUT6 #(
    .INIT(64'hFFFF333300001000)) 
    wea1_i_1
       (.I0(wea1_reg),
        .I1(state[1]),
        .I2(in_tri_v_out),
        .I3(in_tri_out),
        .I4(state[0]),
        .I5(wea1_reg_0),
        .O(buf_sel_reg_0));
  LUT2 #(
    .INIT(4'h1)) 
    x_iter1_carry_i_1
       (.I0(x_iter[1]),
        .I1(x_iter[0]),
        .O(\x_iter_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    x_iter1_carry_i_2
       (.I0(x_iter[8]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h1)) 
    x_iter1_carry_i_3
       (.I0(x_iter[7]),
        .I1(x_iter[6]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h1)) 
    x_iter1_carry_i_4
       (.I0(x_iter[5]),
        .I1(x_iter[4]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    x_iter1_carry_i_5
       (.I0(x_iter[3]),
        .I1(x_iter[2]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    y_iter0_carry__0_i_1
       (.I0(state[0]),
        .I1(\y_iter_reg[8] ),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h8)) 
    y_iter0_carry__0_i_2
       (.I0(state[0]),
        .I1(\y_iter_reg[8]_0 ),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    y_iter0_carry__0_i_3
       (.I0(state[0]),
        .I1(\y_iter_reg[8]_1 ),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h9F)) 
    y_iter0_carry__0_i_4
       (.I0(\y_iter_reg[8]_2 ),
        .I1(\y_iter_reg[8]_3 ),
        .I2(state[0]),
        .O(\y_iter_reg[7] [3]));
  LUT3 #(
    .INIT(8'h9F)) 
    y_iter0_carry__0_i_5
       (.I0(\y_iter_reg[8] ),
        .I1(\y_iter_reg[8]_2 ),
        .I2(state[0]),
        .O(\y_iter_reg[7] [2]));
  LUT3 #(
    .INIT(8'h9F)) 
    y_iter0_carry__0_i_6
       (.I0(\y_iter_reg[8]_0 ),
        .I1(\y_iter_reg[8] ),
        .I2(state[0]),
        .O(\y_iter_reg[7] [1]));
  LUT3 #(
    .INIT(8'h9F)) 
    y_iter0_carry__0_i_7
       (.I0(\y_iter_reg[8]_1 ),
        .I1(\y_iter_reg[8]_0 ),
        .I2(state[0]),
        .O(\y_iter_reg[7] [0]));
endmodule

module rasterizer
   (buf_sel,
    D,
    \output_register.doutb_reg_reg[14] ,
    \tally_reg[4] ,
    \tally_reg[4]_0 ,
    \tally_reg[4]_1 ,
    \tally_reg[4]_2 ,
    \output_register.doutb_reg_reg[15] ,
    \output_register.doutb_reg_reg[15]_0 ,
    \output_register.doutb_reg_reg[15]_1 ,
    clk_pixel,
    A,
    SR,
    buf_sel_reg_0,
    \tmds_out_reg[2] ,
    \tmds_out_reg[2]_0 ,
    \tmds_out_reg[2]_1 ,
    \tally_reg[1] ,
    \tally_reg[3] ,
    \tally_reg[3]_0 ,
    Q,
    \tally_reg[1]_0 ,
    led_OBUF,
    \hcount_in_pipe_reg[0][10]_0 );
  output buf_sel;
  output [7:0]D;
  output \output_register.doutb_reg_reg[14] ;
  output \tally_reg[4] ;
  output [8:0]\tally_reg[4]_0 ;
  output [3:0]\tally_reg[4]_1 ;
  output [3:0]\tally_reg[4]_2 ;
  output \output_register.doutb_reg_reg[15] ;
  output \output_register.doutb_reg_reg[15]_0 ;
  output \output_register.doutb_reg_reg[15]_1 ;
  input clk_pixel;
  input [9:0]A;
  input [0:0]SR;
  input buf_sel_reg_0;
  input \tmds_out_reg[2] ;
  input \tmds_out_reg[2]_0 ;
  input \tmds_out_reg[2]_1 ;
  input \tally_reg[1] ;
  input \tally_reg[3] ;
  input \tally_reg[3]_0 ;
  input [3:0]Q;
  input [3:0]\tally_reg[1]_0 ;
  input [0:0]led_OBUF;
  input [10:0]\hcount_in_pipe_reg[0][10]_0 ;

  wire [9:0]A;
  wire BRAM_mux_sel_b_pos_0__8_i_10_n_0;
  wire BRAM_mux_sel_b_pos_0__8_i_11_n_0;
  wire BRAM_mux_sel_b_pos_0__8_i_6_n_0;
  wire BRAM_mux_sel_b_pos_0__8_i_8_n_0;
  wire BRAM_mux_sel_b_pos_0__8_i_9_n_0;
  wire BRAM_reg_0_9_i_23_n_0;
  wire BRAM_reg_0_9_i_24_n_0;
  wire BRAM_reg_0_9_i_25_n_0;
  wire BRAM_reg_0_9_i_26_n_0;
  wire BRAM_reg_0_9_i_27_n_0;
  wire BRAM_reg_0_9_i_28_n_0;
  wire BRAM_reg_0_9_i_30_n_0;
  wire BRAM_reg_0_9_i_31_n_0;
  wire BRAM_reg_0_9_i_32_n_0;
  wire BRAM_reg_0_9_i_33_n_0;
  wire BRAM_reg_0_9_i_35_n_0;
  wire BRAM_reg_0_9_i_36_n_0;
  wire BRAM_reg_0_9_i_37_n_0;
  wire BRAM_reg_0_9_i_38_n_0;
  wire BRAM_reg_0_9_i_39_n_0;
  wire BRAM_reg_0_9_i_40_n_0;
  wire BRAM_reg_0_9_i_41_n_0;
  wire BRAM_reg_0_9_i_42_n_0;
  wire BRAM_reg_0_9_i_44_n_0;
  wire BRAM_reg_0_9_i_45_n_0;
  wire BRAM_reg_0_9_i_46_n_0;
  wire BRAM_reg_0_9_i_47_n_0;
  wire BRAM_reg_0_9_i_48_n_0;
  wire BRAM_reg_0_9_i_49_n_0;
  wire CEA2;
  wire [7:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire buf_sel;
  wire buf_sel_reg_0;
  wire clk_pixel;
  wire [10:0]\hcount_in_pipe_reg[0][10]_0 ;
  wire [10:0]\hcount_in_pipe_reg[0]_1 ;
  wire in_tri_v_in;
  wire intri_n_1;
  wire intri_n_10;
  wire intri_n_11;
  wire intri_n_12;
  wire intri_n_13;
  wire intri_n_14;
  wire intri_n_15;
  wire intri_n_16;
  wire intri_n_17;
  wire intri_n_18;
  wire intri_n_19;
  wire intri_n_2;
  wire intri_n_20;
  wire intri_n_3;
  wire intri_n_4;
  wire intri_n_5;
  wire intri_n_6;
  wire intri_n_7;
  wire intri_n_8;
  wire intri_n_9;
  wire [0:0]led_OBUF;
  wire \output_register.doutb_reg_reg[14] ;
  wire \output_register.doutb_reg_reg[15] ;
  wire \output_register.doutb_reg_reg[15]_0 ;
  wire \output_register.doutb_reg_reg[15]_1 ;
  wire p_0_in;
  wire pwropt;
  wire pwropt_1;
  wire [16:3]read_addr10__0;
  wire read_addr10_n_100;
  wire read_addr10_n_101;
  wire read_addr10_n_102;
  wire read_addr10_n_103;
  wire read_addr10_n_104;
  wire read_addr10_n_105;
  wire read_addr10_n_89;
  wire read_addr10_n_90;
  wire read_addr10_n_91;
  wire read_addr10_n_92;
  wire read_addr10_n_93;
  wire read_addr10_n_94;
  wire read_addr10_n_95;
  wire read_addr10_n_96;
  wire read_addr10_n_97;
  wire read_addr10_n_98;
  wire read_addr10_n_99;
  wire [8:5]read_addr11;
  wire [1:0]state;
  wire state1;
  wire state1_carry__0_i_1_n_0;
  wire state1_carry_i_1_n_0;
  wire state1_carry_i_2_n_0;
  wire state1_carry_i_3_n_0;
  wire state1_carry_i_4_n_0;
  wire state1_carry_i_5_n_0;
  wire state1_carry_i_6_n_0;
  wire state1_carry_i_7_n_0;
  wire state1_carry_i_8_n_0;
  wire state1_carry_n_0;
  wire \tally_reg[1] ;
  wire [3:0]\tally_reg[1]_0 ;
  wire \tally_reg[3] ;
  wire \tally_reg[3]_0 ;
  wire \tally_reg[4] ;
  wire [8:0]\tally_reg[4]_0 ;
  wire [3:0]\tally_reg[4]_1 ;
  wire [3:0]\tally_reg[4]_2 ;
  wire \tmds_out_reg[2] ;
  wire \tmds_out_reg[2]_0 ;
  wire \tmds_out_reg[2]_1 ;
  wire wea0_reg_n_0;
  wire wea1_reg_n_0;
  wire [8:0]x_iter;
  wire \x_iter[0]_i_1_n_0 ;
  wire \x_iter[1]_i_1_n_0 ;
  wire \x_iter[2]_i_1_n_0 ;
  wire \x_iter[3]_i_1_n_0 ;
  wire \x_iter[4]_i_1_n_0 ;
  wire \x_iter[5]_i_1_n_0 ;
  wire \x_iter[6]_i_1_n_0 ;
  wire \x_iter[7]_i_1_n_0 ;
  wire \x_iter[8]_i_1_n_0 ;
  wire [8:1]y_iter;
  wire y_iter0_carry_i_1_n_0;
  wire y_iter0_carry_i_2_n_0;
  wire y_iter0_carry_i_3_n_0;
  wire y_iter0_carry_i_4_n_0;
  wire y_iter0_carry_i_5_n_0;
  wire y_iter0_carry_i_6_n_0;
  wire y_iter0_carry_i_7_n_0;
  wire y_iter0_carry_i_8_n_0;
  wire y_iter0_carry_n_0;
  wire \y_iter[0]_i_1_n_0 ;
  wire \y_iter_reg_n_0_[0] ;
  wire \y_iter_reg_n_0_[1] ;
  wire \y_iter_reg_n_0_[2] ;
  wire \y_iter_reg_n_0_[3] ;
  wire \y_iter_reg_n_0_[4] ;
  wire \y_iter_reg_n_0_[5] ;
  wire \y_iter_reg_n_0_[6] ;
  wire \y_iter_reg_n_0_[7] ;
  wire \y_iter_reg_n_0_[8] ;
  wire z_buffer0_n_10;
  wire z_buffer0_n_11;
  wire z_buffer0_n_32;
  wire z_buffer0_n_33;
  wire z_buffer0_n_34;
  wire z_buffer0_n_9;
  wire z_buffer1_n_1;
  wire z_buffer1_n_16;
  wire z_buffer1_n_17;
  wire z_buffer1_n_18;
  wire z_buffer1_n_19;
  wire z_buffer1_n_20;
  wire z_buffer1_n_21;
  wire z_buffer1_n_22;
  wire z_buffer1_n_23;
  wire z_buffer1_n_24;
  wire z_buffer1_n_26;
  wire z_buffer1_n_27;
  wire z_buffer1_n_29;
  wire z_buffer1_n_30;
  wire z_buffer1_n_31;
  wire z_buffer1_n_32;
  wire z_buffer1_n_33;
  wire z_buffer1_n_34;
  wire z_buffer1_n_35;
  wire z_buffer1_n_36;
  wire z_buffer1_n_37;
  wire z_buffer1_n_38;
  wire z_buffer1_n_39;
  wire z_buffer1_n_40;
  wire z_buffer1_n_41;
  wire z_buffer1_n_42;
  wire z_buffer1_n_43;
  wire NLW_read_addr10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_read_addr10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_read_addr10_OVERFLOW_UNCONNECTED;
  wire NLW_read_addr10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_read_addr10_PATTERNDETECT_UNCONNECTED;
  wire NLW_read_addr10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_read_addr10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_read_addr10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_read_addr10_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_read_addr10_P_UNCONNECTED;
  wire [47:0]NLW_read_addr10_PCOUT_UNCONNECTED;
  wire [2:0]NLW_state1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry_O_UNCONNECTED;
  wire [3:1]NLW_state1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_state1_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_x_iter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_x_iter1_carry_O_UNCONNECTED;
  wire [2:0]NLW_y_iter0_carry_CO_UNCONNECTED;
  wire [3:0]NLW_y_iter0_carry__0_CO_UNCONNECTED;
  wire \NLW_z_buffer0_tmds_out_reg[1]_UNCONNECTED ;
  wire \NLW_z_buffer1_output_register.doutb_reg_reg[14]_3_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    BRAM_mux_sel_b_pos_0__8_i_10
       (.I0(\y_iter_reg_n_0_[6] ),
        .I1(\y_iter_reg_n_0_[4] ),
        .O(BRAM_mux_sel_b_pos_0__8_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_mux_sel_b_pos_0__8_i_11
       (.I0(\y_iter_reg_n_0_[5] ),
        .I1(\y_iter_reg_n_0_[3] ),
        .O(BRAM_mux_sel_b_pos_0__8_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_mux_sel_b_pos_0__8_i_6
       (.I0(z_buffer1_n_34),
        .I1(z_buffer1_n_40),
        .O(BRAM_mux_sel_b_pos_0__8_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_mux_sel_b_pos_0__8_i_8
       (.I0(\y_iter_reg_n_0_[8] ),
        .I1(\y_iter_reg_n_0_[6] ),
        .O(BRAM_mux_sel_b_pos_0__8_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_mux_sel_b_pos_0__8_i_9
       (.I0(\y_iter_reg_n_0_[7] ),
        .I1(\y_iter_reg_n_0_[5] ),
        .O(BRAM_mux_sel_b_pos_0__8_i_9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_23
       (.I0(x_iter[8]),
        .I1(read_addr11[8]),
        .O(BRAM_reg_0_9_i_23_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_24
       (.I0(x_iter[7]),
        .I1(read_addr11[7]),
        .O(BRAM_reg_0_9_i_24_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_25
       (.I0(x_iter[6]),
        .I1(read_addr11[6]),
        .O(BRAM_reg_0_9_i_25_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_26
       (.I0(x_iter[5]),
        .I1(read_addr11[5]),
        .O(BRAM_reg_0_9_i_26_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_27
       (.I0(x_iter[4]),
        .I1(\y_iter_reg_n_0_[1] ),
        .O(BRAM_reg_0_9_i_27_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_28
       (.I0(x_iter[3]),
        .I1(\y_iter_reg_n_0_[0] ),
        .O(BRAM_reg_0_9_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_30
       (.I0(z_buffer1_n_35),
        .I1(z_buffer1_n_41),
        .O(BRAM_reg_0_9_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_31
       (.I0(z_buffer1_n_36),
        .I1(z_buffer1_n_42),
        .O(BRAM_reg_0_9_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_32
       (.I0(z_buffer1_n_30),
        .I1(z_buffer1_n_43),
        .O(BRAM_reg_0_9_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_33
       (.I0(z_buffer1_n_31),
        .I1(z_buffer1_n_37),
        .O(BRAM_reg_0_9_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_35
       (.I0(z_buffer1_n_32),
        .I1(z_buffer1_n_38),
        .O(BRAM_reg_0_9_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_36
       (.I0(z_buffer1_n_33),
        .I1(z_buffer1_n_39),
        .O(BRAM_reg_0_9_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_37
       (.I0(z_buffer1_n_26),
        .I1(z_buffer1_n_29),
        .O(BRAM_reg_0_9_i_37_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_38
       (.I0(z_buffer1_n_27),
        .I1(\y_iter_reg_n_0_[0] ),
        .O(BRAM_reg_0_9_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_39
       (.I0(\y_iter_reg_n_0_[8] ),
        .I1(\y_iter_reg_n_0_[6] ),
        .O(BRAM_reg_0_9_i_39_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_40
       (.I0(\y_iter_reg_n_0_[7] ),
        .I1(\y_iter_reg_n_0_[5] ),
        .O(BRAM_reg_0_9_i_40_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_41
       (.I0(\y_iter_reg_n_0_[6] ),
        .I1(\y_iter_reg_n_0_[4] ),
        .O(BRAM_reg_0_9_i_41_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_42
       (.I0(\y_iter_reg_n_0_[5] ),
        .I1(\y_iter_reg_n_0_[3] ),
        .O(BRAM_reg_0_9_i_42_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_44
       (.I0(\y_iter_reg_n_0_[4] ),
        .I1(\y_iter_reg_n_0_[2] ),
        .O(BRAM_reg_0_9_i_44_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_45
       (.I0(\y_iter_reg_n_0_[3] ),
        .I1(\y_iter_reg_n_0_[1] ),
        .O(BRAM_reg_0_9_i_45_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_46
       (.I0(\y_iter_reg_n_0_[2] ),
        .I1(\y_iter_reg_n_0_[0] ),
        .O(BRAM_reg_0_9_i_46_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_47
       (.I0(\y_iter_reg_n_0_[4] ),
        .I1(\y_iter_reg_n_0_[2] ),
        .O(BRAM_reg_0_9_i_47_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_48
       (.I0(\y_iter_reg_n_0_[3] ),
        .I1(\y_iter_reg_n_0_[1] ),
        .O(BRAM_reg_0_9_i_48_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    BRAM_reg_0_9_i_49
       (.I0(\y_iter_reg_n_0_[2] ),
        .I1(\y_iter_reg_n_0_[0] ),
        .O(BRAM_reg_0_9_i_49_n_0));
  FDRE buf_sel_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(buf_sel_reg_0),
        .Q(buf_sel),
        .R(SR));
  FDRE \hcount_in_pipe_reg[0][0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [0]),
        .Q(\hcount_in_pipe_reg[0]_1 [0]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][10] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [10]),
        .Q(\hcount_in_pipe_reg[0]_1 [10]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [1]),
        .Q(\hcount_in_pipe_reg[0]_1 [1]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [2]),
        .Q(\hcount_in_pipe_reg[0]_1 [2]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [3]),
        .Q(\hcount_in_pipe_reg[0]_1 [3]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [4]),
        .Q(\hcount_in_pipe_reg[0]_1 [4]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][5] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [5]),
        .Q(\hcount_in_pipe_reg[0]_1 [5]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][6] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [6]),
        .Q(\hcount_in_pipe_reg[0]_1 [6]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][7] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [7]),
        .Q(\hcount_in_pipe_reg[0]_1 [7]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][8] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [8]),
        .Q(\hcount_in_pipe_reg[0]_1 [8]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][9] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\hcount_in_pipe_reg[0][10]_0 [9]),
        .Q(\hcount_in_pipe_reg[0]_1 [9]),
        .R(1'b0));
  FDRE in_tri_v_in_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(intri_n_15),
        .Q(in_tri_v_in),
        .R(SR));
  in_triangle intri
       (.CEA2(CEA2),
        .CO(p_0_in),
        .DI({intri_n_6,intri_n_7,intri_n_8}),
        .S({intri_n_2,intri_n_3,intri_n_4,intri_n_5}),
        .SR(SR),
        .buf_sel_reg(intri_n_13),
        .buf_sel_reg_0(intri_n_14),
        .clk_pixel(clk_pixel),
        .detvv1_reg_0(\y_iter_reg_n_0_[0] ),
        .in_tri_v_in(in_tri_v_in),
        .state(state),
        .\state_reg[0]_0 (intri_n_15),
        .\state_reg[0]_1 (intri_n_19),
        .\state_reg[1]_inv (intri_n_20),
        .\state_reg[1]_inv_0 (state1),
        .wea0_reg(wea0_reg_n_0),
        .wea1_reg(buf_sel),
        .wea1_reg_0(wea1_reg_n_0),
        .x_iter(x_iter),
        .\x_iter_reg[1] (intri_n_1),
        .\x_iter_reg[2] (intri_n_16),
        .\x_iter_reg[3] (intri_n_17),
        .\x_iter_reg[4] (intri_n_18),
        .y_iter(y_iter),
        .\y_iter_reg[7] ({intri_n_9,intri_n_10,intri_n_11,intri_n_12}),
        .\y_iter_reg[8] (\y_iter_reg_n_0_[6] ),
        .\y_iter_reg[8]_0 (\y_iter_reg_n_0_[5] ),
        .\y_iter_reg[8]_1 (\y_iter_reg_n_0_[4] ),
        .\y_iter_reg[8]_2 (\y_iter_reg_n_0_[7] ),
        .\y_iter_reg[8]_3 (\y_iter_reg_n_0_[8] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    read_addr10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_read_addr10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_read_addr10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\hcount_in_pipe_reg[0]_1 }),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_read_addr10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_read_addr10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b1),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(clk_pixel),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_read_addr10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_read_addr10_OVERFLOW_UNCONNECTED),
        .P({NLW_read_addr10_P_UNCONNECTED[47:17],read_addr10_n_89,read_addr10_n_90,read_addr10_n_91,read_addr10_n_92,read_addr10_n_93,read_addr10_n_94,read_addr10_n_95,read_addr10_n_96,read_addr10_n_97,read_addr10_n_98,read_addr10_n_99,read_addr10_n_100,read_addr10_n_101,read_addr10_n_102,read_addr10_n_103,read_addr10_n_104,read_addr10_n_105}),
        .PATTERNBDETECT(NLW_read_addr10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_read_addr10_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_read_addr10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_read_addr10_UNDERFLOW_UNCONNECTED));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state1_carry
       (.CI(1'b0),
        .CO({state1_carry_n_0,NLW_state1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({state1_carry_i_1_n_0,state1_carry_i_2_n_0,state1_carry_i_3_n_0,state1_carry_i_4_n_0}),
        .O(NLW_state1_carry_O_UNCONNECTED[3:0]),
        .S({state1_carry_i_5_n_0,state1_carry_i_6_n_0,state1_carry_i_7_n_0,state1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 state1_carry__0
       (.CI(state1_carry_n_0),
        .CO({NLW_state1_carry__0_CO_UNCONNECTED[3:1],state1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\y_iter_reg_n_0_[8] }),
        .O(NLW_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,state1_carry__0_i_1_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    state1_carry__0_i_1
       (.I0(\y_iter_reg_n_0_[8] ),
        .O(state1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry_i_1
       (.I0(\y_iter_reg_n_0_[7] ),
        .I1(\y_iter_reg_n_0_[6] ),
        .O(state1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry_i_2
       (.I0(\y_iter_reg_n_0_[4] ),
        .I1(\y_iter_reg_n_0_[5] ),
        .O(state1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry_i_3
       (.I0(\y_iter_reg_n_0_[2] ),
        .I1(\y_iter_reg_n_0_[3] ),
        .O(state1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    state1_carry_i_4
       (.I0(\y_iter_reg_n_0_[0] ),
        .I1(\y_iter_reg_n_0_[1] ),
        .O(state1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_5
       (.I0(\y_iter_reg_n_0_[6] ),
        .I1(\y_iter_reg_n_0_[7] ),
        .O(state1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_6
       (.I0(\y_iter_reg_n_0_[5] ),
        .I1(\y_iter_reg_n_0_[4] ),
        .O(state1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_7
       (.I0(\y_iter_reg_n_0_[3] ),
        .I1(\y_iter_reg_n_0_[2] ),
        .O(state1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    state1_carry_i_8
       (.I0(\y_iter_reg_n_0_[1] ),
        .I1(\y_iter_reg_n_0_[0] ),
        .O(state1_carry_i_8_n_0));
  FDRE \state_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(intri_n_20),
        .Q(state[0]),
        .R(SR));
  (* inverted = "yes" *) 
  FDSE \state_reg[1]_inv 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(intri_n_19),
        .Q(state[1]),
        .S(SR));
  FDRE wea0_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(intri_n_13),
        .Q(wea0_reg_n_0),
        .R(SR));
  FDRE wea1_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(intri_n_14),
        .Q(wea1_reg_n_0),
        .R(SR));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 x_iter1_carry
       (.CI(1'b0),
        .CO({p_0_in,NLW_x_iter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(intri_n_1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_x_iter1_carry_O_UNCONNECTED[3:0]),
        .S({intri_n_2,intri_n_3,intri_n_4,intri_n_5}));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \x_iter[0]_i_1 
       (.I0(p_0_in),
        .I1(x_iter[0]),
        .I2(state[0]),
        .O(\x_iter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h28FF)) 
    \x_iter[1]_i_1 
       (.I0(p_0_in),
        .I1(x_iter[0]),
        .I2(x_iter[1]),
        .I3(state[0]),
        .O(\x_iter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h2A80FFFF)) 
    \x_iter[2]_i_1 
       (.I0(p_0_in),
        .I1(x_iter[1]),
        .I2(x_iter[0]),
        .I3(x_iter[2]),
        .I4(state[0]),
        .O(\x_iter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA8000FFFFFFFF)) 
    \x_iter[3]_i_1 
       (.I0(p_0_in),
        .I1(x_iter[0]),
        .I2(x_iter[1]),
        .I3(x_iter[2]),
        .I4(x_iter[3]),
        .I5(state[0]),
        .O(\x_iter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h28FF)) 
    \x_iter[4]_i_1 
       (.I0(p_0_in),
        .I1(intri_n_16),
        .I2(x_iter[4]),
        .I3(state[0]),
        .O(\x_iter[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h28FF)) 
    \x_iter[5]_i_1 
       (.I0(p_0_in),
        .I1(intri_n_17),
        .I2(x_iter[5]),
        .I3(state[0]),
        .O(\x_iter[5]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h28FF)) 
    \x_iter[6]_i_1 
       (.I0(p_0_in),
        .I1(intri_n_18),
        .I2(x_iter[6]),
        .I3(state[0]),
        .O(\x_iter[6]_i_1_n_0 ));
  (* \PinAttr:I2:HOLD_DETOUR  = "197" *) 
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h2A80FFFF)) 
    \x_iter[7]_i_1 
       (.I0(p_0_in),
        .I1(intri_n_18),
        .I2(x_iter[6]),
        .I3(x_iter[7]),
        .I4(state[0]),
        .O(\x_iter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA8000FFFFFFFF)) 
    \x_iter[8]_i_1 
       (.I0(p_0_in),
        .I1(x_iter[6]),
        .I2(intri_n_18),
        .I3(x_iter[7]),
        .I4(x_iter[8]),
        .I5(state[0]),
        .O(\x_iter[8]_i_1_n_0 ));
  FDRE \x_iter_reg[0] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[0]_i_1_n_0 ),
        .Q(x_iter[0]),
        .R(SR));
  FDRE \x_iter_reg[1] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[1]_i_1_n_0 ),
        .Q(x_iter[1]),
        .R(SR));
  FDRE \x_iter_reg[2] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[2]_i_1_n_0 ),
        .Q(x_iter[2]),
        .R(SR));
  FDRE \x_iter_reg[3] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[3]_i_1_n_0 ),
        .Q(x_iter[3]),
        .R(SR));
  FDRE \x_iter_reg[4] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[4]_i_1_n_0 ),
        .Q(x_iter[4]),
        .R(SR));
  FDRE \x_iter_reg[5] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[5]_i_1_n_0 ),
        .Q(x_iter[5]),
        .R(SR));
  FDRE \x_iter_reg[6] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[6]_i_1_n_0 ),
        .Q(x_iter[6]),
        .R(SR));
  FDRE \x_iter_reg[7] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[7]_i_1_n_0 ),
        .Q(x_iter[7]),
        .R(SR));
  FDRE \x_iter_reg[8] 
       (.C(clk_pixel),
        .CE(state[1]),
        .D(\x_iter[8]_i_1_n_0 ),
        .Q(x_iter[8]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 y_iter0_carry
       (.CI(1'b0),
        .CO({y_iter0_carry_n_0,NLW_y_iter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(y_iter0_carry_i_1_n_0),
        .DI({y_iter0_carry_i_2_n_0,y_iter0_carry_i_3_n_0,y_iter0_carry_i_4_n_0,state[0]}),
        .O(y_iter[4:1]),
        .S({y_iter0_carry_i_5_n_0,y_iter0_carry_i_6_n_0,y_iter0_carry_i_7_n_0,y_iter0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 y_iter0_carry__0
       (.CI(y_iter0_carry_n_0),
        .CO(NLW_y_iter0_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,intri_n_6,intri_n_7,intri_n_8}),
        .O(y_iter[8:5]),
        .S({intri_n_9,intri_n_10,intri_n_11,intri_n_12}));
  LUT2 #(
    .INIT(4'h8)) 
    y_iter0_carry_i_1
       (.I0(state[0]),
        .I1(\y_iter_reg_n_0_[0] ),
        .O(y_iter0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    y_iter0_carry_i_2
       (.I0(state[0]),
        .I1(\y_iter_reg_n_0_[3] ),
        .O(y_iter0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    y_iter0_carry_i_3
       (.I0(state[0]),
        .I1(\y_iter_reg_n_0_[2] ),
        .O(y_iter0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    y_iter0_carry_i_4
       (.I0(state[0]),
        .I1(\y_iter_reg_n_0_[1] ),
        .O(y_iter0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h9F)) 
    y_iter0_carry_i_5
       (.I0(\y_iter_reg_n_0_[3] ),
        .I1(\y_iter_reg_n_0_[4] ),
        .I2(state[0]),
        .O(y_iter0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h9F)) 
    y_iter0_carry_i_6
       (.I0(\y_iter_reg_n_0_[2] ),
        .I1(\y_iter_reg_n_0_[3] ),
        .I2(state[0]),
        .O(y_iter0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h9F)) 
    y_iter0_carry_i_7
       (.I0(\y_iter_reg_n_0_[1] ),
        .I1(\y_iter_reg_n_0_[2] ),
        .I2(state[0]),
        .O(y_iter0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    y_iter0_carry_i_8
       (.I0(\y_iter_reg_n_0_[1] ),
        .I1(state[0]),
        .O(y_iter0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h51551500)) 
    \y_iter[0]_i_1 
       (.I0(SR),
        .I1(state[0]),
        .I2(p_0_in),
        .I3(state[1]),
        .I4(\y_iter_reg_n_0_[0] ),
        .O(\y_iter[0]_i_1_n_0 ));
  FDRE \y_iter_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\y_iter[0]_i_1_n_0 ),
        .Q(\y_iter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \y_iter_reg[1] 
       (.C(clk_pixel),
        .CE(CEA2),
        .D(y_iter[1]),
        .Q(\y_iter_reg_n_0_[1] ),
        .R(SR));
  FDRE \y_iter_reg[2] 
       (.C(clk_pixel),
        .CE(CEA2),
        .D(y_iter[2]),
        .Q(\y_iter_reg_n_0_[2] ),
        .R(SR));
  FDRE \y_iter_reg[3] 
       (.C(clk_pixel),
        .CE(CEA2),
        .D(y_iter[3]),
        .Q(\y_iter_reg_n_0_[3] ),
        .R(SR));
  FDRE \y_iter_reg[4] 
       (.C(clk_pixel),
        .CE(CEA2),
        .D(y_iter[4]),
        .Q(\y_iter_reg_n_0_[4] ),
        .R(SR));
  FDRE \y_iter_reg[5] 
       (.C(clk_pixel),
        .CE(CEA2),
        .D(y_iter[5]),
        .Q(\y_iter_reg_n_0_[5] ),
        .R(SR));
  FDRE \y_iter_reg[6] 
       (.C(clk_pixel),
        .CE(CEA2),
        .D(y_iter[6]),
        .Q(\y_iter_reg_n_0_[6] ),
        .R(SR));
  FDRE \y_iter_reg[7] 
       (.C(clk_pixel),
        .CE(CEA2),
        .D(y_iter[7]),
        .Q(\y_iter_reg_n_0_[7] ),
        .R(SR));
  FDRE \y_iter_reg[8] 
       (.C(clk_pixel),
        .CE(CEA2),
        .D(y_iter[8]),
        .Q(\y_iter_reg_n_0_[8] ),
        .R(SR));
  xilinx_true_dual_port_read_first_2_clock_ram z_buffer0
       (.BRAM_reg_0_9_0(buf_sel),
        .BRAM_reg_1_11_0(wea0_reg_n_0),
        .D({D[7:3],D[1:0]}),
        .P({read_addr10_n_89,read_addr10_n_90,read_addr10_n_91,read_addr10_n_92,read_addr10_n_93,read_addr10_n_94,read_addr10_n_95,read_addr10_n_96,read_addr10_n_97,read_addr10_n_98,read_addr10_n_99,read_addr10_n_100,read_addr10_n_101,read_addr10_n_102,read_addr10_n_103,read_addr10_n_104,read_addr10_n_105}),
        .Q(Q),
        .SR(SR),
        .clk_pixel(clk_pixel),
        .led_OBUF(led_OBUF),
        .\output_register.doutb_reg_reg[14]_0 (\output_register.doutb_reg_reg[14] ),
        .\output_register.doutb_reg_reg[14]_1 (z_buffer0_n_9),
        .\output_register.doutb_reg_reg[14]_2 (z_buffer0_n_10),
        .\output_register.doutb_reg_reg[14]_3 (z_buffer0_n_11),
        .\output_register.doutb_reg_reg[14]_4 (z_buffer0_n_33),
        .\output_register.doutb_reg_reg[14]_5 (z_buffer0_n_34),
        .\output_register.doutb_reg_reg[15]_0 (\output_register.doutb_reg_reg[15] ),
        .\output_register.doutb_reg_reg[15]_1 (\output_register.doutb_reg_reg[15]_0 ),
        .\output_register.doutb_reg_reg[15]_2 (\output_register.doutb_reg_reg[15]_1 ),
        .\output_register.doutb_reg_reg[15]_3 (z_buffer0_n_32),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .read_addr10__0(read_addr10__0),
        .\tally[4]_i_4_0 (z_buffer1_n_17),
        .\tally[4]_i_6__0_0 (z_buffer1_n_16),
        .\tally_reg[1] (\tmds_out_reg[2] ),
        .\tally_reg[1]_0 (\tally_reg[1] ),
        .\tally_reg[1]_1 (z_buffer1_n_24),
        .\tally_reg[1]_2 (\tally_reg[1]_0 ),
        .\tally_reg[1]_3 (z_buffer1_n_20),
        .\tally_reg[3] (\tally_reg[3] ),
        .\tally_reg[3]_0 (\tally_reg[3]_0 ),
        .\tally_reg[4] (\tally_reg[4] ),
        .\tally_reg[4]_0 (\tally_reg[4]_0 ),
        .\tally_reg[4]_1 (\tally_reg[4]_1 ),
        .\tally_reg[4]_2 (\tally_reg[4]_2 ),
        .\tmds_out_reg[0] (z_buffer1_n_21),
        .\tmds_out_reg[1] (\NLW_z_buffer0_tmds_out_reg[1]_UNCONNECTED ),
        .\tmds_out_reg[3] (z_buffer1_n_1),
        .\tmds_out_reg[3]_0 (z_buffer1_n_23),
        .\tmds_out_reg[5] (z_buffer1_n_18),
        .\tmds_out_reg[6] (z_buffer1_n_19),
        .\tmds_out_reg[7] (\tmds_out_reg[2]_0 ),
        .\tmds_out_reg[7]_0 (\tmds_out_reg[2]_1 ),
        .\tmds_out_reg[7]_1 (z_buffer1_n_22),
        .x_iter(x_iter[2:0]));
  xilinx_true_dual_port_read_first_2_clock_ram_3 z_buffer1
       (.BRAM_reg_0_9_0(buf_sel),
        .BRAM_reg_0_9_1({BRAM_reg_0_9_i_25_n_0,BRAM_reg_0_9_i_26_n_0,BRAM_reg_0_9_i_27_n_0,BRAM_reg_0_9_i_28_n_0}),
        .BRAM_reg_0_9_2({BRAM_reg_0_9_i_23_n_0,BRAM_reg_0_9_i_24_n_0}),
        .BRAM_reg_0_9_i_18_0(BRAM_mux_sel_b_pos_0__8_i_6_n_0),
        .BRAM_reg_0_9_i_19_0({BRAM_reg_0_9_i_30_n_0,BRAM_reg_0_9_i_31_n_0,BRAM_reg_0_9_i_32_n_0,BRAM_reg_0_9_i_33_n_0}),
        .BRAM_reg_0_9_i_25({BRAM_reg_0_9_i_35_n_0,BRAM_reg_0_9_i_36_n_0,BRAM_reg_0_9_i_37_n_0,BRAM_reg_0_9_i_38_n_0}),
        .BRAM_reg_0_9_i_32(\y_iter_reg_n_0_[6] ),
        .BRAM_reg_0_9_i_32_0(\y_iter_reg_n_0_[5] ),
        .BRAM_reg_0_9_i_32_1({BRAM_mux_sel_b_pos_0__8_i_8_n_0,BRAM_mux_sel_b_pos_0__8_i_9_n_0,BRAM_mux_sel_b_pos_0__8_i_10_n_0,BRAM_mux_sel_b_pos_0__8_i_11_n_0}),
        .BRAM_reg_0_9_i_36(\y_iter_reg_n_0_[4] ),
        .BRAM_reg_0_9_i_36_0(\y_iter_reg_n_0_[3] ),
        .BRAM_reg_0_9_i_36_1(\y_iter_reg_n_0_[2] ),
        .BRAM_reg_0_9_i_36_2({BRAM_reg_0_9_i_39_n_0,BRAM_reg_0_9_i_40_n_0,BRAM_reg_0_9_i_41_n_0,BRAM_reg_0_9_i_42_n_0}),
        .BRAM_reg_0_9_i_36_3({BRAM_reg_0_9_i_47_n_0,BRAM_reg_0_9_i_48_n_0,BRAM_reg_0_9_i_49_n_0}),
        .BRAM_reg_1_11_0(wea1_reg_n_0),
        .BRAM_reg_mux_sel_b_pos_0__8_i_3_0(\y_iter_reg_n_0_[8] ),
        .BRAM_reg_mux_sel_b_pos_0__8_i_3_1(\y_iter_reg_n_0_[7] ),
        .CO(z_buffer1_n_34),
        .D(D[2]),
        .O({z_buffer1_n_26,z_buffer1_n_27,read_addr11[5],z_buffer1_n_29}),
        .P({read_addr10_n_89,read_addr10_n_90,read_addr10_n_91,read_addr10_n_92,read_addr10_n_93,read_addr10_n_94,read_addr10_n_95,read_addr10_n_96,read_addr10_n_97,read_addr10_n_98,read_addr10_n_99,read_addr10_n_100,read_addr10_n_101,read_addr10_n_102,read_addr10_n_103,read_addr10_n_104,read_addr10_n_105}),
        .S({BRAM_reg_0_9_i_44_n_0,BRAM_reg_0_9_i_45_n_0,BRAM_reg_0_9_i_46_n_0,\y_iter_reg_n_0_[1] }),
        .SR(SR),
        .clk_pixel(clk_pixel),
        .led_OBUF(led_OBUF),
        .\output_register.doutb_reg_reg[14]_0 (z_buffer1_n_18),
        .\output_register.doutb_reg_reg[14]_1 (z_buffer1_n_20),
        .\output_register.doutb_reg_reg[14]_2 (z_buffer1_n_21),
        .\output_register.doutb_reg_reg[14]_3 (\NLW_z_buffer1_output_register.doutb_reg_reg[14]_3_UNCONNECTED ),
        .\output_register.doutb_reg_reg[15]_0 (z_buffer1_n_1),
        .\output_register.doutb_reg_reg[15]_1 (z_buffer1_n_16),
        .\output_register.doutb_reg_reg[15]_2 (z_buffer1_n_17),
        .\output_register.doutb_reg_reg[15]_3 (z_buffer1_n_19),
        .\output_register.doutb_reg_reg[15]_4 (z_buffer1_n_22),
        .\output_register.doutb_reg_reg[15]_5 (z_buffer1_n_23),
        .\output_register.doutb_reg_reg[15]_6 (z_buffer1_n_24),
        .pwropt(pwropt),
        .pwropt_1(pwropt_1),
        .read_addr10__0(read_addr10__0),
        .\tally[4]_i_16 (z_buffer0_n_9),
        .\tally[4]_i_16_0 (z_buffer0_n_11),
        .\tally_reg[1] (z_buffer0_n_32),
        .\tally_reg[1]_0 (z_buffer0_n_34),
        .\tmds_out_reg[2] (\tally_reg[4] ),
        .\tmds_out_reg[2]_0 (\tmds_out_reg[2] ),
        .\tmds_out_reg[2]_1 (\tmds_out_reg[2]_0 ),
        .\tmds_out_reg[2]_2 (\tmds_out_reg[2]_1 ),
        .\tmds_out_reg[2]_3 (\output_register.doutb_reg_reg[14] ),
        .\tmds_out_reg[5] (z_buffer0_n_33),
        .\tmds_out_reg[6] (z_buffer0_n_10),
        .x_iter(x_iter),
        .\y_iter_reg[4] ({z_buffer1_n_37,z_buffer1_n_38,z_buffer1_n_39}),
        .\y_iter_reg[8] ({z_buffer1_n_30,z_buffer1_n_31,z_buffer1_n_32,z_buffer1_n_33}),
        .\y_iter_reg[8]_0 ({z_buffer1_n_35,z_buffer1_n_36}),
        .\y_iter_reg[8]_1 ({z_buffer1_n_40,z_buffer1_n_41,z_buffer1_n_42,z_buffer1_n_43}),
        .\y_iter_reg[8]_2 (read_addr11[8:6]));
endmodule

module tmds_encoder
   (\tally_reg[3]_0 ,
    Q,
    \tally_reg[4]_0 ,
    \tmds_out_reg[9]_0 ,
    \tally_reg[3]_1 ,
    \tmds_out_reg[2]_0 ,
    \tmds_out_reg[2]_1 ,
    SR,
    D,
    clk_pixel,
    \tmds_out_reg[0]_0 ,
    \tmds_out_reg[9]_1 );
  output \tally_reg[3]_0 ;
  output [3:0]Q;
  output \tally_reg[4]_0 ;
  output [9:0]\tmds_out_reg[9]_0 ;
  input \tally_reg[3]_1 ;
  input \tmds_out_reg[2]_0 ;
  input \tmds_out_reg[2]_1 ;
  input [0:0]SR;
  input [3:0]D;
  input clk_pixel;
  input [0:0]\tmds_out_reg[0]_0 ;
  input [9:0]\tmds_out_reg[9]_1 ;

  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_pixel;
  wire \tally_reg[3]_0 ;
  wire \tally_reg[3]_1 ;
  wire \tally_reg[4]_0 ;
  wire [0:0]\tmds_out_reg[0]_0 ;
  wire \tmds_out_reg[2]_0 ;
  wire \tmds_out_reg[2]_1 ;
  wire [9:0]\tmds_out_reg[9]_0 ;
  wire [9:0]\tmds_out_reg[9]_1 ;

  LUT2 #(
    .INIT(4'h6)) 
    \tally[3]_i_4 
       (.I0(Q[2]),
        .I1(\tally_reg[3]_1 ),
        .O(\tally_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB0)) 
    \tally[4]_i_5__0 
       (.I0(\tmds_out_reg[2]_0 ),
        .I1(\tmds_out_reg[2]_1 ),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\tally_reg[4]_0 ));
  FDRE \tally_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \tally_reg[2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \tally_reg[3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \tally_reg[4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \tmds_out_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [0]),
        .Q(\tmds_out_reg[9]_0 [0]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [1]),
        .Q(\tmds_out_reg[9]_0 [1]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [2]),
        .Q(\tmds_out_reg[9]_0 [2]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [3]),
        .Q(\tmds_out_reg[9]_0 [3]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [4]),
        .Q(\tmds_out_reg[9]_0 [4]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[5] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [5]),
        .Q(\tmds_out_reg[9]_0 [5]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[6] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [6]),
        .Q(\tmds_out_reg[9]_0 [6]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[7] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [7]),
        .Q(\tmds_out_reg[9]_0 [7]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[8] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [8]),
        .Q(\tmds_out_reg[9]_0 [8]),
        .R(\tmds_out_reg[0]_0 ));
  FDRE \tmds_out_reg[9] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [9]),
        .Q(\tmds_out_reg[9]_0 [9]),
        .R(\tmds_out_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "tmds_encoder" *) 
module tmds_encoder_2
   (\tally_reg[4]_0 ,
    Q,
    \tally_reg[3]_0 ,
    \tmds_out_reg[9]_0 ,
    \tally_reg[1]_0 ,
    \tally_reg[1]_1 ,
    \tally_reg[3]_1 ,
    SR,
    D,
    clk_pixel,
    \tmds_out_reg[9]_1 ,
    \tmds_out_reg[9]_2 );
  output \tally_reg[4]_0 ;
  output [3:0]Q;
  output \tally_reg[3]_0 ;
  output [9:0]\tmds_out_reg[9]_0 ;
  input \tally_reg[1]_0 ;
  input \tally_reg[1]_1 ;
  input \tally_reg[3]_1 ;
  input [0:0]SR;
  input [3:0]D;
  input clk_pixel;
  input [0:0]\tmds_out_reg[9]_1 ;
  input [9:0]\tmds_out_reg[9]_2 ;

  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_pixel;
  wire \tally_reg[1]_0 ;
  wire \tally_reg[1]_1 ;
  wire \tally_reg[3]_0 ;
  wire \tally_reg[3]_1 ;
  wire \tally_reg[4]_0 ;
  wire [9:0]\tmds_out_reg[9]_0 ;
  wire [0:0]\tmds_out_reg[9]_1 ;
  wire [9:0]\tmds_out_reg[9]_2 ;

  LUT2 #(
    .INIT(4'h6)) 
    \tally[3]_i_4__0 
       (.I0(Q[2]),
        .I1(\tally_reg[3]_1 ),
        .O(\tally_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBBBB0)) 
    \tally[4]_i_7 
       (.I0(\tally_reg[1]_0 ),
        .I1(\tally_reg[1]_1 ),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\tally_reg[4]_0 ));
  FDRE \tally_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \tally_reg[2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \tally_reg[3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \tally_reg[4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \tmds_out_reg[0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [0]),
        .Q(\tmds_out_reg[9]_0 [0]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [1]),
        .Q(\tmds_out_reg[9]_0 [1]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [2]),
        .Q(\tmds_out_reg[9]_0 [2]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [3]),
        .Q(\tmds_out_reg[9]_0 [3]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [4]),
        .Q(\tmds_out_reg[9]_0 [4]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[5] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [5]),
        .Q(\tmds_out_reg[9]_0 [5]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[6] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [6]),
        .Q(\tmds_out_reg[9]_0 [6]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[7] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [7]),
        .Q(\tmds_out_reg[9]_0 [7]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[8] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [8]),
        .Q(\tmds_out_reg[9]_0 [8]),
        .R(\tmds_out_reg[9]_1 ));
  FDRE \tmds_out_reg[9] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_2 [9]),
        .Q(\tmds_out_reg[9]_0 [9]),
        .R(\tmds_out_reg[9]_1 ));
endmodule

module tmds_serializer
   (\tmds_signal[0] ,
    clk_tmds,
    clk_pixel,
    Q,
    RST0);
  output \tmds_signal[0] ;
  input clk_tmds;
  input clk_pixel;
  input [9:0]Q;
  input RST0;

  wire [9:0]Q;
  wire RST0;
  wire clk_pixel;
  wire clk_tmds;
  wire linker_0;
  wire linker_1;
  wire \tmds_signal[0] ;
  wire NLW_primary_OFB_UNCONNECTED;
  wire NLW_primary_SHIFTOUT1_UNCONNECTED;
  wire NLW_primary_SHIFTOUT2_UNCONNECTED;
  wire NLW_primary_TBYTEOUT_UNCONNECTED;
  wire NLW_primary_TFB_UNCONNECTED;
  wire NLW_primary_TQ_UNCONNECTED;
  wire NLW_secondary_OFB_UNCONNECTED;
  wire NLW_secondary_OQ_UNCONNECTED;
  wire NLW_secondary_TBYTEOUT_UNCONNECTED;
  wire NLW_secondary_TFB_UNCONNECTED;
  wire NLW_secondary_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    primary
       (.CLK(clk_tmds),
        .CLKDIV(clk_pixel),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_primary_OFB_UNCONNECTED),
        .OQ(\tmds_signal[0] ),
        .RST(RST0),
        .SHIFTIN1(linker_0),
        .SHIFTIN2(linker_1),
        .SHIFTOUT1(NLW_primary_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_primary_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_primary_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_primary_TFB_UNCONNECTED),
        .TQ(NLW_primary_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    secondary
       (.CLK(clk_tmds),
        .CLKDIV(clk_pixel),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_secondary_OFB_UNCONNECTED),
        .OQ(NLW_secondary_OQ_UNCONNECTED),
        .RST(RST0),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(linker_0),
        .SHIFTOUT2(linker_1),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_secondary_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_secondary_TFB_UNCONNECTED),
        .TQ(NLW_secondary_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tmds_serializer" *) 
module tmds_serializer_0
   (\tmds_signal[1] ,
    clk_tmds,
    clk_pixel,
    Q,
    RST0);
  output \tmds_signal[1] ;
  input clk_tmds;
  input clk_pixel;
  input [9:0]Q;
  input RST0;

  wire [9:0]Q;
  wire RST0;
  wire clk_pixel;
  wire clk_tmds;
  wire linker_0;
  wire linker_1;
  wire \tmds_signal[1] ;
  wire NLW_primary_OFB_UNCONNECTED;
  wire NLW_primary_SHIFTOUT1_UNCONNECTED;
  wire NLW_primary_SHIFTOUT2_UNCONNECTED;
  wire NLW_primary_TBYTEOUT_UNCONNECTED;
  wire NLW_primary_TFB_UNCONNECTED;
  wire NLW_primary_TQ_UNCONNECTED;
  wire NLW_secondary_OFB_UNCONNECTED;
  wire NLW_secondary_OQ_UNCONNECTED;
  wire NLW_secondary_TBYTEOUT_UNCONNECTED;
  wire NLW_secondary_TFB_UNCONNECTED;
  wire NLW_secondary_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    primary
       (.CLK(clk_tmds),
        .CLKDIV(clk_pixel),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_primary_OFB_UNCONNECTED),
        .OQ(\tmds_signal[1] ),
        .RST(RST0),
        .SHIFTIN1(linker_0),
        .SHIFTIN2(linker_1),
        .SHIFTOUT1(NLW_primary_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_primary_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_primary_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_primary_TFB_UNCONNECTED),
        .TQ(NLW_primary_TQ_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    secondary
       (.CLK(clk_tmds),
        .CLKDIV(clk_pixel),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_secondary_OFB_UNCONNECTED),
        .OQ(NLW_secondary_OQ_UNCONNECTED),
        .RST(RST0),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(linker_0),
        .SHIFTOUT2(linker_1),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_secondary_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_secondary_TFB_UNCONNECTED),
        .TQ(NLW_secondary_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "tmds_serializer" *) 
module tmds_serializer_1
   (\tmds_signal[2] ,
    RST0,
    clk_tmds,
    clk_pixel,
    Q,
    SR);
  output \tmds_signal[2] ;
  output RST0;
  input clk_tmds;
  input clk_pixel;
  input [9:0]Q;
  input [0:0]SR;

  wire [9:0]Q;
  wire RST0;
  wire [0:0]SR;
  wire \blue_ser/pwup_rst ;
  wire clk_pixel;
  wire clk_tmds;
  wire linker_0;
  wire linker_1;
  wire \tmds_signal[2] ;
  wire NLW_primary_OFB_UNCONNECTED;
  wire NLW_primary_SHIFTOUT1_UNCONNECTED;
  wire NLW_primary_SHIFTOUT2_UNCONNECTED;
  wire NLW_primary_TBYTEOUT_UNCONNECTED;
  wire NLW_primary_TFB_UNCONNECTED;
  wire NLW_primary_TQ_UNCONNECTED;
  wire NLW_secondary_OFB_UNCONNECTED;
  wire NLW_secondary_OQ_UNCONNECTED;
  wire NLW_secondary_TBYTEOUT_UNCONNECTED;
  wire NLW_secondary_TFB_UNCONNECTED;
  wire NLW_secondary_TQ_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    primary
       (.CLK(clk_tmds),
        .CLKDIV(clk_pixel),
        .D1(Q[0]),
        .D2(Q[1]),
        .D3(Q[2]),
        .D4(Q[3]),
        .D5(Q[4]),
        .D6(Q[5]),
        .D7(Q[6]),
        .D8(Q[7]),
        .OCE(1'b1),
        .OFB(NLW_primary_OFB_UNCONNECTED),
        .OQ(\tmds_signal[2] ),
        .RST(RST0),
        .SHIFTIN1(linker_0),
        .SHIFTIN2(linker_1),
        .SHIFTOUT1(NLW_primary_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_primary_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_primary_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_primary_TFB_UNCONNECTED),
        .TQ(NLW_primary_TQ_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    primary_i_1
       (.I0(SR),
        .I1(\blue_ser/pwup_rst ),
        .O(RST0));
  FDRE #(
    .INIT(1'b1)) 
    pwup_rst_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(1'b0),
        .Q(\blue_ser/pwup_rst ),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    secondary
       (.CLK(clk_tmds),
        .CLKDIV(clk_pixel),
        .D1(1'b0),
        .D2(1'b0),
        .D3(Q[8]),
        .D4(Q[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_secondary_OFB_UNCONNECTED),
        .OQ(NLW_secondary_OQ_UNCONNECTED),
        .RST(RST0),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(linker_0),
        .SHIFTOUT2(linker_1),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_secondary_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_secondary_TFB_UNCONNECTED),
        .TQ(NLW_secondary_TQ_UNCONNECTED));
endmodule

(* ECO_CHECKSUM = "645c1b9d" *) (* NF = "12" *) (* POWER_OPT_BRAM_CDC = "0" *) 
(* POWER_OPT_BRAM_SR_ADDR = "0" *) (* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module top_level
   (clk_100mhz,
    sw,
    btn,
    led,
    hdmi_tx_p,
    hdmi_tx_n,
    hdmi_clk_p,
    hdmi_clk_n);
  input clk_100mhz;
  input [15:0]sw;
  input [3:0]btn;
  output [15:0]led;
  output [2:0]hdmi_tx_p;
  output [2:0]hdmi_tx_n;
  output hdmi_clk_p;
  output hdmi_clk_n;

  wire RST0;
  wire [3:0]btn;
  wire [0:0]btn_IBUF;
  wire buf_sel;
  (* IBUF_LOW_PWR *) wire clk_100mhz;
  wire clk_5x;
  wire clk_pixel;
  wire [10:0]hcount_scaled;
  wire hdmi_clk_n;
  wire hdmi_clk_p;
  wire [2:0]hdmi_tx_n;
  wire [2:0]hdmi_tx_p;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire mvg_n_0;
  wire mvg_n_1;
  wire mvg_n_2;
  wire mvg_n_27;
  wire mvg_n_3;
  wire mvg_n_5;
  wire p_0_in;
  wire [4:1]p_1_in;
  wire rast_n_1;
  wire rast_n_10;
  wire rast_n_11;
  wire rast_n_14;
  wire rast_n_17;
  wire rast_n_2;
  wire rast_n_24;
  wire rast_n_25;
  wire rast_n_26;
  wire rast_n_27;
  wire rast_n_28;
  wire rast_n_29;
  wire rast_n_3;
  wire rast_n_30;
  wire rast_n_4;
  wire rast_n_5;
  wire rast_n_6;
  wire rast_n_7;
  wire rast_n_8;
  wire rast_n_9;
  wire [15:0]sw;
  wire [9:0]\tmds_10b[0] ;
  wire [9:0]\tmds_10b[2] ;
  wire tmds_blue_n_0;
  wire tmds_blue_n_1;
  wire tmds_blue_n_2;
  wire tmds_blue_n_3;
  wire tmds_blue_n_4;
  wire tmds_blue_n_5;
  wire [8:0]tmds_out;
  wire tmds_red_n_0;
  wire tmds_red_n_2;
  wire tmds_red_n_3;
  wire tmds_red_n_4;
  wire tmds_red_n_5;
  wire \tmds_signal[0] ;
  wire \tmds_signal[1] ;
  wire \tmds_signal[2] ;
  wire [9:0]vcount_scaled;

initial begin
 $sdf_annotate("cpu_impl_netlist.sdf",,,,"tool_control");
end
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_blue
       (.I(\tmds_signal[0] ),
        .O(hdmi_tx_p[0]),
        .OB(hdmi_tx_n[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clock
       (.I(clk_pixel),
        .O(hdmi_clk_p),
        .OB(hdmi_clk_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_green
       (.I(\tmds_signal[1] ),
        .O(hdmi_tx_p[1]),
        .OB(hdmi_tx_n[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_red
       (.I(\tmds_signal[2] ),
        .O(hdmi_tx_p[2]),
        .OB(hdmi_tx_n[2]));
  tmds_serializer blue_ser
       (.Q(\tmds_10b[0] ),
        .RST0(RST0),
        .clk_pixel(clk_pixel),
        .clk_tmds(clk_5x),
        .\tmds_signal[0] (\tmds_signal[0] ));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF));
  tmds_serializer_0 green_ser
       (.Q(\tmds_10b[2] ),
        .RST0(RST0),
        .clk_pixel(clk_pixel),
        .clk_tmds(clk_5x),
        .\tmds_signal[1] (\tmds_signal[1] ));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  hdmi_clk_wiz_720p mhdmicw
       (.clk_100mhz(clk_100mhz),
        .clk_pixel(clk_pixel),
        .clk_tmds(clk_5x));
  video_sig_gen mvg
       (.A(vcount_scaled),
        .D({mvg_n_0,mvg_n_1}),
        .SR(btn_IBUF),
        .buf_sel(buf_sel),
        .clk_pixel(clk_pixel),
        .\hcount_out_reg[10]_0 (mvg_n_2),
        .\hcount_out_reg[10]_1 (mvg_n_3),
        .\hcount_out_reg[10]_2 (tmds_out[8]),
        .\hcount_out_reg[10]_3 (mvg_n_5),
        .\hcount_out_reg[10]_4 (hcount_scaled),
        .led_OBUF(led_OBUF[1:0]),
        .nf_out_reg_0(mvg_n_27),
        .\tmds_out_reg[9] (rast_n_10),
        .\tmds_out_reg[9]_0 (tmds_blue_n_5),
        .\tmds_out_reg[9]_1 (rast_n_9));
  rasterizer rast
       (.A(vcount_scaled),
        .D({rast_n_1,rast_n_2,rast_n_3,rast_n_4,rast_n_5,rast_n_6,rast_n_7,rast_n_8}),
        .Q({tmds_blue_n_1,tmds_blue_n_2,tmds_blue_n_3,tmds_blue_n_4}),
        .SR(btn_IBUF),
        .buf_sel(buf_sel),
        .buf_sel_reg_0(mvg_n_27),
        .clk_pixel(clk_pixel),
        .\hcount_in_pipe_reg[0][10]_0 (hcount_scaled),
        .led_OBUF(led_OBUF[0]),
        .\output_register.doutb_reg_reg[14] (rast_n_9),
        .\output_register.doutb_reg_reg[15] (rast_n_28),
        .\output_register.doutb_reg_reg[15]_0 (rast_n_29),
        .\output_register.doutb_reg_reg[15]_1 (rast_n_30),
        .\tally_reg[1] (tmds_red_n_0),
        .\tally_reg[1]_0 ({p_0_in,tmds_red_n_2,tmds_red_n_3,tmds_red_n_4}),
        .\tally_reg[3] (tmds_red_n_5),
        .\tally_reg[3]_0 (tmds_blue_n_0),
        .\tally_reg[4] (rast_n_10),
        .\tally_reg[4]_0 ({rast_n_11,tmds_out[7:6],rast_n_14,tmds_out[4:3],rast_n_17,tmds_out[1:0]}),
        .\tally_reg[4]_1 (p_1_in),
        .\tally_reg[4]_2 ({rast_n_24,rast_n_25,rast_n_26,rast_n_27}),
        .\tmds_out_reg[2] (tmds_blue_n_5),
        .\tmds_out_reg[2]_0 (mvg_n_3),
        .\tmds_out_reg[2]_1 (mvg_n_2));
  tmds_serializer_1 red_ser
       (.Q(\tmds_10b[2] ),
        .RST0(RST0),
        .SR(btn_IBUF),
        .clk_pixel(clk_pixel),
        .clk_tmds(clk_5x),
        .\tmds_signal[2] (\tmds_signal[2] ));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(led_OBUF[0]));
  IBUF \sw_IBUF[10]_inst 
       (.I(sw[10]),
        .O(led_OBUF[10]));
  IBUF \sw_IBUF[11]_inst 
       (.I(sw[11]),
        .O(led_OBUF[11]));
  IBUF \sw_IBUF[12]_inst 
       (.I(sw[12]),
        .O(led_OBUF[12]));
  IBUF \sw_IBUF[13]_inst 
       (.I(sw[13]),
        .O(led_OBUF[13]));
  IBUF \sw_IBUF[14]_inst 
       (.I(sw[14]),
        .O(led_OBUF[14]));
  IBUF \sw_IBUF[15]_inst 
       (.I(sw[15]),
        .O(led_OBUF[15]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(led_OBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(led_OBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(led_OBUF[3]));
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(led_OBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(led_OBUF[5]));
  IBUF \sw_IBUF[6]_inst 
       (.I(sw[6]),
        .O(led_OBUF[6]));
  IBUF \sw_IBUF[7]_inst 
       (.I(sw[7]),
        .O(led_OBUF[7]));
  IBUF \sw_IBUF[8]_inst 
       (.I(sw[8]),
        .O(led_OBUF[8]));
  IBUF \sw_IBUF[9]_inst 
       (.I(sw[9]),
        .O(led_OBUF[9]));
  tmds_encoder tmds_blue
       (.D({rast_n_24,rast_n_25,rast_n_26,rast_n_27}),
        .Q({tmds_blue_n_1,tmds_blue_n_2,tmds_blue_n_3,tmds_blue_n_4}),
        .SR(mvg_n_5),
        .clk_pixel(clk_pixel),
        .\tally_reg[3]_0 (tmds_blue_n_0),
        .\tally_reg[3]_1 (rast_n_30),
        .\tally_reg[4]_0 (tmds_blue_n_5),
        .\tmds_out_reg[0]_0 (btn_IBUF),
        .\tmds_out_reg[2]_0 (rast_n_28),
        .\tmds_out_reg[2]_1 (rast_n_29),
        .\tmds_out_reg[9]_0 (\tmds_10b[0] ),
        .\tmds_out_reg[9]_1 ({mvg_n_0,mvg_n_1,rast_n_1,rast_n_2,rast_n_3,rast_n_4,rast_n_5,rast_n_6,rast_n_7,rast_n_8}));
  tmds_encoder_2 tmds_red
       (.D(p_1_in),
        .Q({p_0_in,tmds_red_n_2,tmds_red_n_3,tmds_red_n_4}),
        .SR(mvg_n_5),
        .clk_pixel(clk_pixel),
        .\tally_reg[1]_0 (rast_n_28),
        .\tally_reg[1]_1 (rast_n_29),
        .\tally_reg[3]_0 (tmds_red_n_5),
        .\tally_reg[3]_1 (rast_n_30),
        .\tally_reg[4]_0 (tmds_red_n_0),
        .\tmds_out_reg[9]_0 (\tmds_10b[2] ),
        .\tmds_out_reg[9]_1 (btn_IBUF),
        .\tmds_out_reg[9]_2 ({rast_n_11,tmds_out[8:6],rast_n_14,tmds_out[4:3],rast_n_17,tmds_out[1:0]}));
endmodule

module video_sig_gen
   (D,
    \hcount_out_reg[10]_0 ,
    \hcount_out_reg[10]_1 ,
    \hcount_out_reg[10]_2 ,
    \hcount_out_reg[10]_3 ,
    \hcount_out_reg[10]_4 ,
    A,
    nf_out_reg_0,
    SR,
    clk_pixel,
    \tmds_out_reg[9] ,
    \tmds_out_reg[9]_0 ,
    \tmds_out_reg[9]_1 ,
    led_OBUF,
    buf_sel);
  output [1:0]D;
  output \hcount_out_reg[10]_0 ;
  output \hcount_out_reg[10]_1 ;
  output [0:0]\hcount_out_reg[10]_2 ;
  output [0:0]\hcount_out_reg[10]_3 ;
  output [10:0]\hcount_out_reg[10]_4 ;
  output [9:0]A;
  output nf_out_reg_0;
  input [0:0]SR;
  input clk_pixel;
  input \tmds_out_reg[9] ;
  input \tmds_out_reg[9]_0 ;
  input \tmds_out_reg[9]_1 ;
  input [1:0]led_OBUF;
  input buf_sel;

  wire [9:0]A;
  wire [1:0]D;
  wire [0:0]SR;
  wire ad_out0;
  wire buf_sel;
  wire clk_pixel;
  wire [10:0]hcount;
  wire \hcount_out[10]_i_1_n_0 ;
  wire \hcount_out[4]_i_1_n_0 ;
  wire \hcount_out[8]_i_2_n_0 ;
  wire \hcount_out_reg[10]_0 ;
  wire [0:0]\hcount_out_reg[10]_2 ;
  wire [0:0]\hcount_out_reg[10]_3 ;
  wire [10:0]\hcount_out_reg[10]_4 ;
  wire [1:0]led_OBUF;
  wire new_frame;
  wire nf_out0;
  wire nf_out_i_2_n_0;
  wire nf_out_i_3_n_0;
  wire nf_out_i_4_n_0;
  wire nf_out_reg_0;
  wire [10:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire prev_rst;
  wire \tally[4]_i_10_n_0 ;
  wire \tmds_out[9]_i_3_n_0 ;
  wire \tmds_out[9]_i_4_n_0 ;
  wire \tmds_out[9]_i_5_n_0 ;
  wire \tmds_out[9]_i_6_n_0 ;
  wire \tmds_out[9]_i_7_n_0 ;
  wire \tmds_out_reg[9] ;
  wire \tmds_out_reg[9]_0 ;
  wire \tmds_out_reg[9]_1 ;
  wire [9:0]vcount;
  wire \vcount_out[9]_i_1_n_0 ;
  wire \vcount_out[9]_i_2_n_0 ;
  wire \vcount_out[9]_i_4_n_0 ;
  wire \vcount_out[9]_i_5_n_0 ;
  wire \vcount_out[9]_i_6_n_0 ;
  wire \vcount_out[9]_i_7_n_0 ;
  wire \vcount_out[9]_i_8_n_0 ;

  assign \hcount_out_reg[10]_1  = \hcount_out_reg[10]_3 ;
  LUT2 #(
    .INIT(4'h6)) 
    buf_sel_i_1
       (.I0(new_frame),
        .I1(buf_sel),
        .O(nf_out_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][0]_i_1 
       (.I0(hcount[1]),
        .I1(led_OBUF[1]),
        .I2(hcount[2]),
        .I3(led_OBUF[0]),
        .I4(hcount[0]),
        .O(\hcount_out_reg[10]_4 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \hcount_in_pipe[0][10]_i_1 
       (.I0(hcount[10]),
        .I1(led_OBUF[0]),
        .O(\hcount_out_reg[10]_4 [10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][1]_i_1 
       (.I0(hcount[2]),
        .I1(led_OBUF[1]),
        .I2(hcount[3]),
        .I3(led_OBUF[0]),
        .I4(hcount[1]),
        .O(\hcount_out_reg[10]_4 [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][2]_i_1 
       (.I0(hcount[3]),
        .I1(led_OBUF[1]),
        .I2(hcount[4]),
        .I3(led_OBUF[0]),
        .I4(hcount[2]),
        .O(\hcount_out_reg[10]_4 [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][3]_i_1 
       (.I0(hcount[4]),
        .I1(led_OBUF[1]),
        .I2(hcount[5]),
        .I3(led_OBUF[0]),
        .I4(hcount[3]),
        .O(\hcount_out_reg[10]_4 [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][4]_i_1 
       (.I0(hcount[5]),
        .I1(led_OBUF[1]),
        .I2(hcount[6]),
        .I3(led_OBUF[0]),
        .I4(hcount[4]),
        .O(\hcount_out_reg[10]_4 [4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][5]_i_1 
       (.I0(hcount[6]),
        .I1(led_OBUF[1]),
        .I2(hcount[7]),
        .I3(led_OBUF[0]),
        .I4(hcount[5]),
        .O(\hcount_out_reg[10]_4 [5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][6]_i_1 
       (.I0(hcount[7]),
        .I1(led_OBUF[1]),
        .I2(hcount[8]),
        .I3(led_OBUF[0]),
        .I4(hcount[6]),
        .O(\hcount_out_reg[10]_4 [6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][7]_i_1 
       (.I0(hcount[8]),
        .I1(led_OBUF[1]),
        .I2(hcount[9]),
        .I3(led_OBUF[0]),
        .I4(hcount[7]),
        .O(\hcount_out_reg[10]_4 [7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][8]_i_1 
       (.I0(hcount[9]),
        .I1(led_OBUF[1]),
        .I2(hcount[10]),
        .I3(led_OBUF[0]),
        .I4(hcount[8]),
        .O(\hcount_out_reg[10]_4 [8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \hcount_in_pipe[0][9]_i_1 
       (.I0(hcount[10]),
        .I1(led_OBUF[1]),
        .I2(led_OBUF[0]),
        .I3(hcount[9]),
        .O(\hcount_out_reg[10]_4 [9]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hcount_out[0]_i_1 
       (.I0(hcount[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \hcount_out[10]_i_1 
       (.I0(SR),
        .I1(\vcount_out[9]_i_2_n_0 ),
        .O(\hcount_out[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hcount_out[10]_i_2 
       (.I0(prev_rst),
        .O(ad_out0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hcount_out[10]_i_3 
       (.I0(hcount[10]),
        .I1(hcount[8]),
        .I2(nf_out_i_2_n_0),
        .I3(hcount[9]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcount_out[1]_i_1 
       (.I0(hcount[0]),
        .I1(hcount[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hcount_out[2]_i_1 
       (.I0(hcount[2]),
        .I1(hcount[1]),
        .I2(hcount[0]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hcount_out[3]_i_1 
       (.I0(hcount[3]),
        .I1(hcount[0]),
        .I2(hcount[2]),
        .I3(hcount[1]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hcount_out[4]_i_1 
       (.I0(hcount[4]),
        .I1(hcount[1]),
        .I2(hcount[2]),
        .I3(hcount[0]),
        .I4(hcount[3]),
        .O(\hcount_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcount_out[5]_i_1 
       (.I0(hcount[5]),
        .I1(hcount[3]),
        .I2(hcount[0]),
        .I3(hcount[2]),
        .I4(hcount[1]),
        .I5(hcount[4]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \hcount_out[6]_i_1 
       (.I0(hcount[6]),
        .I1(hcount[4]),
        .I2(\hcount_out[8]_i_2_n_0 ),
        .I3(hcount[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \hcount_out[7]_i_1 
       (.I0(hcount[7]),
        .I1(\hcount_out[8]_i_2_n_0 ),
        .I2(hcount[4]),
        .I3(hcount[5]),
        .I4(hcount[6]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \hcount_out[8]_i_1 
       (.I0(hcount[8]),
        .I1(hcount[6]),
        .I2(hcount[5]),
        .I3(hcount[4]),
        .I4(\hcount_out[8]_i_2_n_0 ),
        .I5(hcount[7]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hcount_out[8]_i_2 
       (.I0(hcount[3]),
        .I1(hcount[0]),
        .I2(hcount[2]),
        .I3(hcount[1]),
        .O(\hcount_out[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hcount_out[9]_i_1 
       (.I0(hcount[9]),
        .I1(nf_out_i_2_n_0),
        .I2(hcount[8]),
        .O(p_0_in[9]));
  FDRE \hcount_out_reg[0] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[0]),
        .Q(hcount[0]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[10] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[10]),
        .Q(hcount[10]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[1] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[1]),
        .Q(hcount[1]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[2] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[2]),
        .Q(hcount[2]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[3] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[3]),
        .Q(hcount[3]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[4] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(\hcount_out[4]_i_1_n_0 ),
        .Q(hcount[4]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[5] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[5]),
        .Q(hcount[5]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[6] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[6]),
        .Q(hcount[6]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[7] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[7]),
        .Q(hcount[7]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[8] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[8]),
        .Q(hcount[8]),
        .R(\hcount_out[10]_i_1_n_0 ));
  FDRE \hcount_out_reg[9] 
       (.C(clk_pixel),
        .CE(ad_out0),
        .D(p_0_in[9]),
        .Q(hcount[9]),
        .R(\hcount_out[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    nf_out_i_1
       (.I0(nf_out_i_2_n_0),
        .I1(nf_out_i_3_n_0),
        .I2(hcount[10]),
        .I3(vcount[8]),
        .I4(vcount[4]),
        .I5(nf_out_i_4_n_0),
        .O(nf_out0));
  LUT5 #(
    .INIT(32'h20000000)) 
    nf_out_i_2
       (.I0(hcount[7]),
        .I1(\hcount_out[8]_i_2_n_0 ),
        .I2(hcount[4]),
        .I3(hcount[5]),
        .I4(hcount[6]),
        .O(nf_out_i_2_n_0));
  LUT4 #(
    .INIT(16'hF7FF)) 
    nf_out_i_3
       (.I0(vcount[6]),
        .I1(vcount[7]),
        .I2(vcount[5]),
        .I3(vcount[9]),
        .O(nf_out_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    nf_out_i_4
       (.I0(vcount[1]),
        .I1(vcount[0]),
        .I2(vcount[3]),
        .I3(vcount[2]),
        .I4(hcount[8]),
        .I5(hcount[9]),
        .O(nf_out_i_4_n_0));
  FDRE nf_out_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(nf_out0),
        .Q(new_frame),
        .R(SR));
  FDRE prev_rst_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(SR),
        .Q(prev_rst),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    read_addr10_i_1
       (.I0(vcount[9]),
        .I1(led_OBUF[0]),
        .O(A[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_10
       (.I0(vcount[1]),
        .I1(led_OBUF[0]),
        .I2(vcount[0]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_2
       (.I0(vcount[9]),
        .I1(led_OBUF[0]),
        .I2(vcount[8]),
        .O(A[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_3
       (.I0(vcount[8]),
        .I1(led_OBUF[0]),
        .I2(vcount[7]),
        .O(A[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_4
       (.I0(vcount[7]),
        .I1(led_OBUF[0]),
        .I2(vcount[6]),
        .O(A[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_5
       (.I0(vcount[6]),
        .I1(led_OBUF[0]),
        .I2(vcount[5]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_6
       (.I0(vcount[5]),
        .I1(led_OBUF[0]),
        .I2(vcount[4]),
        .O(A[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_7
       (.I0(vcount[4]),
        .I1(led_OBUF[0]),
        .I2(vcount[3]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_8
       (.I0(vcount[3]),
        .I1(led_OBUF[0]),
        .I2(vcount[2]),
        .O(A[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_9
       (.I0(vcount[2]),
        .I1(led_OBUF[0]),
        .I2(vcount[1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAA80808000)) 
    \tally[4]_i_10 
       (.I0(vcount[9]),
        .I1(vcount[6]),
        .I2(vcount[7]),
        .I3(vcount[5]),
        .I4(vcount[4]),
        .I5(vcount[8]),
        .O(\tally[4]_i_10_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEA)) 
    \tally[4]_i_3 
       (.I0(\tally[4]_i_10_n_0 ),
        .I1(hcount[10]),
        .I2(hcount[9]),
        .I3(hcount[8]),
        .I4(SR),
        .I5(prev_rst),
        .O(\hcount_out_reg[10]_3 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \tmds_out[8]_i_1 
       (.I0(\tmds_out_reg[9]_1 ),
        .I1(\hcount_out_reg[10]_3 ),
        .I2(\hcount_out_reg[10]_0 ),
        .O(D[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tmds_out[8]_i_1__0 
       (.I0(\hcount_out_reg[10]_3 ),
        .I1(\tmds_out_reg[9]_1 ),
        .O(\hcount_out_reg[10]_2 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h00FF0074FF007474)) 
    \tmds_out[9]_i_1 
       (.I0(\tmds_out_reg[9] ),
        .I1(\tmds_out_reg[9]_0 ),
        .I2(\tmds_out_reg[9]_1 ),
        .I3(\hcount_out_reg[10]_0 ),
        .I4(\hcount_out_reg[10]_3 ),
        .I5(\tmds_out[9]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \tmds_out[9]_i_2 
       (.I0(\tmds_out[9]_i_4_n_0 ),
        .I1(hcount[10]),
        .I2(hcount[8]),
        .I3(SR),
        .I4(hcount[9]),
        .I5(\tmds_out[9]_i_5_n_0 ),
        .O(\hcount_out_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0057)) 
    \tmds_out[9]_i_3 
       (.I0(vcount[2]),
        .I1(vcount[1]),
        .I2(vcount[0]),
        .I3(vcount[3]),
        .I4(\tmds_out[9]_i_6_n_0 ),
        .I5(nf_out_i_3_n_0),
        .O(\tmds_out[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8A8A8A8A8)) 
    \tmds_out[9]_i_4 
       (.I0(hcount[7]),
        .I1(hcount[6]),
        .I2(hcount[5]),
        .I3(\tmds_out[9]_i_7_n_0 ),
        .I4(hcount[3]),
        .I5(hcount[4]),
        .O(\tmds_out[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000007FFFFFF)) 
    \tmds_out[9]_i_5 
       (.I0(hcount[3]),
        .I1(\tmds_out[9]_i_7_n_0 ),
        .I2(hcount[4]),
        .I3(hcount[5]),
        .I4(hcount[6]),
        .I5(hcount[7]),
        .O(\tmds_out[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0FFFF)) 
    \tmds_out[9]_i_6 
       (.I0(vcount[1]),
        .I1(vcount[2]),
        .I2(vcount[3]),
        .I3(vcount[8]),
        .I4(vcount[4]),
        .I5(SR),
        .O(\tmds_out[9]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \tmds_out[9]_i_7 
       (.I0(hcount[2]),
        .I1(hcount[1]),
        .O(\tmds_out[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vcount_out[0]_i_1 
       (.I0(vcount[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcount_out[1]_i_1 
       (.I0(vcount[0]),
        .I1(vcount[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vcount_out[2]_i_1 
       (.I0(vcount[2]),
        .I1(vcount[1]),
        .I2(vcount[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vcount_out[3]_i_1 
       (.I0(vcount[3]),
        .I1(vcount[0]),
        .I2(vcount[1]),
        .I3(vcount[2]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vcount_out[4]_i_1 
       (.I0(vcount[4]),
        .I1(vcount[3]),
        .I2(vcount[2]),
        .I3(vcount[1]),
        .I4(vcount[0]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vcount_out[5]_i_1 
       (.I0(vcount[5]),
        .I1(vcount[0]),
        .I2(vcount[1]),
        .I3(vcount[2]),
        .I4(vcount[3]),
        .I5(vcount[4]),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \vcount_out[6]_i_1 
       (.I0(vcount[6]),
        .I1(\vcount_out[9]_i_7_n_0 ),
        .I2(vcount[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vcount_out[7]_i_1 
       (.I0(vcount[7]),
        .I1(vcount[5]),
        .I2(\vcount_out[9]_i_7_n_0 ),
        .I3(vcount[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vcount_out[8]_i_1 
       (.I0(vcount[8]),
        .I1(vcount[5]),
        .I2(vcount[6]),
        .I3(vcount[7]),
        .I4(\vcount_out[9]_i_7_n_0 ),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'hEEEAAAAA)) 
    \vcount_out[9]_i_1 
       (.I0(SR),
        .I1(vcount[9]),
        .I2(\vcount_out[9]_i_4_n_0 ),
        .I3(vcount[8]),
        .I4(\vcount_out[9]_i_2_n_0 ),
        .O(\vcount_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFE000000000000)) 
    \vcount_out[9]_i_2 
       (.I0(hcount[8]),
        .I1(hcount[7]),
        .I2(\vcount_out[9]_i_5_n_0 ),
        .I3(\vcount_out[9]_i_6_n_0 ),
        .I4(hcount[9]),
        .I5(hcount[10]),
        .O(\vcount_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vcount_out[9]_i_3 
       (.I0(vcount[9]),
        .I1(vcount[8]),
        .I2(\vcount_out[9]_i_7_n_0 ),
        .I3(vcount[7]),
        .I4(vcount[6]),
        .I5(vcount[5]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h00000000FFFFE000)) 
    \vcount_out[9]_i_4 
       (.I0(vcount[0]),
        .I1(vcount[1]),
        .I2(vcount[2]),
        .I3(vcount[3]),
        .I4(vcount[4]),
        .I5(\vcount_out[9]_i_8_n_0 ),
        .O(\vcount_out[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \vcount_out[9]_i_5 
       (.I0(hcount[4]),
        .I1(hcount[5]),
        .I2(hcount[6]),
        .O(\vcount_out[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \vcount_out[9]_i_6 
       (.I0(hcount[1]),
        .I1(hcount[0]),
        .I2(hcount[2]),
        .I3(hcount[3]),
        .O(\vcount_out[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \vcount_out[9]_i_7 
       (.I0(vcount[4]),
        .I1(vcount[3]),
        .I2(vcount[2]),
        .I3(vcount[1]),
        .I4(vcount[0]),
        .O(\vcount_out[9]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \vcount_out[9]_i_8 
       (.I0(vcount[5]),
        .I1(vcount[6]),
        .I2(vcount[7]),
        .O(\vcount_out[9]_i_8_n_0 ));
  FDRE \vcount_out_reg[0] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(vcount[0]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[1] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(vcount[1]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[2] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(vcount[2]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[3] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(vcount[3]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[4] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(vcount[4]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[5] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(vcount[5]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[6] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(vcount[6]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[7] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(vcount[7]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[8] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(vcount[8]),
        .R(\vcount_out[9]_i_1_n_0 ));
  FDRE \vcount_out_reg[9] 
       (.C(clk_pixel),
        .CE(\vcount_out[9]_i_2_n_0 ),
        .D(p_0_in__0[9]),
        .Q(vcount[9]),
        .R(\vcount_out[9]_i_1_n_0 ));
endmodule

module xilinx_true_dual_port_read_first_2_clock_ram
   (D,
    \output_register.doutb_reg_reg[14]_0 ,
    \tally_reg[4] ,
    \output_register.doutb_reg_reg[14]_1 ,
    \output_register.doutb_reg_reg[14]_2 ,
    \output_register.doutb_reg_reg[14]_3 ,
    \tally_reg[4]_0 ,
    \tally_reg[4]_1 ,
    \tally_reg[4]_2 ,
    \output_register.doutb_reg_reg[15]_0 ,
    \output_register.doutb_reg_reg[15]_1 ,
    \output_register.doutb_reg_reg[15]_2 ,
    \output_register.doutb_reg_reg[15]_3 ,
    \output_register.doutb_reg_reg[14]_4 ,
    \output_register.doutb_reg_reg[14]_5 ,
    \tally_reg[1] ,
    \tmds_out_reg[7] ,
    \tmds_out_reg[7]_0 ,
    \tmds_out_reg[6] ,
    \tmds_out_reg[1] ,
    \tally_reg[1]_0 ,
    read_addr10__0,
    BRAM_reg_0_9_0,
    P,
    x_iter,
    \tally_reg[3] ,
    \tally_reg[3]_0 ,
    Q,
    \tally_reg[1]_1 ,
    \tally[4]_i_6__0_0 ,
    \tally_reg[1]_2 ,
    \tally[4]_i_4_0 ,
    \tmds_out_reg[7]_1 ,
    \tmds_out_reg[3] ,
    \tmds_out_reg[5] ,
    \tmds_out_reg[3]_0 ,
    led_OBUF,
    \tmds_out_reg[0] ,
    \tally_reg[1]_3 ,
    clk_pixel,
    BRAM_reg_1_11_0,
    SR,
    pwropt,
    pwropt_1);
  output [6:0]D;
  output \output_register.doutb_reg_reg[14]_0 ;
  output \tally_reg[4] ;
  output \output_register.doutb_reg_reg[14]_1 ;
  output \output_register.doutb_reg_reg[14]_2 ;
  output \output_register.doutb_reg_reg[14]_3 ;
  output [8:0]\tally_reg[4]_0 ;
  output [3:0]\tally_reg[4]_1 ;
  output [3:0]\tally_reg[4]_2 ;
  output \output_register.doutb_reg_reg[15]_0 ;
  output \output_register.doutb_reg_reg[15]_1 ;
  output \output_register.doutb_reg_reg[15]_2 ;
  output \output_register.doutb_reg_reg[15]_3 ;
  output \output_register.doutb_reg_reg[14]_4 ;
  output \output_register.doutb_reg_reg[14]_5 ;
  input \tally_reg[1] ;
  input \tmds_out_reg[7] ;
  input \tmds_out_reg[7]_0 ;
  input \tmds_out_reg[6] ;
  input \tmds_out_reg[1] ;
  input \tally_reg[1]_0 ;
  input [13:0]read_addr10__0;
  input BRAM_reg_0_9_0;
  input [16:0]P;
  input [2:0]x_iter;
  input \tally_reg[3] ;
  input \tally_reg[3]_0 ;
  input [3:0]Q;
  input \tally_reg[1]_1 ;
  input \tally[4]_i_6__0_0 ;
  input [3:0]\tally_reg[1]_2 ;
  input \tally[4]_i_4_0 ;
  input \tmds_out_reg[7]_1 ;
  input \tmds_out_reg[3] ;
  input \tmds_out_reg[5] ;
  input \tmds_out_reg[3]_0 ;
  input [0:0]led_OBUF;
  input \tmds_out_reg[0] ;
  input \tally_reg[1]_3 ;
  input clk_pixel;
  input BRAM_reg_1_11_0;
  input [0:0]SR;
  output pwropt;
  output pwropt_1;

  wire BRAM_reg_0_11_ENBWREN_cooolgate_en_sig_7;
  wire BRAM_reg_0_11_n_0;
  wire BRAM_reg_0_11_n_1;
  wire BRAM_reg_0_9_0;
  wire BRAM_reg_0_9_ENBWREN_cooolgate_en_sig_8;
  wire BRAM_reg_0_9_i_1_n_0;
  wire BRAM_reg_0_9_n_0;
  wire BRAM_reg_0_9_n_1;
  wire BRAM_reg_1_11_0;
  wire BRAM_reg_1_11_n_67;
  wire BRAM_reg_1_9_n_67;
  wire BRAM_reg_2_11_ENBWREN_cooolgate_en_sig_10;
  wire BRAM_reg_2_11_n_0;
  wire BRAM_reg_2_11_n_1;
  wire BRAM_reg_2_9_ENBWREN_cooolgate_en_sig_11;
  wire BRAM_reg_2_9_n_0;
  wire BRAM_reg_2_9_n_1;
  wire BRAM_reg_3_11_n_67;
  wire BRAM_reg_3_9_n_67;
  wire BRAM_reg_mux_sel_b_pos_0__8_n_0;
  wire [6:0]D;
  wire [16:0]P;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk_pixel;
  wire [0:0]led_OBUF;
  wire \output_register.doutb_reg_reg[14]_0 ;
  wire \output_register.doutb_reg_reg[14]_1 ;
  wire \output_register.doutb_reg_reg[14]_2 ;
  wire \output_register.doutb_reg_reg[14]_3 ;
  wire \output_register.doutb_reg_reg[14]_4 ;
  wire \output_register.doutb_reg_reg[14]_5 ;
  wire \output_register.doutb_reg_reg[15]_0 ;
  wire \output_register.doutb_reg_reg[15]_1 ;
  wire \output_register.doutb_reg_reg[15]_2 ;
  wire \output_register.doutb_reg_reg[15]_3 ;
  wire [15:14]ram_data_b;
  wire \rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_5 ;
  wire \rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_6 ;
  wire \rast/z_buffer0/BRAM_reg_2_11_cooolgate_en_sig_9 ;
  wire [16:0]read_addr0;
  wire [13:0]read_addr10__0;
  wire \tally[1]_i_4_n_0 ;
  wire \tally[1]_i_5_n_0 ;
  wire \tally[1]_i_6_n_0 ;
  wire \tally[2]_i_2__0_n_0 ;
  wire \tally[2]_i_2_n_0 ;
  wire \tally[2]_i_3__0_n_0 ;
  wire \tally[2]_i_3_n_0 ;
  wire \tally[2]_i_4__0_n_0 ;
  wire \tally[2]_i_4_n_0 ;
  wire \tally[2]_i_5__0_n_0 ;
  wire \tally[2]_i_5_n_0 ;
  wire \tally[3]_i_2__0_n_0 ;
  wire \tally[3]_i_2_n_0 ;
  wire \tally[3]_i_3__0_n_0 ;
  wire \tally[3]_i_3_n_0 ;
  wire \tally[3]_i_5__0_n_0 ;
  wire \tally[3]_i_5_n_0 ;
  wire \tally[3]_i_6__0_n_0 ;
  wire \tally[3]_i_6_n_0 ;
  wire \tally[3]_i_7__0_n_0 ;
  wire \tally[3]_i_7_n_0 ;
  wire \tally[3]_i_8_n_0 ;
  wire \tally[3]_i_9_n_0 ;
  wire \tally[4]_i_10__0_n_0 ;
  wire \tally[4]_i_11__0_n_0 ;
  wire \tally[4]_i_11_n_0 ;
  wire \tally[4]_i_12__0_n_0 ;
  wire \tally[4]_i_12_n_0 ;
  wire \tally[4]_i_13__0_n_0 ;
  wire \tally[4]_i_13_n_0 ;
  wire \tally[4]_i_16_n_0 ;
  wire \tally[4]_i_17_n_0 ;
  wire \tally[4]_i_19_n_0 ;
  wire \tally[4]_i_20_n_0 ;
  wire \tally[4]_i_21_n_0 ;
  wire \tally[4]_i_23_n_0 ;
  wire \tally[4]_i_24_n_0 ;
  wire \tally[4]_i_25_n_0 ;
  wire \tally[4]_i_27_n_0 ;
  wire \tally[4]_i_2__0_n_0 ;
  wire \tally[4]_i_4_0 ;
  wire \tally[4]_i_4__0_n_0 ;
  wire \tally[4]_i_4_n_0 ;
  wire \tally[4]_i_5_n_0 ;
  wire \tally[4]_i_6__0_0 ;
  wire \tally[4]_i_6__0_n_0 ;
  wire \tally[4]_i_6_n_0 ;
  wire \tally[4]_i_7__0_n_0 ;
  wire \tally[4]_i_8__0_n_0 ;
  wire \tally[4]_i_8_n_0 ;
  wire \tally[4]_i_9__0_n_0 ;
  wire \tally[4]_i_9_n_0 ;
  wire \tally_reg[1] ;
  wire \tally_reg[1]_0 ;
  wire \tally_reg[1]_1 ;
  wire [3:0]\tally_reg[1]_2 ;
  wire \tally_reg[1]_3 ;
  wire \tally_reg[3] ;
  wire \tally_reg[3]_0 ;
  wire \tally_reg[4] ;
  wire [8:0]\tally_reg[4]_0 ;
  wire [3:0]\tally_reg[4]_1 ;
  wire [3:0]\tally_reg[4]_2 ;
  wire \tmds_out[2]_i_3_n_0 ;
  wire \tmds_out[3]_i_2_n_0 ;
  wire \tmds_out[5]_i_2__0_n_0 ;
  wire \tmds_out[5]_i_3_n_0 ;
  wire \tmds_out[5]_i_4__0_n_0 ;
  wire \tmds_out[5]_i_4_n_0 ;
  wire \tmds_out[5]_i_5_n_0 ;
  wire \tmds_out[5]_i_6_n_0 ;
  wire \tmds_out_reg[0] ;
  wire \tmds_out_reg[3] ;
  wire \tmds_out_reg[3]_0 ;
  wire \tmds_out_reg[5] ;
  wire \tmds_out_reg[6] ;
  wire \tmds_out_reg[7] ;
  wire \tmds_out_reg[7]_0 ;
  wire \tmds_out_reg[7]_1 ;
  wire [2:0]x_iter;
  wire NLW_BRAM_reg_0_11_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_11_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_0_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_0_11_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_0_9_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_9_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_0_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_0_9_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_1_11_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_1_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_1_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_1_11_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_1_9_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_1_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_1_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_1_9_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_2_11_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_11_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_2_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_2_11_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_2_9_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_9_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_2_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_2_9_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_3_11_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_3_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_3_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_3_11_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_3_9_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_3_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_3_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_3_9_RDADDRECC_UNCONNECTED;

  assign pwropt = \rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_6 ;
  assign pwropt_1 = \rast/z_buffer0/BRAM_reg_2_11_cooolgate_en_sig_9 ;
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_mux_sel_b_pos_0__8_i_1
       (.I0(read_addr10__0[13]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[16]),
        .O(read_addr0[16]));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_0_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_0_11
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_0_11_n_0),
        .CASCADEOUTB(BRAM_reg_0_11_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_0_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_0_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_0_11_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_0_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_0_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_0_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(BRAM_reg_1_11_0),
        .ENBWREN(BRAM_reg_0_11_ENBWREN_cooolgate_en_sig_7),
        .INJECTDBITERR(NLW_BRAM_reg_0_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_0_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_0_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_0_11_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,BRAM_reg_1_11_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hfffd0000)) 
    BRAM_reg_0_11_ENBWREN_cooolgate_en_gate_11
       (.I0(P[15]),
        .I1(\rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_6 ),
        .I2(BRAM_reg_0_9_0),
        .I3(\rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_5 ),
        .I4(BRAM_reg_0_9_i_1_n_0),
        .O(BRAM_reg_0_11_ENBWREN_cooolgate_en_sig_7));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_0_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_0_9
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_0_9_n_0),
        .CASCADEOUTB(BRAM_reg_0_9_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_0_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_0_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_0_9_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_0_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_0_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_0_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(BRAM_reg_1_11_0),
        .ENBWREN(BRAM_reg_0_9_ENBWREN_cooolgate_en_sig_8),
        .INJECTDBITERR(NLW_BRAM_reg_0_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_0_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_0_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_0_9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,BRAM_reg_1_11_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hfffd0000)) 
    BRAM_reg_0_9_ENBWREN_cooolgate_en_gate_13
       (.I0(P[15]),
        .I1(\rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_6 ),
        .I2(BRAM_reg_0_9_0),
        .I3(\rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_5 ),
        .I4(BRAM_reg_0_9_i_1_n_0),
        .O(BRAM_reg_0_9_ENBWREN_cooolgate_en_sig_8));
  LUT3 #(
    .INIT(8'h1D)) 
    BRAM_reg_0_9_i_1
       (.I0(P[16]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[13]),
        .O(BRAM_reg_0_9_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_10
       (.I0(read_addr10__0[4]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[7]),
        .O(read_addr0[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_11
       (.I0(read_addr10__0[3]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[6]),
        .O(read_addr0[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_12
       (.I0(read_addr10__0[2]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[5]),
        .O(read_addr0[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_13
       (.I0(read_addr10__0[1]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[4]),
        .O(read_addr0[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_14
       (.I0(read_addr10__0[0]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[3]),
        .O(read_addr0[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_15
       (.I0(x_iter[2]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[2]),
        .O(read_addr0[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_16
       (.I0(x_iter[1]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[1]),
        .O(read_addr0[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_17
       (.I0(x_iter[0]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[0]),
        .O(read_addr0[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_2
       (.I0(read_addr10__0[12]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[15]),
        .O(read_addr0[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_3
       (.I0(read_addr10__0[11]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[14]),
        .O(read_addr0[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_4
       (.I0(read_addr10__0[10]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[13]),
        .O(read_addr0[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_5
       (.I0(read_addr10__0[9]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[12]),
        .O(read_addr0[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_6
       (.I0(read_addr10__0[8]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[11]),
        .O(read_addr0[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_7
       (.I0(read_addr10__0[7]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[10]),
        .O(read_addr0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_8
       (.I0(read_addr10__0[6]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[9]),
        .O(read_addr0[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_9
       (.I0(read_addr10__0[5]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[8]),
        .O(read_addr0[8]));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_1_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_1_11
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr0[15:0]),
        .CASCADEINA(BRAM_reg_0_11_n_0),
        .CASCADEINB(BRAM_reg_0_11_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_1_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_1_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_1_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_1_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_1_11_DOBDO_UNCONNECTED[31:1],BRAM_reg_1_11_n_67}),
        .DOPADOP(NLW_BRAM_reg_1_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_1_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_1_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_BRAM_reg_1_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_1_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_1_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_1_11_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_1_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_1_9
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr0[15:0]),
        .CASCADEINA(BRAM_reg_0_9_n_0),
        .CASCADEINB(BRAM_reg_0_9_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_1_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_1_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_1_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_1_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_1_9_DOBDO_UNCONNECTED[31:1],BRAM_reg_1_9_n_67}),
        .DOPADOP(NLW_BRAM_reg_1_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_1_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_1_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_0_9_i_1_n_0),
        .INJECTDBITERR(NLW_BRAM_reg_1_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_1_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_1_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_1_9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_2_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_2_11
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_2_11_n_0),
        .CASCADEOUTB(BRAM_reg_2_11_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_2_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_2_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_2_11_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_2_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_2_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_2_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_2_11_ENBWREN_cooolgate_en_sig_10),
        .INJECTDBITERR(NLW_BRAM_reg_2_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_2_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_2_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_2_11_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hfff70000)) 
    BRAM_reg_2_11_ENBWREN_cooolgate_en_gate_16
       (.I0(P[15]),
        .I1(\rast/z_buffer0/BRAM_reg_2_11_cooolgate_en_sig_9 ),
        .I2(BRAM_reg_0_9_0),
        .I3(\rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_5 ),
        .I4(read_addr0[16]),
        .O(BRAM_reg_2_11_ENBWREN_cooolgate_en_sig_10));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_2_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_2_9
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr0[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_2_9_n_0),
        .CASCADEOUTB(BRAM_reg_2_9_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_2_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_2_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_2_9_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_2_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_2_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_2_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_2_9_ENBWREN_cooolgate_en_sig_11),
        .INJECTDBITERR(NLW_BRAM_reg_2_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_2_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_2_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_2_9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hfff70000)) 
    BRAM_reg_2_9_ENBWREN_cooolgate_en_gate_18
       (.I0(P[15]),
        .I1(\rast/z_buffer0/BRAM_reg_2_11_cooolgate_en_sig_9 ),
        .I2(BRAM_reg_0_9_0),
        .I3(\rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_5 ),
        .I4(read_addr0[16]),
        .O(BRAM_reg_2_9_ENBWREN_cooolgate_en_sig_11));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_3_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_3_11
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr0[15:0]),
        .CASCADEINA(BRAM_reg_2_11_n_0),
        .CASCADEINB(BRAM_reg_2_11_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_3_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_3_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_3_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_3_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_3_11_DOBDO_UNCONNECTED[31:1],BRAM_reg_3_11_n_67}),
        .DOPADOP(NLW_BRAM_reg_3_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_3_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_3_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(read_addr0[16]),
        .INJECTDBITERR(NLW_BRAM_reg_3_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_3_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_3_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_3_11_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_3_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_3_9
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr0[15:0]),
        .CASCADEINA(BRAM_reg_2_9_n_0),
        .CASCADEINB(BRAM_reg_2_9_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_3_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_3_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_3_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_3_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_3_9_DOBDO_UNCONNECTED[31:1],BRAM_reg_3_9_n_67}),
        .DOPADOP(NLW_BRAM_reg_3_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_3_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_3_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(read_addr0[16]),
        .INJECTDBITERR(NLW_BRAM_reg_3_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_3_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_3_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_3_9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE BRAM_reg_mux_sel_b_pos_0__8
       (.C(clk_pixel),
        .CE(1'b1),
        .D(read_addr0[16]),
        .Q(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_register.doutb_reg[14]_i_1 
       (.I0(BRAM_reg_3_9_n_67),
        .I1(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .I2(BRAM_reg_1_9_n_67),
        .O(ram_data_b[14]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_register.doutb_reg[15]_i_1 
       (.I0(BRAM_reg_3_11_n_67),
        .I1(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .I2(BRAM_reg_1_11_n_67),
        .O(ram_data_b[15]));
  FDRE #(
    .INIT(1'b0)) 
    \output_register.doutb_reg_reg[14] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(ram_data_b[14]),
        .Q(\output_register.doutb_reg_reg[14]_4 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \output_register.doutb_reg_reg[15] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(ram_data_b[15]),
        .Q(\output_register.doutb_reg_reg[15]_3 ),
        .R(SR));
  FDCE #(
    .INIT(1'b1)) 
    \rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_gate_10_cooolDelFlop 
       (.C(clk_pixel),
        .CE(1'b1),
        .CLR(1'b0),
        .D(P[16]),
        .Q(\rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_6 ));
  FDCE #(
    .INIT(1'b1)) 
    \rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_gate_9_cooolDelFlop 
       (.C(clk_pixel),
        .CE(1'b1),
        .CLR(1'b0),
        .D(BRAM_reg_0_9_0),
        .Q(\rast/z_buffer0/BRAM_reg_0_11_cooolgate_en_sig_5 ));
  FDCE #(
    .INIT(1'b0)) 
    \rast/z_buffer0/BRAM_reg_2_11_cooolgate_en_gate_15_cooolDelFlop 
       (.C(clk_pixel),
        .CE(1'b1),
        .CLR(1'b0),
        .D(P[16]),
        .Q(\rast/z_buffer0/BRAM_reg_2_11_cooolgate_en_sig_9 ));
  LUT5 #(
    .INIT(32'h69CC9633)) 
    \tally[1]_i_1 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1]_1 ),
        .I2(\tally_reg[4] ),
        .I3(\tally_reg[1] ),
        .I4(Q[0]),
        .O(\tally_reg[4]_2 [0]));
  LUT5 #(
    .INIT(32'h69CC9633)) 
    \tally[1]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1]_1 ),
        .I2(\tally[4]_i_5_n_0 ),
        .I3(\tally_reg[1]_0 ),
        .I4(\tally_reg[1]_2 [0]),
        .O(\tally_reg[4]_1 [0]));
  LUT5 #(
    .INIT(32'hC0D4D4FC)) 
    \tally[1]_i_2 
       (.I0(\tally[1]_i_4_n_0 ),
        .I1(\tally[1]_i_5_n_0 ),
        .I2(\tally[1]_i_6_n_0 ),
        .I3(\tally_reg[1]_3 ),
        .I4(\tmds_out[2]_i_3_n_0 ),
        .O(\output_register.doutb_reg_reg[14]_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h4700)) 
    \tally[1]_i_4 
       (.I0(\tmds_out_reg[0] ),
        .I1(BRAM_reg_0_9_0),
        .I2(\output_register.doutb_reg_reg[14]_4 ),
        .I3(led_OBUF),
        .O(\tally[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBB2B2B2BBB2B)) 
    \tally[1]_i_5 
       (.I0(\tmds_out[5]_i_4__0_n_0 ),
        .I1(\tmds_out[2]_i_3_n_0 ),
        .I2(led_OBUF),
        .I3(\output_register.doutb_reg_reg[14]_4 ),
        .I4(BRAM_reg_0_9_0),
        .I5(\tmds_out_reg[0] ),
        .O(\tally[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBB2B2B2BBB2B)) 
    \tally[1]_i_6 
       (.I0(\tmds_out[5]_i_4__0_n_0 ),
        .I1(\output_register.doutb_reg_reg[14]_1 ),
        .I2(led_OBUF),
        .I3(\output_register.doutb_reg_reg[14]_4 ),
        .I4(BRAM_reg_0_9_0),
        .I5(\tmds_out_reg[0] ),
        .O(\tally[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4700B8FFB8FF4700)) 
    \tally[1]_i_8 
       (.I0(\tmds_out_reg[0] ),
        .I1(BRAM_reg_0_9_0),
        .I2(\output_register.doutb_reg_reg[14]_4 ),
        .I3(led_OBUF),
        .I4(\tmds_out[2]_i_3_n_0 ),
        .I5(\output_register.doutb_reg_reg[14]_1 ),
        .O(\output_register.doutb_reg_reg[14]_5 ));
  LUT6 #(
    .INIT(64'h8F80FFFF8F800000)) 
    \tally[2]_i_1 
       (.I0(\tally[2]_i_2_n_0 ),
        .I1(\tally[2]_i_3__0_n_0 ),
        .I2(\tally[4]_i_5_n_0 ),
        .I3(\tally[2]_i_4__0_n_0 ),
        .I4(\tally_reg[1]_0 ),
        .I5(\tally[2]_i_5__0_n_0 ),
        .O(\tally_reg[4]_1 [1]));
  LUT6 #(
    .INIT(64'hE222FFFFE2220000)) 
    \tally[2]_i_1__0 
       (.I0(\tally[2]_i_2__0_n_0 ),
        .I1(\tally_reg[4] ),
        .I2(\tally[2]_i_3_n_0 ),
        .I3(\tally[2]_i_4_n_0 ),
        .I4(\tally_reg[1] ),
        .I5(\tally[2]_i_5_n_0 ),
        .O(\tally_reg[4]_2 [1]));
  LUT5 #(
    .INIT(32'h7BFFFFDE)) 
    \tally[2]_i_2 
       (.I0(\tally_reg[1]_2 [0]),
        .I1(\tally_reg[1]_2 [1]),
        .I2(\tally[3]_i_7_n_0 ),
        .I3(\tally_reg[1]_1 ),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .O(\tally[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    \tally[2]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\tally[3]_i_7_n_0 ),
        .I3(\tally_reg[1]_1 ),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .O(\tally[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h7BFFFFDE)) 
    \tally[2]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\tally[3]_i_7_n_0 ),
        .I3(\tally_reg[1]_1 ),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .O(\tally[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hC2FDBF43)) 
    \tally[2]_i_3__0 
       (.I0(\tally_reg[1]_2 [0]),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tally_reg[1]_1 ),
        .I3(\tally[3]_i_7_n_0 ),
        .I4(\tally_reg[1]_2 [1]),
        .O(\tally[2]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hC2FDBF43)) 
    \tally[2]_i_4 
       (.I0(Q[0]),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tally_reg[1]_1 ),
        .I3(\tally[3]_i_7_n_0 ),
        .I4(Q[1]),
        .O(\tally[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h3693C96C)) 
    \tally[2]_i_4__0 
       (.I0(\tally_reg[1]_2 [0]),
        .I1(\tally[3]_i_7_n_0 ),
        .I2(\tally_reg[1]_1 ),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .I4(\tally_reg[1]_2 [1]),
        .O(\tally[2]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h66696696)) 
    \tally[2]_i_5 
       (.I0(Q[1]),
        .I1(\tally[3]_i_7_n_0 ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .I3(\tally_reg[1]_1 ),
        .I4(Q[0]),
        .O(\tally[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h5A5A6996)) 
    \tally[2]_i_5__0 
       (.I0(\tally_reg[1]_2 [1]),
        .I1(\tally_reg[1]_2 [0]),
        .I2(\tally[3]_i_7_n_0 ),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .I4(\tally_reg[1]_1 ),
        .O(\tally[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \tally[3]_i_1 
       (.I0(\tally[3]_i_2__0_n_0 ),
        .I1(\tally[4]_i_5_n_0 ),
        .I2(\tally[3]_i_3__0_n_0 ),
        .I3(\tally_reg[1]_0 ),
        .I4(\tally_reg[3] ),
        .I5(\tally[3]_i_5__0_n_0 ),
        .O(\tally_reg[4]_1 [2]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \tally[3]_i_1__0 
       (.I0(\tally[3]_i_2_n_0 ),
        .I1(\tally_reg[4] ),
        .I2(\tally[3]_i_3_n_0 ),
        .I3(\tally_reg[1] ),
        .I4(\tally_reg[3]_0 ),
        .I5(\tally[3]_i_5_n_0 ),
        .O(\tally_reg[4]_2 [2]));
  LUT6 #(
    .INIT(64'h63CC33C6CC9CC6CC)) 
    \tally[3]_i_2 
       (.I0(Q[0]),
        .I1(\tally[3]_i_6_n_0 ),
        .I2(\tally_reg[1]_1 ),
        .I3(\tally[3]_i_7_n_0 ),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .I5(Q[1]),
        .O(\tally[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6C3CC9CC3C36CC6C)) 
    \tally[3]_i_2__0 
       (.I0(\tally_reg[1]_2 [0]),
        .I1(\tally[3]_i_6__0_n_0 ),
        .I2(\tally_reg[1]_2 [1]),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .I4(\tally[3]_i_7_n_0 ),
        .I5(\tally_reg[1]_1 ),
        .O(\tally[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h422BBDD4BDD4422B)) 
    \tally[3]_i_3 
       (.I0(\tally[3]_i_7__0_n_0 ),
        .I1(\tally[3]_i_9_n_0 ),
        .I2(Q[1]),
        .I3(\output_register.doutb_reg_reg[15]_1 ),
        .I4(\output_register.doutb_reg_reg[15]_0 ),
        .I5(Q[2]),
        .O(\tally[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6966669666969699)) 
    \tally[3]_i_3__0 
       (.I0(\output_register.doutb_reg_reg[15]_0 ),
        .I1(\tally_reg[1]_2 [2]),
        .I2(\tally[3]_i_8_n_0 ),
        .I3(\tally[3]_i_9_n_0 ),
        .I4(\tally_reg[1]_2 [1]),
        .I5(\output_register.doutb_reg_reg[15]_1 ),
        .O(\tally[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hC08E30173071C0E8)) 
    \tally[3]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\tally[3]_i_7_n_0 ),
        .I3(\tally_reg[1]_1 ),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .I5(\output_register.doutb_reg_reg[15]_0 ),
        .O(\tally[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC08E30173071C0E8)) 
    \tally[3]_i_5__0 
       (.I0(\tally_reg[1]_2 [0]),
        .I1(\tally_reg[1]_2 [1]),
        .I2(\tally[3]_i_7_n_0 ),
        .I3(\tally_reg[1]_1 ),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .I5(\output_register.doutb_reg_reg[15]_0 ),
        .O(\tally[3]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hA69A65A6)) 
    \tally[3]_i_6 
       (.I0(Q[2]),
        .I1(\tally[4]_i_23_n_0 ),
        .I2(\tally[4]_i_24_n_0 ),
        .I3(\tally[4]_i_21_n_0 ),
        .I4(\tally[4]_i_4_0 ),
        .O(\tally[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hA69A65A6)) 
    \tally[3]_i_6__0 
       (.I0(\tally_reg[1]_2 [2]),
        .I1(\tally[4]_i_23_n_0 ),
        .I2(\tally[4]_i_24_n_0 ),
        .I3(\tally[4]_i_21_n_0 ),
        .I4(\tally[4]_i_4_0 ),
        .O(\tally[3]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tally[3]_i_7 
       (.I0(\tally[4]_i_23_n_0 ),
        .I1(\tally[4]_i_24_n_0 ),
        .I2(\tally[4]_i_21_n_0 ),
        .I3(\tally[4]_i_4_0 ),
        .O(\tally[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \tally[3]_i_7__0 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1]_1 ),
        .I2(Q[0]),
        .O(\tally[3]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \tally[3]_i_8 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1]_1 ),
        .I2(\tally_reg[1]_2 [0]),
        .O(\tally[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00009669FFFF9669)) 
    \tally[3]_i_9 
       (.I0(\tally[4]_i_4_0 ),
        .I1(\tally[4]_i_21_n_0 ),
        .I2(\tally[4]_i_24_n_0 ),
        .I3(\tally[4]_i_23_n_0 ),
        .I4(\tally_reg[1]_1 ),
        .I5(\output_register.doutb_reg_reg[14]_0 ),
        .O(\tally[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBAABABBAFBBFBFFB)) 
    \tally[4]_i_10__0 
       (.I0(Q[1]),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tally[4]_i_6__0_0 ),
        .I3(\tally[4]_i_24_n_0 ),
        .I4(\tally[4]_i_23_n_0 ),
        .I5(\tally_reg[1]_1 ),
        .O(\tally[4]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h8F08FB8F08B08F08)) 
    \tally[4]_i_11 
       (.I0(Q[1]),
        .I1(\tally_reg[1]_1 ),
        .I2(\tally[4]_i_4_0 ),
        .I3(\tally[4]_i_21_n_0 ),
        .I4(\tally[4]_i_24_n_0 ),
        .I5(\tally[4]_i_23_n_0 ),
        .O(\tally[4]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \tally[4]_i_11__0 
       (.I0(\tally[4]_i_21_n_0 ),
        .I1(\tally[4]_i_4_0 ),
        .I2(\tally[4]_i_23_n_0 ),
        .I3(\tally[4]_i_24_n_0 ),
        .O(\tally[4]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hFD4040FD433D3D43)) 
    \tally[4]_i_12 
       (.I0(\tally_reg[1]_2 [0]),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tally_reg[1]_1 ),
        .I3(\tally[4]_i_25_n_0 ),
        .I4(\tally[4]_i_6__0_0 ),
        .I5(\tally_reg[1]_2 [1]),
        .O(\tally[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h80080BB0C22C2FF2)) 
    \tally[4]_i_12__0 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1]_1 ),
        .I2(\tally[4]_i_6__0_0 ),
        .I3(\tally[4]_i_25_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\tally[4]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'hC3C314413C3C7DD7)) 
    \tally[4]_i_13 
       (.I0(Q[0]),
        .I1(\tally[4]_i_25_n_0 ),
        .I2(\tally[4]_i_6__0_0 ),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .I4(\tally_reg[1]_1 ),
        .I5(Q[1]),
        .O(\tally[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4554544504404004)) 
    \tally[4]_i_13__0 
       (.I0(\tally_reg[1]_2 [1]),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tally[4]_i_6__0_0 ),
        .I3(\tally[4]_i_24_n_0 ),
        .I4(\tally[4]_i_23_n_0 ),
        .I5(\tally_reg[1]_1 ),
        .O(\tally[4]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'h4D24)) 
    \tally[4]_i_14 
       (.I0(\tally[4]_i_4_0 ),
        .I1(\tally[4]_i_21_n_0 ),
        .I2(\tally[4]_i_24_n_0 ),
        .I3(\tally[4]_i_23_n_0 ),
        .O(\output_register.doutb_reg_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h82282882)) 
    \tally[4]_i_15 
       (.I0(\tally_reg[1]_1 ),
        .I1(\tally[4]_i_4_0 ),
        .I2(\tally[4]_i_21_n_0 ),
        .I3(\tally[4]_i_24_n_0 ),
        .I4(\tally[4]_i_23_n_0 ),
        .O(\output_register.doutb_reg_reg[15]_1 ));
  LUT6 #(
    .INIT(64'h80454580A45D5DA4)) 
    \tally[4]_i_16 
       (.I0(\tally_reg[1]_2 [1]),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tally_reg[1]_1 ),
        .I3(\tally[4]_i_25_n_0 ),
        .I4(\tally[4]_i_6__0_0 ),
        .I5(\tally_reg[1]_2 [0]),
        .O(\tally[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8F08FB8F08B08F08)) 
    \tally[4]_i_17 
       (.I0(\tally_reg[1]_2 [1]),
        .I1(\tally_reg[1]_1 ),
        .I2(\tally[4]_i_4_0 ),
        .I3(\tally[4]_i_21_n_0 ),
        .I4(\tally[4]_i_24_n_0 ),
        .I5(\tally[4]_i_23_n_0 ),
        .O(\tally[4]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00200800)) 
    \tally[4]_i_18 
       (.I0(\tally_reg[1]_1 ),
        .I1(\tally[4]_i_23_n_0 ),
        .I2(\tally[4]_i_24_n_0 ),
        .I3(\tally[4]_i_21_n_0 ),
        .I4(\tally[4]_i_4_0 ),
        .O(\output_register.doutb_reg_reg[15]_2 ));
  LUT6 #(
    .INIT(64'hC3C314413C3C7DD7)) 
    \tally[4]_i_19 
       (.I0(\tally_reg[1]_2 [0]),
        .I1(\tally[4]_i_25_n_0 ),
        .I2(\tally[4]_i_6__0_0 ),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .I4(\tally_reg[1]_1 ),
        .I5(\tally_reg[1]_2 [1]),
        .O(\tally[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \tally[4]_i_1__0 
       (.I0(\tally[4]_i_2__0_n_0 ),
        .I1(\tally_reg[4] ),
        .I2(\tally[4]_i_4__0_n_0 ),
        .I3(\tally_reg[1] ),
        .I4(\tally[4]_i_6_n_0 ),
        .I5(\tally[4]_i_7__0_n_0 ),
        .O(\tally_reg[4]_2 [3]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \tally[4]_i_2 
       (.I0(\tally[4]_i_4_n_0 ),
        .I1(\tally[4]_i_5_n_0 ),
        .I2(\tally[4]_i_6__0_n_0 ),
        .I3(\tally_reg[1]_0 ),
        .I4(\tally[4]_i_8_n_0 ),
        .I5(\tally[4]_i_9__0_n_0 ),
        .O(\tally_reg[4]_1 [3]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \tally[4]_i_20 
       (.I0(\output_register.doutb_reg_reg[14]_1 ),
        .I1(\tmds_out[2]_i_3_n_0 ),
        .I2(\tmds_out_reg[7]_1 ),
        .O(\tally[4]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hF96F6009)) 
    \tally[4]_i_21 
       (.I0(\tmds_out_reg[6] ),
        .I1(\tmds_out_reg[5] ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .I3(\output_register.doutb_reg_reg[14]_3 ),
        .I4(\output_register.doutb_reg_reg[14]_1 ),
        .O(\tally[4]_i_21_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \tally[4]_i_23 
       (.I0(\tmds_out[2]_i_3_n_0 ),
        .I1(\tmds_out[5]_i_4__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .O(\tally[4]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h6933)) 
    \tally[4]_i_24 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\output_register.doutb_reg_reg[14]_2 ),
        .I2(\tmds_out_reg[5] ),
        .I3(\tmds_out_reg[7]_1 ),
        .O(\tally[4]_i_24_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h8D72)) 
    \tally[4]_i_25 
       (.I0(\tmds_out_reg[7]_1 ),
        .I1(\tmds_out[5]_i_2__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[14]_2 ),
        .I3(\tally[4]_i_27_n_0 ),
        .O(\tally[4]_i_25_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'hB220FBB2)) 
    \tally[4]_i_27 
       (.I0(\tmds_out[5]_i_3_n_0 ),
        .I1(\tmds_out[5]_i_4_n_0 ),
        .I2(\tally[1]_i_6_n_0 ),
        .I3(\tally[1]_i_5_n_0 ),
        .I4(\tmds_out[5]_i_5_n_0 ),
        .O(\tally[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h6669699969996669)) 
    \tally[4]_i_2__0 
       (.I0(\tally[4]_i_8__0_n_0 ),
        .I1(Q[3]),
        .I2(\tally[4]_i_9_n_0 ),
        .I3(\tally[4]_i_10__0_n_0 ),
        .I4(\output_register.doutb_reg_reg[15]_0 ),
        .I5(Q[2]),
        .O(\tally[4]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hBB54)) 
    \tally[4]_i_3__0 
       (.I0(\tally[4]_i_11__0_n_0 ),
        .I1(\output_register.doutb_reg_reg[15]_0 ),
        .I2(\output_register.doutb_reg_reg[15]_1 ),
        .I3(Q[3]),
        .O(\tally_reg[4] ));
  LUT6 #(
    .INIT(64'h9666CCC399963CCC)) 
    \tally[4]_i_4 
       (.I0(\tally[4]_i_11__0_n_0 ),
        .I1(\tally_reg[1]_2 [3]),
        .I2(\tally[4]_i_12_n_0 ),
        .I3(\tally[4]_i_13__0_n_0 ),
        .I4(\output_register.doutb_reg_reg[15]_0 ),
        .I5(\tally_reg[1]_2 [2]),
        .O(\tally[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h966A6665999A966A)) 
    \tally[4]_i_4__0 
       (.I0(Q[3]),
        .I1(\tally[4]_i_11__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[15]_2 ),
        .I3(Q[2]),
        .I4(\tally[4]_i_11_n_0 ),
        .I5(\tally[4]_i_12__0_n_0 ),
        .O(\tally[4]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h9B9A)) 
    \tally[4]_i_5 
       (.I0(\tally_reg[1]_2 [3]),
        .I1(\tally[4]_i_11__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[15]_0 ),
        .I3(\output_register.doutb_reg_reg[15]_1 ),
        .O(\tally[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h94049101FD9DF797)) 
    \tally[4]_i_6 
       (.I0(Q[2]),
        .I1(\output_register.doutb_reg_reg[15]_0 ),
        .I2(\output_register.doutb_reg_reg[15]_1 ),
        .I3(Q[1]),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .I5(\tally[4]_i_13_n_0 ),
        .O(\tally[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hD44D2BB22BBDD442)) 
    \tally[4]_i_6__0 
       (.I0(\tally[4]_i_16_n_0 ),
        .I1(\tally[4]_i_17_n_0 ),
        .I2(\output_register.doutb_reg_reg[15]_2 ),
        .I3(\tally_reg[1]_2 [2]),
        .I4(\tally_reg[1]_2 [3]),
        .I5(\tally[4]_i_11__0_n_0 ),
        .O(\tally[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h9999959959599555)) 
    \tally[4]_i_7__0 
       (.I0(Q[3]),
        .I1(\tally[4]_i_20_n_0 ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .I3(\output_register.doutb_reg_reg[15]_2 ),
        .I4(\tally[4]_i_11__0_n_0 ),
        .I5(Q[2]),
        .O(\tally[4]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h94049101FD9DF797)) 
    \tally[4]_i_8 
       (.I0(\tally_reg[1]_2 [2]),
        .I1(\output_register.doutb_reg_reg[15]_0 ),
        .I2(\output_register.doutb_reg_reg[15]_1 ),
        .I3(\tally_reg[1]_2 [1]),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .I5(\tally[4]_i_19_n_0 ),
        .O(\tally[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF3EF30F300200000)) 
    \tally[4]_i_8__0 
       (.I0(\tally_reg[1]_1 ),
        .I1(\tally[4]_i_23_n_0 ),
        .I2(\tally[4]_i_24_n_0 ),
        .I3(\tally[4]_i_21_n_0 ),
        .I4(\tally[4]_i_4_0 ),
        .I5(Q[2]),
        .O(\tally[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h02BFBF02BCC2C2BC)) 
    \tally[4]_i_9 
       (.I0(Q[0]),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tally_reg[1]_1 ),
        .I3(\tally[4]_i_25_n_0 ),
        .I4(\tally[4]_i_6__0_0 ),
        .I5(Q[1]),
        .O(\tally[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9999959959599555)) 
    \tally[4]_i_9__0 
       (.I0(\tally_reg[1]_2 [3]),
        .I1(\tally[4]_i_20_n_0 ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .I3(\output_register.doutb_reg_reg[15]_2 ),
        .I4(\tally[4]_i_11__0_n_0 ),
        .I5(\tally_reg[1]_2 [2]),
        .O(\tally[4]_i_9__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFF2EFFFF002E00D1)) 
    \tmds_out[0]_i_1 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1] ),
        .I2(\tally_reg[4] ),
        .I3(\tmds_out_reg[7] ),
        .I4(\output_register.doutb_reg_reg[14]_1 ),
        .I5(\tmds_out_reg[7]_0 ),
        .O(D[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h15104045)) 
    \tmds_out[0]_i_1__0 
       (.I0(\tmds_out_reg[7] ),
        .I1(\tally[4]_i_5_n_0 ),
        .I2(\tally_reg[1]_0 ),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .I4(\output_register.doutb_reg_reg[14]_1 ),
        .O(\tally_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \tmds_out[0]_i_2 
       (.I0(led_OBUF),
        .I1(\output_register.doutb_reg_reg[14]_4 ),
        .I2(BRAM_reg_0_9_0),
        .I3(\tmds_out_reg[0] ),
        .O(\output_register.doutb_reg_reg[14]_1 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFFAE0084)) 
    \tmds_out[1]_i_1 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1] ),
        .I2(\tally_reg[4] ),
        .I3(\tmds_out_reg[7] ),
        .I4(\tmds_out_reg[7]_0 ),
        .O(D[1]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT4 #(
    .INIT(16'h4010)) 
    \tmds_out[1]_i_1__0 
       (.I0(\tmds_out_reg[7] ),
        .I1(\tally[4]_i_5_n_0 ),
        .I2(\tally_reg[1]_0 ),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .O(\tally_reg[4]_0 [1]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFFFF39C9)) 
    \tmds_out[2]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tmds_out[2]_i_3_n_0 ),
        .I2(\tally_reg[1]_0 ),
        .I3(\tally[4]_i_5_n_0 ),
        .I4(\tmds_out_reg[7] ),
        .O(\tally_reg[4]_0 [2]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \tmds_out[2]_i_3 
       (.I0(led_OBUF),
        .I1(\output_register.doutb_reg_reg[15]_3 ),
        .I2(BRAM_reg_0_9_0),
        .I3(\tmds_out_reg[3]_0 ),
        .O(\tmds_out[2]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hAAAAAAAABFBAEAEF)) 
    \tmds_out[3]_i_1 
       (.I0(\tmds_out_reg[7]_0 ),
        .I1(\tally_reg[4] ),
        .I2(\tally_reg[1] ),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .I4(\tmds_out[3]_i_2_n_0 ),
        .I5(\tmds_out_reg[7] ),
        .O(D[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h15104045)) 
    \tmds_out[3]_i_1__0 
       (.I0(\tmds_out_reg[7] ),
        .I1(\tally[4]_i_5_n_0 ),
        .I2(\tally_reg[1]_0 ),
        .I3(\output_register.doutb_reg_reg[14]_0 ),
        .I4(\tmds_out[3]_i_2_n_0 ),
        .O(\tally_reg[4]_0 [3]));
  LUT6 #(
    .INIT(64'h9996669699999999)) 
    \tmds_out[3]_i_2 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tmds_out_reg[3] ),
        .I2(\output_register.doutb_reg_reg[15]_3 ),
        .I3(BRAM_reg_0_9_0),
        .I4(\tmds_out_reg[3]_0 ),
        .I5(led_OBUF),
        .O(\tmds_out[3]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h000059A9FFFF59A9)) 
    \tmds_out[4]_i_1 
       (.I0(\output_register.doutb_reg_reg[14]_2 ),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tally_reg[1] ),
        .I3(\tally_reg[4] ),
        .I4(\tmds_out_reg[7] ),
        .I5(\tmds_out_reg[7]_0 ),
        .O(D[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hBBEBEEEB)) 
    \tmds_out[4]_i_1__0 
       (.I0(\tmds_out_reg[7] ),
        .I1(\output_register.doutb_reg_reg[14]_2 ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .I3(\tally_reg[1]_0 ),
        .I4(\tally[4]_i_5_n_0 ),
        .O(\tally_reg[4]_0 [4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hFFFFFF2E00D1002E)) 
    \tmds_out[5]_i_1 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1] ),
        .I2(\tally_reg[4] ),
        .I3(\tmds_out_reg[7] ),
        .I4(\tmds_out[5]_i_2__0_n_0 ),
        .I5(\tmds_out_reg[7]_0 ),
        .O(D[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h000000007B84847B)) 
    \tmds_out[5]_i_1__0 
       (.I0(\tally[4]_i_5_n_0 ),
        .I1(\tally_reg[1]_0 ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .I3(\output_register.doutb_reg_reg[14]_2 ),
        .I4(\tmds_out_reg[5] ),
        .I5(\tmds_out_reg[7] ),
        .O(\tally_reg[4]_0 [5]));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \tmds_out[5]_i_2 
       (.I0(\output_register.doutb_reg_reg[14]_1 ),
        .I1(\tmds_out[2]_i_3_n_0 ),
        .I2(\tmds_out[5]_i_4__0_n_0 ),
        .O(\output_register.doutb_reg_reg[14]_2 ));
  LUT6 #(
    .INIT(64'hB220FBB24DDF044D)) 
    \tmds_out[5]_i_2__0 
       (.I0(\tmds_out[5]_i_3_n_0 ),
        .I1(\tmds_out[5]_i_4_n_0 ),
        .I2(\tally[1]_i_6_n_0 ),
        .I3(\tally[1]_i_5_n_0 ),
        .I4(\tmds_out[5]_i_5_n_0 ),
        .I5(\tmds_out[5]_i_6_n_0 ),
        .O(\tmds_out[5]_i_2__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \tmds_out[5]_i_3 
       (.I0(\output_register.doutb_reg_reg[14]_1 ),
        .I1(\tmds_out[2]_i_3_n_0 ),
        .I2(\tmds_out_reg[7]_1 ),
        .O(\tmds_out[5]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \tmds_out[5]_i_4 
       (.I0(\output_register.doutb_reg_reg[14]_1 ),
        .I1(\tmds_out_reg[7]_1 ),
        .I2(\tmds_out[2]_i_3_n_0 ),
        .O(\tmds_out[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \tmds_out[5]_i_4__0 
       (.I0(\output_register.doutb_reg_reg[15]_3 ),
        .I1(BRAM_reg_0_9_0),
        .I2(\tmds_out_reg[3]_0 ),
        .I3(led_OBUF),
        .O(\tmds_out[5]_i_4__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \tmds_out[5]_i_5 
       (.I0(\output_register.doutb_reg_reg[14]_1 ),
        .I1(\tmds_out_reg[7]_1 ),
        .I2(\tmds_out[2]_i_3_n_0 ),
        .O(\tmds_out[5]_i_5_n_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \tmds_out[5]_i_6 
       (.I0(\tmds_out_reg[5] ),
        .I1(\tmds_out[5]_i_4__0_n_0 ),
        .I2(\tmds_out[2]_i_3_n_0 ),
        .I3(\output_register.doutb_reg_reg[14]_1 ),
        .O(\tmds_out[5]_i_6_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h00D1FFD10000FF2E)) 
    \tmds_out[6]_i_1 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1] ),
        .I2(\tally_reg[4] ),
        .I3(\tmds_out_reg[7] ),
        .I4(\tmds_out_reg[7]_0 ),
        .I5(\tmds_out_reg[6] ),
        .O(D[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'hEEBEBBBE)) 
    \tmds_out[6]_i_1__0 
       (.I0(\tmds_out_reg[7] ),
        .I1(\tmds_out_reg[6] ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .I3(\tally_reg[1]_0 ),
        .I4(\tally[4]_i_5_n_0 ),
        .O(\tally_reg[4]_0 [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'hABBABBBBBAABAAAA)) 
    \tmds_out[7]_i_1 
       (.I0(\tmds_out_reg[7]_0 ),
        .I1(\tmds_out_reg[7] ),
        .I2(\output_register.doutb_reg_reg[14]_0 ),
        .I3(\tally_reg[4] ),
        .I4(\tally_reg[1] ),
        .I5(\output_register.doutb_reg_reg[14]_3 ),
        .O(D[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h06090A0A)) 
    \tmds_out[7]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[14]_3 ),
        .I1(\output_register.doutb_reg_reg[14]_0 ),
        .I2(\tmds_out_reg[7] ),
        .I3(\tally[4]_i_5_n_0 ),
        .I4(\tally_reg[1]_0 ),
        .O(\tally_reg[4]_0 [7]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tmds_out[7]_i_2 
       (.I0(\output_register.doutb_reg_reg[14]_1 ),
        .I1(\tmds_out_reg[7]_1 ),
        .I2(\tmds_out[2]_i_3_n_0 ),
        .O(\output_register.doutb_reg_reg[14]_3 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFF2E)) 
    \tmds_out[9]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[14]_0 ),
        .I1(\tally_reg[1]_0 ),
        .I2(\tally[4]_i_5_n_0 ),
        .I3(\tmds_out_reg[7] ),
        .O(\tally_reg[4]_0 [8]));
endmodule

(* ORIG_REF_NAME = "xilinx_true_dual_port_read_first_2_clock_ram" *) 
module xilinx_true_dual_port_read_first_2_clock_ram_3
   (D,
    \output_register.doutb_reg_reg[15]_0 ,
    read_addr10__0,
    \output_register.doutb_reg_reg[15]_1 ,
    \output_register.doutb_reg_reg[15]_2 ,
    \output_register.doutb_reg_reg[14]_0 ,
    \output_register.doutb_reg_reg[15]_3 ,
    \output_register.doutb_reg_reg[14]_1 ,
    \output_register.doutb_reg_reg[14]_2 ,
    \output_register.doutb_reg_reg[15]_4 ,
    \output_register.doutb_reg_reg[15]_5 ,
    \output_register.doutb_reg_reg[15]_6 ,
    \output_register.doutb_reg_reg[14]_3 ,
    O,
    \y_iter_reg[8] ,
    CO,
    \y_iter_reg[8]_0 ,
    \y_iter_reg[4] ,
    \y_iter_reg[8]_1 ,
    \y_iter_reg[8]_2 ,
    \tmds_out_reg[2] ,
    \tmds_out_reg[2]_0 ,
    \tmds_out_reg[2]_1 ,
    \tmds_out_reg[2]_2 ,
    P,
    BRAM_reg_0_9_0,
    x_iter,
    \tally[4]_i_16 ,
    \tally[4]_i_16_0 ,
    \tmds_out_reg[2]_3 ,
    \tmds_out_reg[5] ,
    led_OBUF,
    \tally_reg[1] ,
    \tally_reg[1]_0 ,
    BRAM_reg_0_9_i_36,
    BRAM_reg_0_9_i_36_0,
    BRAM_reg_0_9_i_36_1,
    S,
    BRAM_reg_mux_sel_b_pos_0__8_i_3_0,
    BRAM_reg_mux_sel_b_pos_0__8_i_3_1,
    BRAM_reg_0_9_i_32,
    BRAM_reg_0_9_i_32_0,
    BRAM_reg_0_9_i_36_2,
    BRAM_reg_0_9_i_36_3,
    BRAM_reg_0_9_i_32_1,
    BRAM_reg_0_9_i_25,
    BRAM_reg_0_9_i_19_0,
    BRAM_reg_0_9_i_18_0,
    BRAM_reg_0_9_1,
    BRAM_reg_0_9_2,
    \tmds_out_reg[6] ,
    clk_pixel,
    BRAM_reg_1_11_0,
    SR,
    pwropt,
    pwropt_1);
  output [0:0]D;
  output \output_register.doutb_reg_reg[15]_0 ;
  output [13:0]read_addr10__0;
  output \output_register.doutb_reg_reg[15]_1 ;
  output \output_register.doutb_reg_reg[15]_2 ;
  output \output_register.doutb_reg_reg[14]_0 ;
  output \output_register.doutb_reg_reg[15]_3 ;
  output \output_register.doutb_reg_reg[14]_1 ;
  output \output_register.doutb_reg_reg[14]_2 ;
  output \output_register.doutb_reg_reg[15]_4 ;
  output \output_register.doutb_reg_reg[15]_5 ;
  output \output_register.doutb_reg_reg[15]_6 ;
  output \output_register.doutb_reg_reg[14]_3 ;
  output [3:0]O;
  output [3:0]\y_iter_reg[8] ;
  output [0:0]CO;
  output [1:0]\y_iter_reg[8]_0 ;
  output [2:0]\y_iter_reg[4] ;
  output [3:0]\y_iter_reg[8]_1 ;
  output [2:0]\y_iter_reg[8]_2 ;
  input \tmds_out_reg[2] ;
  input \tmds_out_reg[2]_0 ;
  input \tmds_out_reg[2]_1 ;
  input \tmds_out_reg[2]_2 ;
  input [16:0]P;
  input BRAM_reg_0_9_0;
  input [8:0]x_iter;
  input \tally[4]_i_16 ;
  input \tally[4]_i_16_0 ;
  input \tmds_out_reg[2]_3 ;
  input \tmds_out_reg[5] ;
  input [0:0]led_OBUF;
  input \tally_reg[1] ;
  input \tally_reg[1]_0 ;
  input BRAM_reg_0_9_i_36;
  input BRAM_reg_0_9_i_36_0;
  input BRAM_reg_0_9_i_36_1;
  input [3:0]S;
  input BRAM_reg_mux_sel_b_pos_0__8_i_3_0;
  input BRAM_reg_mux_sel_b_pos_0__8_i_3_1;
  input BRAM_reg_0_9_i_32;
  input BRAM_reg_0_9_i_32_0;
  input [3:0]BRAM_reg_0_9_i_36_2;
  input [2:0]BRAM_reg_0_9_i_36_3;
  input [3:0]BRAM_reg_0_9_i_32_1;
  input [3:0]BRAM_reg_0_9_i_25;
  input [3:0]BRAM_reg_0_9_i_19_0;
  input [0:0]BRAM_reg_0_9_i_18_0;
  input [3:0]BRAM_reg_0_9_1;
  input [1:0]BRAM_reg_0_9_2;
  input \tmds_out_reg[6] ;
  input clk_pixel;
  input BRAM_reg_1_11_0;
  input [0:0]SR;
  input pwropt;
  input pwropt_1;

  wire BRAM_reg_0_11_ENBWREN_cooolgate_en_sig_13;
  wire BRAM_reg_0_11_n_0;
  wire BRAM_reg_0_11_n_1;
  wire BRAM_reg_0_9_0;
  wire [3:0]BRAM_reg_0_9_1;
  wire [1:0]BRAM_reg_0_9_2;
  wire BRAM_reg_0_9_ENBWREN_cooolgate_en_sig_14;
  wire [0:0]BRAM_reg_0_9_i_18_0;
  wire BRAM_reg_0_9_i_18_n_0;
  wire [3:0]BRAM_reg_0_9_i_19_0;
  wire BRAM_reg_0_9_i_19_n_0;
  wire BRAM_reg_0_9_i_1__0_n_0;
  wire BRAM_reg_0_9_i_20_n_0;
  wire BRAM_reg_0_9_i_21_n_0;
  wire BRAM_reg_0_9_i_22_n_0;
  wire [3:0]BRAM_reg_0_9_i_25;
  wire BRAM_reg_0_9_i_29_n_0;
  wire BRAM_reg_0_9_i_32;
  wire BRAM_reg_0_9_i_32_0;
  wire [3:0]BRAM_reg_0_9_i_32_1;
  wire BRAM_reg_0_9_i_34_n_0;
  wire BRAM_reg_0_9_i_36;
  wire BRAM_reg_0_9_i_36_0;
  wire BRAM_reg_0_9_i_36_1;
  wire [3:0]BRAM_reg_0_9_i_36_2;
  wire [2:0]BRAM_reg_0_9_i_36_3;
  wire BRAM_reg_0_9_i_43_n_0;
  wire BRAM_reg_0_9_n_0;
  wire BRAM_reg_0_9_n_1;
  wire BRAM_reg_1_11_0;
  wire BRAM_reg_1_11_n_67;
  wire BRAM_reg_1_9_n_67;
  wire BRAM_reg_2_11_ENBWREN_cooolgate_en_sig_15;
  wire BRAM_reg_2_11_n_0;
  wire BRAM_reg_2_11_n_1;
  wire BRAM_reg_2_9_ENBWREN_cooolgate_en_sig_16;
  wire BRAM_reg_2_9_n_0;
  wire BRAM_reg_2_9_n_1;
  wire BRAM_reg_3_11_n_67;
  wire BRAM_reg_3_9_n_67;
  wire BRAM_reg_mux_sel_b_pos_0__8_i_3_0;
  wire BRAM_reg_mux_sel_b_pos_0__8_i_3_1;
  wire BRAM_reg_mux_sel_b_pos_0__8_i_5_n_6;
  wire BRAM_reg_mux_sel_b_pos_0__8_i_5_n_7;
  wire BRAM_reg_mux_sel_b_pos_0__8_i_7_n_0;
  wire BRAM_reg_mux_sel_b_pos_0__8_n_0;
  wire [0:0]CO;
  wire [0:0]D;
  wire [3:0]O;
  wire [16:0]P;
  wire [3:0]S;
  wire [0:0]SR;
  wire clk_pixel;
  wire [0:0]led_OBUF;
  wire \output_register.doutb_reg_reg[14]_0 ;
  wire \output_register.doutb_reg_reg[14]_1 ;
  wire \output_register.doutb_reg_reg[14]_2 ;
  wire \output_register.doutb_reg_reg[15]_0 ;
  wire \output_register.doutb_reg_reg[15]_1 ;
  wire \output_register.doutb_reg_reg[15]_2 ;
  wire \output_register.doutb_reg_reg[15]_3 ;
  wire \output_register.doutb_reg_reg[15]_4 ;
  wire \output_register.doutb_reg_reg[15]_5 ;
  wire \output_register.doutb_reg_reg[15]_6 ;
  wire pwropt;
  wire pwropt_1;
  wire [15:14]ram_data_b;
  wire \rast/z_buffer1/BRAM_reg_0_11_cooolgate_en_sig_12 ;
  wire [16:0]read_addr1;
  wire [13:0]read_addr10__0;
  wire [16:9]read_addr11;
  wire \tally[4]_i_16 ;
  wire \tally[4]_i_16_0 ;
  wire \tally_reg[1] ;
  wire \tally_reg[1]_0 ;
  wire \tmds_out[2]_i_3__0_n_0 ;
  wire \tmds_out_reg[2] ;
  wire \tmds_out_reg[2]_0 ;
  wire \tmds_out_reg[2]_1 ;
  wire \tmds_out_reg[2]_2 ;
  wire \tmds_out_reg[2]_3 ;
  wire \tmds_out_reg[5] ;
  wire \tmds_out_reg[6] ;
  wire [8:0]x_iter;
  wire [2:0]\y_iter_reg[4] ;
  wire [3:0]\y_iter_reg[8] ;
  wire [1:0]\y_iter_reg[8]_0 ;
  wire [3:0]\y_iter_reg[8]_1 ;
  wire [2:0]\y_iter_reg[8]_2 ;
  wire NLW_BRAM_reg_0_11_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_11_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_0_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_0_11_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_0_9_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_9_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_0_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_0_9_RDADDRECC_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_0_9_i_18_CO_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_0_9_i_19_CO_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_0_9_i_20_CO_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_0_9_i_21_CO_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_0_9_i_22_CO_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_0_9_i_29_CO_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_0_9_i_34_CO_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_0_9_i_43_CO_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_9_i_43_O_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_1_11_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_1_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_1_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_1_11_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_1_9_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_1_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_1_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_1_9_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_2_11_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_11_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_2_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_2_11_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_2_9_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_9_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_2_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_2_9_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_11_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_11_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_11_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_3_11_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_3_11_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_11_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_11_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_3_11_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_3_11_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_9_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_9_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_9_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_3_9_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_3_9_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_9_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_9_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_3_9_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_3_9_RDADDRECC_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_2_CO_UNCONNECTED;
  wire [3:2]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_2_O_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_3_CO_UNCONNECTED;
  wire [3:3]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_3_O_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_4_CO_UNCONNECTED;
  wire [3:2]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_4_O_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_5_CO_UNCONNECTED;
  wire [3:2]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_5_O_UNCONNECTED;
  wire [2:0]NLW_BRAM_reg_mux_sel_b_pos_0__8_i_7_CO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_mux_sel_b_pos_0__8_i_1__0
       (.I0(P[16]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[13]),
        .O(read_addr1[16]));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer1/BRAM_reg_0_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_0_11
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr1[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_0_11_n_0),
        .CASCADEOUTB(BRAM_reg_0_11_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_0_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_0_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_0_11_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_0_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_0_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_0_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(BRAM_reg_1_11_0),
        .ENBWREN(BRAM_reg_0_11_ENBWREN_cooolgate_en_sig_13),
        .INJECTDBITERR(NLW_BRAM_reg_0_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_0_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_0_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_0_11_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,BRAM_reg_1_11_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hff7f0000)) 
    BRAM_reg_0_11_ENBWREN_cooolgate_en_gate_21
       (.I0(P[15]),
        .I1(BRAM_reg_0_9_0),
        .I2(\rast/z_buffer1/BRAM_reg_0_11_cooolgate_en_sig_12 ),
        .I3(pwropt),
        .I4(BRAM_reg_0_9_i_1__0_n_0),
        .O(BRAM_reg_0_11_ENBWREN_cooolgate_en_sig_13));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer1/BRAM_reg_0_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_0_9
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr1[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_0_9_n_0),
        .CASCADEOUTB(BRAM_reg_0_9_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_0_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_0_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_0_9_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_0_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_0_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_0_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(BRAM_reg_1_11_0),
        .ENBWREN(BRAM_reg_0_9_ENBWREN_cooolgate_en_sig_14),
        .INJECTDBITERR(NLW_BRAM_reg_0_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_0_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_0_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_0_9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,BRAM_reg_1_11_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hff7f0000)) 
    BRAM_reg_0_9_ENBWREN_cooolgate_en_gate_23
       (.I0(P[15]),
        .I1(BRAM_reg_0_9_0),
        .I2(\rast/z_buffer1/BRAM_reg_0_11_cooolgate_en_sig_12 ),
        .I3(pwropt),
        .I4(BRAM_reg_0_9_i_1__0_n_0),
        .O(BRAM_reg_0_9_ENBWREN_cooolgate_en_sig_14));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_10__0
       (.I0(P[7]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[4]),
        .O(read_addr1[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_11__0
       (.I0(P[6]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[3]),
        .O(read_addr1[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_12__0
       (.I0(P[5]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[2]),
        .O(read_addr1[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_13__0
       (.I0(P[4]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[1]),
        .O(read_addr1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_14__0
       (.I0(P[3]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[0]),
        .O(read_addr1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_15__0
       (.I0(P[2]),
        .I1(BRAM_reg_0_9_0),
        .I2(x_iter[2]),
        .O(read_addr1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_16__0
       (.I0(P[1]),
        .I1(BRAM_reg_0_9_0),
        .I2(x_iter[1]),
        .O(read_addr1[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_17__0
       (.I0(P[0]),
        .I1(BRAM_reg_0_9_0),
        .I2(x_iter[0]),
        .O(read_addr1[0]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_0_9_i_18
       (.CI(BRAM_reg_0_9_i_19_n_0),
        .CO({BRAM_reg_0_9_i_18_n_0,NLW_BRAM_reg_0_9_i_18_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(read_addr10__0[11:8]),
        .S(read_addr11[14:11]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_0_9_i_19
       (.CI(BRAM_reg_0_9_i_20_n_0),
        .CO({BRAM_reg_0_9_i_19_n_0,NLW_BRAM_reg_0_9_i_19_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,x_iter[8:7]}),
        .O(read_addr10__0[7:4]),
        .S({read_addr11[10:9],BRAM_reg_0_9_2}));
  LUT3 #(
    .INIT(8'h1D)) 
    BRAM_reg_0_9_i_1__0
       (.I0(read_addr10__0[13]),
        .I1(BRAM_reg_0_9_0),
        .I2(P[16]),
        .O(BRAM_reg_0_9_i_1__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_0_9_i_20
       (.CI(1'b0),
        .CO({BRAM_reg_0_9_i_20_n_0,NLW_BRAM_reg_0_9_i_20_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(x_iter[6:3]),
        .O(read_addr10__0[3:0]),
        .S(BRAM_reg_0_9_1));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_0_9_i_21
       (.CI(BRAM_reg_0_9_i_22_n_0),
        .CO({BRAM_reg_0_9_i_21_n_0,NLW_BRAM_reg_0_9_i_21_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\y_iter_reg[8]_0 ,\y_iter_reg[8] [3:2]}),
        .O(read_addr11[13:10]),
        .S(BRAM_reg_0_9_i_19_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_0_9_i_22
       (.CI(1'b0),
        .CO({BRAM_reg_0_9_i_22_n_0,NLW_BRAM_reg_0_9_i_22_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({\y_iter_reg[8] [1:0],O[3:2]}),
        .O({read_addr11[9],\y_iter_reg[8]_2 }),
        .S(BRAM_reg_0_9_i_25));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_0_9_i_29
       (.CI(BRAM_reg_0_9_i_34_n_0),
        .CO({BRAM_reg_0_9_i_29_n_0,NLW_BRAM_reg_0_9_i_29_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({BRAM_reg_mux_sel_b_pos_0__8_i_3_0,BRAM_reg_mux_sel_b_pos_0__8_i_3_1,BRAM_reg_0_9_i_32,BRAM_reg_0_9_i_32_0}),
        .O(\y_iter_reg[8] ),
        .S(BRAM_reg_0_9_i_36_2));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_2__0
       (.I0(P[15]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[12]),
        .O(read_addr1[15]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 BRAM_reg_0_9_i_34
       (.CI(1'b0),
        .CO({BRAM_reg_0_9_i_34_n_0,NLW_BRAM_reg_0_9_i_34_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({BRAM_reg_0_9_i_36,BRAM_reg_0_9_i_36_0,BRAM_reg_0_9_i_36_1,1'b0}),
        .O(O),
        .S(S));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_3__0
       (.I0(P[14]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[11]),
        .O(read_addr1[14]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 BRAM_reg_0_9_i_43
       (.CI(1'b0),
        .CO({BRAM_reg_0_9_i_43_n_0,NLW_BRAM_reg_0_9_i_43_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({BRAM_reg_0_9_i_36,BRAM_reg_0_9_i_36_0,BRAM_reg_0_9_i_36_1,1'b0}),
        .O({\y_iter_reg[4] ,NLW_BRAM_reg_0_9_i_43_O_UNCONNECTED[0]}),
        .S({BRAM_reg_0_9_i_36_3,S[0]}));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_4__0
       (.I0(P[13]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[10]),
        .O(read_addr1[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_5__0
       (.I0(P[12]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[9]),
        .O(read_addr1[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_6__0
       (.I0(P[11]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[8]),
        .O(read_addr1[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_7__0
       (.I0(P[10]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[7]),
        .O(read_addr1[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_8__0
       (.I0(P[9]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[6]),
        .O(read_addr1[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    BRAM_reg_0_9_i_9__0
       (.I0(P[8]),
        .I1(BRAM_reg_0_9_0),
        .I2(read_addr10__0[5]),
        .O(read_addr1[8]));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer1/BRAM_reg_1_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_1_11
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr1[15:0]),
        .CASCADEINA(BRAM_reg_0_11_n_0),
        .CASCADEINB(BRAM_reg_0_11_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_1_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_1_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_1_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_1_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_1_11_DOBDO_UNCONNECTED[31:1],BRAM_reg_1_11_n_67}),
        .DOPADOP(NLW_BRAM_reg_1_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_1_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_1_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_0_9_i_1__0_n_0),
        .INJECTDBITERR(NLW_BRAM_reg_1_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_1_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_1_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_1_11_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer1/BRAM_reg_1_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_1_9
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr1[15:0]),
        .CASCADEINA(BRAM_reg_0_9_n_0),
        .CASCADEINB(BRAM_reg_0_9_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_1_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_1_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_1_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_1_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_1_9_DOBDO_UNCONNECTED[31:1],BRAM_reg_1_9_n_67}),
        .DOPADOP(NLW_BRAM_reg_1_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_1_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_1_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_0_9_i_1__0_n_0),
        .INJECTDBITERR(NLW_BRAM_reg_1_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_1_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_1_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_1_9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer1/BRAM_reg_2_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_2_11
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr1[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_2_11_n_0),
        .CASCADEOUTB(BRAM_reg_2_11_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_2_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_2_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_2_11_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_2_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_2_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_2_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_2_11_ENBWREN_cooolgate_en_sig_15),
        .INJECTDBITERR(NLW_BRAM_reg_2_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_2_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_2_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_2_11_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h7fff0000)) 
    BRAM_reg_2_11_ENBWREN_cooolgate_en_gate_25
       (.I0(P[15]),
        .I1(pwropt_1),
        .I2(BRAM_reg_0_9_0),
        .I3(\rast/z_buffer1/BRAM_reg_0_11_cooolgate_en_sig_12 ),
        .I4(read_addr1[16]),
        .O(BRAM_reg_2_11_ENBWREN_cooolgate_en_sig_15));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer1/BRAM_reg_2_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_2_9
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr1[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_2_9_n_0),
        .CASCADEOUTB(BRAM_reg_2_9_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_2_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_2_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_2_9_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_2_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_2_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_2_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_2_9_ENBWREN_cooolgate_en_sig_16),
        .INJECTDBITERR(NLW_BRAM_reg_2_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_2_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_2_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_2_9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'h7fff0000)) 
    BRAM_reg_2_9_ENBWREN_cooolgate_en_gate_27
       (.I0(P[15]),
        .I1(pwropt_1),
        .I2(BRAM_reg_0_9_0),
        .I3(\rast/z_buffer1/BRAM_reg_0_11_cooolgate_en_sig_12 ),
        .I4(read_addr1[16]),
        .O(BRAM_reg_2_9_ENBWREN_cooolgate_en_sig_16));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer1/BRAM_reg_3_11" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_3_11
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr1[15:0]),
        .CASCADEINA(BRAM_reg_2_11_n_0),
        .CASCADEINB(BRAM_reg_2_11_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_3_11_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_3_11_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_3_11_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_11_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_11_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_3_11_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_3_11_DOBDO_UNCONNECTED[31:1],BRAM_reg_3_11_n_67}),
        .DOPADOP(NLW_BRAM_reg_3_11_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_3_11_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_3_11_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(read_addr1[16]),
        .INJECTDBITERR(NLW_BRAM_reg_3_11_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_3_11_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_3_11_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_3_11_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer1/BRAM_reg_3_9" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    BRAM_reg_3_9
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(read_addr1[15:0]),
        .CASCADEINA(BRAM_reg_2_9_n_0),
        .CASCADEINB(BRAM_reg_2_9_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_3_9_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_3_9_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_3_9_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_9_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_9_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_3_9_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_3_9_DOBDO_UNCONNECTED[31:1],BRAM_reg_3_9_n_67}),
        .DOPADOP(NLW_BRAM_reg_3_9_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_3_9_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_3_9_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(read_addr1[16]),
        .INJECTDBITERR(NLW_BRAM_reg_3_9_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_3_9_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_3_9_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_3_9_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE BRAM_reg_mux_sel_b_pos_0__8
       (.C(clk_pixel),
        .CE(1'b1),
        .D(read_addr1[16]),
        .Q(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_mux_sel_b_pos_0__8_i_2
       (.CI(BRAM_reg_0_9_i_18_n_0),
        .CO(NLW_BRAM_reg_mux_sel_b_pos_0__8_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_BRAM_reg_mux_sel_b_pos_0__8_i_2_O_UNCONNECTED[3:2],read_addr10__0[13:12]}),
        .S({1'b0,1'b0,read_addr11[16:15]}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_mux_sel_b_pos_0__8_i_3
       (.CI(BRAM_reg_0_9_i_21_n_0),
        .CO(NLW_BRAM_reg_mux_sel_b_pos_0__8_i_3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,CO}),
        .O({NLW_BRAM_reg_mux_sel_b_pos_0__8_i_3_O_UNCONNECTED[3],read_addr11[16:14]}),
        .S({1'b0,BRAM_reg_mux_sel_b_pos_0__8_i_5_n_6,BRAM_reg_mux_sel_b_pos_0__8_i_5_n_7,BRAM_reg_0_9_i_18_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_mux_sel_b_pos_0__8_i_4
       (.CI(BRAM_reg_0_9_i_29_n_0),
        .CO({NLW_BRAM_reg_mux_sel_b_pos_0__8_i_4_CO_UNCONNECTED[3],CO,NLW_BRAM_reg_mux_sel_b_pos_0__8_i_4_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_BRAM_reg_mux_sel_b_pos_0__8_i_4_O_UNCONNECTED[3:2],\y_iter_reg[8]_0 }),
        .S({1'b0,1'b1,BRAM_reg_mux_sel_b_pos_0__8_i_3_0,BRAM_reg_mux_sel_b_pos_0__8_i_3_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_mux_sel_b_pos_0__8_i_5
       (.CI(BRAM_reg_mux_sel_b_pos_0__8_i_7_n_0),
        .CO(NLW_BRAM_reg_mux_sel_b_pos_0__8_i_5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_BRAM_reg_mux_sel_b_pos_0__8_i_5_O_UNCONNECTED[3:2],BRAM_reg_mux_sel_b_pos_0__8_i_5_n_6,BRAM_reg_mux_sel_b_pos_0__8_i_5_n_7}),
        .S({1'b0,1'b0,BRAM_reg_mux_sel_b_pos_0__8_i_3_0,BRAM_reg_mux_sel_b_pos_0__8_i_3_1}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 BRAM_reg_mux_sel_b_pos_0__8_i_7
       (.CI(BRAM_reg_0_9_i_43_n_0),
        .CO({BRAM_reg_mux_sel_b_pos_0__8_i_7_n_0,NLW_BRAM_reg_mux_sel_b_pos_0__8_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({BRAM_reg_mux_sel_b_pos_0__8_i_3_0,BRAM_reg_mux_sel_b_pos_0__8_i_3_1,BRAM_reg_0_9_i_32,BRAM_reg_0_9_i_32_0}),
        .O(\y_iter_reg[8]_1 ),
        .S(BRAM_reg_0_9_i_32_1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_register.doutb_reg[14]_i_1__0 
       (.I0(BRAM_reg_3_9_n_67),
        .I1(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .I2(BRAM_reg_1_9_n_67),
        .O(ram_data_b[14]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_register.doutb_reg[15]_i_1__0 
       (.I0(BRAM_reg_3_11_n_67),
        .I1(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .I2(BRAM_reg_1_11_n_67),
        .O(ram_data_b[15]));
  FDRE #(
    .INIT(1'b0)) 
    \output_register.doutb_reg_reg[14] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(ram_data_b[14]),
        .Q(\output_register.doutb_reg_reg[14]_2 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \output_register.doutb_reg_reg[15] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(ram_data_b[15]),
        .Q(\output_register.doutb_reg_reg[15]_5 ),
        .R(SR));
  FDCE #(
    .INIT(1'b0)) 
    \rast/z_buffer1/BRAM_reg_0_11_cooolgate_en_gate_20_cooolDelFlop 
       (.C(clk_pixel),
        .CE(1'b1),
        .CLR(1'b0),
        .D(BRAM_reg_0_9_0),
        .Q(\rast/z_buffer1/BRAM_reg_0_11_cooolgate_en_sig_12 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h1D00E2FF)) 
    \tally[1]_i_3 
       (.I0(\tally_reg[1] ),
        .I1(BRAM_reg_0_9_0),
        .I2(\output_register.doutb_reg_reg[15]_5 ),
        .I3(led_OBUF),
        .I4(\tally_reg[1]_0 ),
        .O(\output_register.doutb_reg_reg[15]_6 ));
  LUT5 #(
    .INIT(32'hB8FF4700)) 
    \tally[1]_i_7 
       (.I0(\output_register.doutb_reg_reg[14]_2 ),
        .I1(BRAM_reg_0_9_0),
        .I2(\tmds_out_reg[5] ),
        .I3(led_OBUF),
        .I4(\output_register.doutb_reg_reg[15]_4 ),
        .O(\output_register.doutb_reg_reg[14]_1 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h0000E2FF)) 
    \tally[4]_i_22 
       (.I0(\tally_reg[1] ),
        .I1(BRAM_reg_0_9_0),
        .I2(\output_register.doutb_reg_reg[15]_5 ),
        .I3(led_OBUF),
        .I4(\tally_reg[1]_0 ),
        .O(\output_register.doutb_reg_reg[15]_2 ));
  LUT6 #(
    .INIT(64'h6A6556A656A66A65)) 
    \tally[4]_i_26 
       (.I0(\output_register.doutb_reg_reg[15]_2 ),
        .I1(\tally[4]_i_16 ),
        .I2(\tally[4]_i_16_0 ),
        .I3(\tmds_out_reg[2]_3 ),
        .I4(\output_register.doutb_reg_reg[14]_0 ),
        .I5(\output_register.doutb_reg_reg[15]_3 ),
        .O(\output_register.doutb_reg_reg[15]_1 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h00006F60FFFF6F60)) 
    \tmds_out[2]_i_1 
       (.I0(\output_register.doutb_reg_reg[15]_0 ),
        .I1(\tmds_out_reg[2] ),
        .I2(\tmds_out_reg[2]_0 ),
        .I3(\tmds_out[2]_i_3__0_n_0 ),
        .I4(\tmds_out_reg[2]_1 ),
        .I5(\tmds_out_reg[2]_2 ),
        .O(D));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT4 #(
    .INIT(16'h4700)) 
    \tmds_out[2]_i_2 
       (.I0(\output_register.doutb_reg_reg[15]_5 ),
        .I1(BRAM_reg_0_9_0),
        .I2(\tally_reg[1] ),
        .I3(led_OBUF),
        .O(\output_register.doutb_reg_reg[15]_0 ));
  (* OPT_MODIFIED = "PROPCONST" *) 
  LUT5 #(
    .INIT(32'h4700B8FF)) 
    \tmds_out[2]_i_3__0 
       (.I0(\output_register.doutb_reg_reg[15]_5 ),
        .I1(BRAM_reg_0_9_0),
        .I2(\tally_reg[1] ),
        .I3(led_OBUF),
        .I4(\tmds_out_reg[2]_3 ),
        .O(\tmds_out[2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hB8FF)) 
    \tmds_out[5]_i_3__0 
       (.I0(\output_register.doutb_reg_reg[14]_2 ),
        .I1(BRAM_reg_0_9_0),
        .I2(\tmds_out_reg[5] ),
        .I3(led_OBUF),
        .O(\output_register.doutb_reg_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmds_out[6]_i_2 
       (.I0(\output_register.doutb_reg_reg[15]_4 ),
        .I1(\tmds_out_reg[6] ),
        .O(\output_register.doutb_reg_reg[15]_3 ));
  LUT6 #(
    .INIT(64'h505030C0A0A030C0)) 
    \tmds_out[7]_i_3 
       (.I0(\output_register.doutb_reg_reg[15]_5 ),
        .I1(\tally_reg[1] ),
        .I2(led_OBUF),
        .I3(\tmds_out_reg[5] ),
        .I4(BRAM_reg_0_9_0),
        .I5(\output_register.doutb_reg_reg[14]_2 ),
        .O(\output_register.doutb_reg_reg[15]_4 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
