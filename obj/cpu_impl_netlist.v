// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Wed Dec 13 17:53:31 2023
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

module rasterizer
   (D,
    \output_register.doutb_reg_reg[10] ,
    \tally_reg[4] ,
    \tally_reg[4]_0 ,
    \tally_reg[4]_1 ,
    \tally_reg[4]_2 ,
    \output_register.doutb_reg_reg[10]_0 ,
    \output_register.doutb_reg_reg[10]_1 ,
    \output_register.doutb_reg_reg[10]_2 ,
    \output_register.doutb_reg_reg[10]_3 ,
    \output_register.doutb_reg_reg[10]_4 ,
    active_draw,
    led_OBUF,
    \tally_reg[2] ,
    hor_sync,
    Q,
    \tally_reg[2]_0 ,
    \tmds_out_reg[7] ,
    \tally_reg[3] ,
    \tally_reg[4]_3 ,
    \tally_reg[3]_0 ,
    clk_pixel,
    btn_IBUF,
    hcount,
    vcount);
  output [9:0]D;
  output \output_register.doutb_reg_reg[10] ;
  output [7:0]\tally_reg[4] ;
  output \tally_reg[4]_0 ;
  output [3:0]\tally_reg[4]_1 ;
  output [3:0]\tally_reg[4]_2 ;
  output \output_register.doutb_reg_reg[10]_0 ;
  output \output_register.doutb_reg_reg[10]_1 ;
  output \output_register.doutb_reg_reg[10]_2 ;
  output \output_register.doutb_reg_reg[10]_3 ;
  output \output_register.doutb_reg_reg[10]_4 ;
  input active_draw;
  input [0:0]led_OBUF;
  input \tally_reg[2] ;
  input hor_sync;
  input [3:0]Q;
  input \tally_reg[2]_0 ;
  input [3:0]\tmds_out_reg[7] ;
  input \tally_reg[3] ;
  input \tally_reg[4]_3 ;
  input \tally_reg[3]_0 ;
  input clk_pixel;
  input [0:0]btn_IBUF;
  input [10:0]hcount;
  input [9:0]vcount;

  wire [9:0]D;
  wire [3:0]Q;
  wire active_draw;
  wire [0:0]btn_IBUF;
  wire clk_pixel;
  wire [10:0]hcount;
  wire [10:0]\hcount_in_pipe_reg[0]_0 ;
  wire hor_sync;
  wire [0:0]led_OBUF;
  wire \output_register.doutb_reg_reg[10] ;
  wire \output_register.doutb_reg_reg[10]_0 ;
  wire \output_register.doutb_reg_reg[10]_1 ;
  wire \output_register.doutb_reg_reg[10]_2 ;
  wire \output_register.doutb_reg_reg[10]_3 ;
  wire \output_register.doutb_reg_reg[10]_4 ;
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
  wire \tally_reg[2] ;
  wire \tally_reg[2]_0 ;
  wire \tally_reg[3] ;
  wire \tally_reg[3]_0 ;
  wire [7:0]\tally_reg[4] ;
  wire \tally_reg[4]_0 ;
  wire [3:0]\tally_reg[4]_1 ;
  wire [3:0]\tally_reg[4]_2 ;
  wire \tally_reg[4]_3 ;
  wire [3:0]\tmds_out_reg[7] ;
  wire [9:0]vcount;
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

  FDRE \hcount_in_pipe_reg[0][0] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[0]),
        .Q(\hcount_in_pipe_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][10] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[10]),
        .Q(\hcount_in_pipe_reg[0]_0 [10]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[1]),
        .Q(\hcount_in_pipe_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[2]),
        .Q(\hcount_in_pipe_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[3]),
        .Q(\hcount_in_pipe_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[4]),
        .Q(\hcount_in_pipe_reg[0]_0 [4]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][5] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[5]),
        .Q(\hcount_in_pipe_reg[0]_0 [5]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][6] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[6]),
        .Q(\hcount_in_pipe_reg[0]_0 [6]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][7] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[7]),
        .Q(\hcount_in_pipe_reg[0]_0 [7]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][8] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[8]),
        .Q(\hcount_in_pipe_reg[0]_0 [8]),
        .R(1'b0));
  FDRE \hcount_in_pipe_reg[0][9] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(hcount[9]),
        .Q(\hcount_in_pipe_reg[0]_0 [9]),
        .R(1'b0));
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vcount}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_read_addr10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_read_addr10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\hcount_in_pipe_reg[0]_0 }),
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
  xilinx_true_dual_port_read_first_2_clock_ram z_buffer0
       (.D(D),
        .Q(Q),
        .active_draw(active_draw),
        .addrb({read_addr10_n_89,read_addr10_n_90,read_addr10_n_91,read_addr10_n_92,read_addr10_n_93,read_addr10_n_94,read_addr10_n_95,read_addr10_n_96,read_addr10_n_97,read_addr10_n_98,read_addr10_n_99,read_addr10_n_100,read_addr10_n_101,read_addr10_n_102,read_addr10_n_103,read_addr10_n_104,read_addr10_n_105}),
        .btn_IBUF(btn_IBUF),
        .clk_pixel(clk_pixel),
        .hor_sync(hor_sync),
        .led_OBUF(led_OBUF),
        .\output_register.doutb_reg_reg[10]_0 (\output_register.doutb_reg_reg[10] ),
        .\output_register.doutb_reg_reg[10]_1 (\output_register.doutb_reg_reg[10]_0 ),
        .\output_register.doutb_reg_reg[10]_2 (\output_register.doutb_reg_reg[10]_1 ),
        .\output_register.doutb_reg_reg[10]_3 (\output_register.doutb_reg_reg[10]_2 ),
        .\output_register.doutb_reg_reg[10]_4 (\output_register.doutb_reg_reg[10]_3 ),
        .\output_register.doutb_reg_reg[10]_5 (\output_register.doutb_reg_reg[10]_4 ),
        .\tally_reg[2] (\tally_reg[2] ),
        .\tally_reg[2]_0 (\tally_reg[2]_0 ),
        .\tally_reg[3] (\tally_reg[3] ),
        .\tally_reg[3]_0 (\tally_reg[3]_0 ),
        .\tally_reg[4] (\tally_reg[4] ),
        .\tally_reg[4]_0 (\tally_reg[4]_0 ),
        .\tally_reg[4]_1 (\tally_reg[4]_1 ),
        .\tally_reg[4]_2 (\tally_reg[4]_2 ),
        .\tally_reg[4]_3 (\tally_reg[4]_3 ),
        .\tmds_out_reg[7] (\tmds_out_reg[7] ));
endmodule

module tmds_encoder
   (\tally_reg[3]_0 ,
    Q,
    \tally_reg[4]_0 ,
    \tally_reg[4]_1 ,
    \tmds_out_reg[9]_0 ,
    \tally_reg[2]_0 ,
    \tally_reg[2]_1 ,
    \tally[4]_i_7__0 ,
    SR,
    D,
    clk_pixel,
    btn_IBUF,
    \tmds_out_reg[9]_1 );
  output \tally_reg[3]_0 ;
  output [3:0]Q;
  output \tally_reg[4]_0 ;
  output \tally_reg[4]_1 ;
  output [9:0]\tmds_out_reg[9]_0 ;
  input \tally_reg[2]_0 ;
  input \tally_reg[2]_1 ;
  input \tally[4]_i_7__0 ;
  input [0:0]SR;
  input [3:0]D;
  input clk_pixel;
  input [0:0]btn_IBUF;
  input [9:0]\tmds_out_reg[9]_1 ;

  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [0:0]btn_IBUF;
  wire clk_pixel;
  wire \tally[4]_i_7__0 ;
  wire \tally_reg[2]_0 ;
  wire \tally_reg[2]_1 ;
  wire \tally_reg[3]_0 ;
  wire \tally_reg[4]_0 ;
  wire \tally_reg[4]_1 ;
  wire [9:0]\tmds_out_reg[9]_0 ;
  wire [9:0]\tmds_out_reg[9]_1 ;

  LUT4 #(
    .INIT(16'h6999)) 
    \tally[3]_i_4 
       (.I0(Q[2]),
        .I1(\tally_reg[2]_0 ),
        .I2(\tally_reg[2]_1 ),
        .I3(Q[1]),
        .O(\tally_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tally[4]_i_17 
       (.I0(Q[3]),
        .I1(\tally[4]_i_7__0 ),
        .O(\tally_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h888888888888888F)) 
    \tally[4]_i_4__0 
       (.I0(\tally_reg[2]_1 ),
        .I1(\tally_reg[2]_0 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
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
        .R(btn_IBUF));
  FDRE \tmds_out_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [1]),
        .Q(\tmds_out_reg[9]_0 [1]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [2]),
        .Q(\tmds_out_reg[9]_0 [2]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [3]),
        .Q(\tmds_out_reg[9]_0 [3]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [4]),
        .Q(\tmds_out_reg[9]_0 [4]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[5] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [5]),
        .Q(\tmds_out_reg[9]_0 [5]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[6] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [6]),
        .Q(\tmds_out_reg[9]_0 [6]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[7] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [7]),
        .Q(\tmds_out_reg[9]_0 [7]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[8] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [8]),
        .Q(\tmds_out_reg[9]_0 [8]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[9] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [9]),
        .Q(\tmds_out_reg[9]_0 [9]),
        .R(btn_IBUF));
endmodule

(* ORIG_REF_NAME = "tmds_encoder" *) 
module tmds_encoder_2
   (\tally_reg[4]_0 ,
    Q,
    \tally_reg[3]_0 ,
    \tmds_out_reg[9]_0 ,
    \tally_reg[2]_0 ,
    \tally_reg[2]_1 ,
    SR,
    D,
    clk_pixel,
    btn_IBUF,
    \tmds_out_reg[9]_1 );
  output \tally_reg[4]_0 ;
  output [3:0]Q;
  output \tally_reg[3]_0 ;
  output [9:0]\tmds_out_reg[9]_0 ;
  input \tally_reg[2]_0 ;
  input \tally_reg[2]_1 ;
  input [0:0]SR;
  input [3:0]D;
  input clk_pixel;
  input [0:0]btn_IBUF;
  input [9:0]\tmds_out_reg[9]_1 ;

  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire [0:0]btn_IBUF;
  wire clk_pixel;
  wire \tally_reg[2]_0 ;
  wire \tally_reg[2]_1 ;
  wire \tally_reg[3]_0 ;
  wire \tally_reg[4]_0 ;
  wire [9:0]\tmds_out_reg[9]_0 ;
  wire [9:0]\tmds_out_reg[9]_1 ;

  LUT4 #(
    .INIT(16'h6999)) 
    \tally[3]_i_4__0 
       (.I0(Q[2]),
        .I1(\tally_reg[2]_1 ),
        .I2(\tally_reg[2]_0 ),
        .I3(Q[1]),
        .O(\tally_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h7777777777777770)) 
    \tally[4]_i_7 
       (.I0(\tally_reg[2]_0 ),
        .I1(\tally_reg[2]_1 ),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
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
        .R(btn_IBUF));
  FDRE \tmds_out_reg[1] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [1]),
        .Q(\tmds_out_reg[9]_0 [1]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[2] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [2]),
        .Q(\tmds_out_reg[9]_0 [2]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[3] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [3]),
        .Q(\tmds_out_reg[9]_0 [3]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[4] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [4]),
        .Q(\tmds_out_reg[9]_0 [4]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[5] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [5]),
        .Q(\tmds_out_reg[9]_0 [5]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[6] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [6]),
        .Q(\tmds_out_reg[9]_0 [6]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[7] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [7]),
        .Q(\tmds_out_reg[9]_0 [7]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[8] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [8]),
        .Q(\tmds_out_reg[9]_0 [8]),
        .R(btn_IBUF));
  FDRE \tmds_out_reg[9] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(\tmds_out_reg[9]_1 [9]),
        .Q(\tmds_out_reg[9]_0 [9]),
        .R(btn_IBUF));
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
    btn_IBUF);
  output \tmds_signal[2] ;
  output RST0;
  input clk_tmds;
  input clk_pixel;
  input [9:0]Q;
  input [0:0]btn_IBUF;

  wire [9:0]Q;
  wire RST0;
  wire \blue_ser/pwup_rst ;
  wire [0:0]btn_IBUF;
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
       (.I0(\blue_ser/pwup_rst ),
        .I1(btn_IBUF),
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

(* ECO_CHECKSUM = "55f9c806" *) (* NF = "12" *) (* POWER_OPT_BRAM_CDC = "0" *) 
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
  wire active_draw;
  wire [3:0]btn;
  wire [0:0]btn_IBUF;
  (* IBUF_LOW_PWR *) wire clk_100mhz;
  wire clk_5x;
  wire clk_pixel;
  wire [9:0]hcount_scaled;
  wire hdmi_clk_n;
  wire hdmi_clk_p;
  wire [2:0]hdmi_tx_n;
  wire [2:0]hdmi_tx_p;
  wire hor_sync;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire mvg_n_0;
  wire mvg_n_13;
  wire mvg_n_14;
  wire mvg_n_2;
  wire p_0_in;
  wire [4:1]p_1_in;
  wire rast_n_0;
  wire rast_n_1;
  wire rast_n_10;
  wire rast_n_11;
  wire rast_n_12;
  wire rast_n_13;
  wire rast_n_14;
  wire rast_n_15;
  wire rast_n_16;
  wire rast_n_17;
  wire rast_n_18;
  wire rast_n_19;
  wire rast_n_24;
  wire rast_n_25;
  wire rast_n_26;
  wire rast_n_27;
  wire rast_n_28;
  wire rast_n_29;
  wire rast_n_3;
  wire rast_n_30;
  wire rast_n_31;
  wire rast_n_32;
  wire rast_n_5;
  wire rast_n_7;
  wire [15:0]sw;
  wire [9:0]\tmds_10b[0] ;
  wire [9:0]\tmds_10b[2] ;
  wire tmds_blue_n_0;
  wire tmds_blue_n_1;
  wire tmds_blue_n_2;
  wire tmds_blue_n_3;
  wire tmds_blue_n_4;
  wire tmds_blue_n_5;
  wire tmds_blue_n_6;
  wire [7:0]tmds_out;
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
       (.D({mvg_n_13,mvg_n_14}),
        .SR(mvg_n_0),
        .active_draw(active_draw),
        .btn_IBUF(btn_IBUF),
        .clk_pixel(clk_pixel),
        .\hcount_out_reg[10]_0 ({mvg_n_2,hcount_scaled}),
        .hor_sync(hor_sync),
        .led_OBUF(led_OBUF[1:0]),
        .\tmds_out_reg[8] (rast_n_10),
        .\tmds_out_reg[9] (tmds_blue_n_5),
        .\tmds_out_reg[9]_0 (rast_n_19),
        .\vcount_out_reg[9]_0 (vcount_scaled));
  rasterizer rast
       (.D({rast_n_0,rast_n_1,tmds_out[7],rast_n_3,tmds_out[5],rast_n_5,tmds_out[3],rast_n_7,tmds_out[1:0]}),
        .Q({p_0_in,tmds_red_n_2,tmds_red_n_3,tmds_red_n_4}),
        .active_draw(active_draw),
        .btn_IBUF(btn_IBUF),
        .clk_pixel(clk_pixel),
        .hcount({mvg_n_2,hcount_scaled}),
        .hor_sync(hor_sync),
        .led_OBUF(led_OBUF[0]),
        .\output_register.doutb_reg_reg[10] (rast_n_10),
        .\output_register.doutb_reg_reg[10]_0 (rast_n_28),
        .\output_register.doutb_reg_reg[10]_1 (rast_n_29),
        .\output_register.doutb_reg_reg[10]_2 (rast_n_30),
        .\output_register.doutb_reg_reg[10]_3 (rast_n_31),
        .\output_register.doutb_reg_reg[10]_4 (rast_n_32),
        .\tally_reg[2] (tmds_blue_n_5),
        .\tally_reg[2]_0 (tmds_red_n_0),
        .\tally_reg[3] (tmds_blue_n_0),
        .\tally_reg[3]_0 (tmds_red_n_5),
        .\tally_reg[4] ({rast_n_11,rast_n_12,rast_n_13,rast_n_14,rast_n_15,rast_n_16,rast_n_17,rast_n_18}),
        .\tally_reg[4]_0 (rast_n_19),
        .\tally_reg[4]_1 (p_1_in),
        .\tally_reg[4]_2 ({rast_n_24,rast_n_25,rast_n_26,rast_n_27}),
        .\tally_reg[4]_3 (tmds_blue_n_6),
        .\tmds_out_reg[7] ({tmds_blue_n_1,tmds_blue_n_2,tmds_blue_n_3,tmds_blue_n_4}),
        .vcount(vcount_scaled));
  tmds_serializer_1 red_ser
       (.Q(\tmds_10b[2] ),
        .RST0(RST0),
        .btn_IBUF(btn_IBUF),
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
        .SR(mvg_n_0),
        .btn_IBUF(btn_IBUF),
        .clk_pixel(clk_pixel),
        .\tally[4]_i_7__0 (rast_n_31),
        .\tally_reg[2]_0 (rast_n_29),
        .\tally_reg[2]_1 (rast_n_28),
        .\tally_reg[3]_0 (tmds_blue_n_0),
        .\tally_reg[4]_0 (tmds_blue_n_5),
        .\tally_reg[4]_1 (tmds_blue_n_6),
        .\tmds_out_reg[9]_0 (\tmds_10b[0] ),
        .\tmds_out_reg[9]_1 ({mvg_n_13,mvg_n_14,rast_n_11,rast_n_12,rast_n_13,rast_n_14,rast_n_15,rast_n_16,rast_n_17,rast_n_18}));
  tmds_encoder_2 tmds_red
       (.D(p_1_in),
        .Q({p_0_in,tmds_red_n_2,tmds_red_n_3,tmds_red_n_4}),
        .SR(mvg_n_0),
        .btn_IBUF(btn_IBUF),
        .clk_pixel(clk_pixel),
        .\tally_reg[2]_0 (rast_n_30),
        .\tally_reg[2]_1 (rast_n_32),
        .\tally_reg[3]_0 (tmds_red_n_5),
        .\tally_reg[4]_0 (tmds_red_n_0),
        .\tmds_out_reg[9]_0 (\tmds_10b[2] ),
        .\tmds_out_reg[9]_1 ({rast_n_0,rast_n_1,tmds_out[7],rast_n_3,tmds_out[5],rast_n_5,tmds_out[3],rast_n_7,tmds_out[1:0]}));
endmodule

module video_sig_gen
   (SR,
    active_draw,
    \hcount_out_reg[10]_0 ,
    D,
    hor_sync,
    \vcount_out_reg[9]_0 ,
    btn_IBUF,
    led_OBUF,
    \tmds_out_reg[8] ,
    \tmds_out_reg[9] ,
    \tmds_out_reg[9]_0 ,
    clk_pixel);
  output [0:0]SR;
  output active_draw;
  output [10:0]\hcount_out_reg[10]_0 ;
  output [1:0]D;
  output hor_sync;
  output [9:0]\vcount_out_reg[9]_0 ;
  input [0:0]btn_IBUF;
  input [1:0]led_OBUF;
  input \tmds_out_reg[8] ;
  input \tmds_out_reg[9] ;
  input \tmds_out_reg[9]_0 ;
  input clk_pixel;

  wire [1:0]D;
  wire [0:0]SR;
  wire active_draw;
  wire ad_out0;
  wire [0:0]btn_IBUF;
  wire clk_pixel;
  wire [10:0]hcount;
  wire \hcount_out[10]_i_1_n_0 ;
  wire \hcount_out[10]_i_4_n_0 ;
  wire \hcount_out[10]_i_5_n_0 ;
  wire \hcount_out[3]_i_1_n_0 ;
  wire \hcount_out[4]_i_1_n_0 ;
  wire [10:0]\hcount_out_reg[10]_0 ;
  wire hor_sync;
  wire [1:0]led_OBUF;
  wire [10:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire prev_rst;
  wire \tally[4]_i_10__0_n_0 ;
  wire \tmds_out[9]_i_4_n_0 ;
  wire \tmds_out[9]_i_5_n_0 ;
  wire \tmds_out[9]_i_6_n_0 ;
  wire \tmds_out[9]_i_7_n_0 ;
  wire \tmds_out[9]_i_8_n_0 ;
  wire \tmds_out_reg[8] ;
  wire \tmds_out_reg[9] ;
  wire \tmds_out_reg[9]_0 ;
  wire [9:0]vcount;
  wire \vcount_out[2]_i_1_n_0 ;
  wire \vcount_out[4]_i_1_n_0 ;
  wire \vcount_out[9]_i_1_n_0 ;
  wire \vcount_out[9]_i_2_n_0 ;
  wire \vcount_out[9]_i_4_n_0 ;
  wire \vcount_out[9]_i_5_n_0 ;
  wire \vcount_out[9]_i_6_n_0 ;
  wire \vcount_out[9]_i_7_n_0 ;
  wire [9:0]\vcount_out_reg[9]_0 ;
  wire vert_sync;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][0]_i_1 
       (.I0(hcount[1]),
        .I1(led_OBUF[1]),
        .I2(hcount[2]),
        .I3(led_OBUF[0]),
        .I4(hcount[0]),
        .O(\hcount_out_reg[10]_0 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \hcount_in_pipe[0][10]_i_1 
       (.I0(hcount[10]),
        .I1(led_OBUF[0]),
        .O(\hcount_out_reg[10]_0 [10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][1]_i_1 
       (.I0(hcount[2]),
        .I1(led_OBUF[1]),
        .I2(hcount[3]),
        .I3(led_OBUF[0]),
        .I4(hcount[1]),
        .O(\hcount_out_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][2]_i_1 
       (.I0(hcount[3]),
        .I1(led_OBUF[1]),
        .I2(hcount[4]),
        .I3(led_OBUF[0]),
        .I4(hcount[2]),
        .O(\hcount_out_reg[10]_0 [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][3]_i_1 
       (.I0(hcount[4]),
        .I1(led_OBUF[1]),
        .I2(hcount[5]),
        .I3(led_OBUF[0]),
        .I4(hcount[3]),
        .O(\hcount_out_reg[10]_0 [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][4]_i_1 
       (.I0(hcount[5]),
        .I1(led_OBUF[1]),
        .I2(hcount[6]),
        .I3(led_OBUF[0]),
        .I4(hcount[4]),
        .O(\hcount_out_reg[10]_0 [4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][5]_i_1 
       (.I0(hcount[6]),
        .I1(led_OBUF[1]),
        .I2(hcount[7]),
        .I3(led_OBUF[0]),
        .I4(hcount[5]),
        .O(\hcount_out_reg[10]_0 [5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][6]_i_1 
       (.I0(hcount[7]),
        .I1(led_OBUF[1]),
        .I2(hcount[8]),
        .I3(led_OBUF[0]),
        .I4(hcount[6]),
        .O(\hcount_out_reg[10]_0 [6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][7]_i_1 
       (.I0(hcount[8]),
        .I1(led_OBUF[1]),
        .I2(hcount[9]),
        .I3(led_OBUF[0]),
        .I4(hcount[7]),
        .O(\hcount_out_reg[10]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \hcount_in_pipe[0][8]_i_1 
       (.I0(hcount[9]),
        .I1(led_OBUF[1]),
        .I2(hcount[10]),
        .I3(led_OBUF[0]),
        .I4(hcount[8]),
        .O(\hcount_out_reg[10]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \hcount_in_pipe[0][9]_i_1 
       (.I0(led_OBUF[1]),
        .I1(hcount[10]),
        .I2(led_OBUF[0]),
        .I3(hcount[9]),
        .O(\hcount_out_reg[10]_0 [9]));
  (* \PinAttr:I0:HOLD_DETOUR  = "189" *) 
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hcount_out[0]_i_1 
       (.I0(hcount[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \hcount_out[10]_i_1 
       (.I0(btn_IBUF),
        .I1(\vcount_out[9]_i_2_n_0 ),
        .O(\hcount_out[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hcount_out[10]_i_2 
       (.I0(prev_rst),
        .O(ad_out0));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \hcount_out[10]_i_3 
       (.I0(hcount[10]),
        .I1(hcount[8]),
        .I2(hcount[7]),
        .I3(\hcount_out[10]_i_4_n_0 ),
        .I4(\hcount_out[10]_i_5_n_0 ),
        .I5(hcount[9]),
        .O(p_0_in[10]));
  LUT3 #(
    .INIT(8'h80)) 
    \hcount_out[10]_i_4 
       (.I0(hcount[4]),
        .I1(hcount[6]),
        .I2(hcount[5]),
        .O(\hcount_out[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \hcount_out[10]_i_5 
       (.I0(hcount[0]),
        .I1(hcount[1]),
        .I2(hcount[2]),
        .I3(hcount[3]),
        .O(\hcount_out[10]_i_5_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "189" *) 
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcount_out[1]_i_1 
       (.I0(hcount[0]),
        .I1(hcount[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \hcount_out[2]_i_1 
       (.I0(hcount[2]),
        .I1(hcount[0]),
        .I2(hcount[1]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \hcount_out[3]_i_1 
       (.I0(hcount[3]),
        .I1(hcount[0]),
        .I2(hcount[1]),
        .I3(hcount[2]),
        .O(\hcount_out[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \hcount_out[4]_i_1 
       (.I0(hcount[4]),
        .I1(hcount[3]),
        .I2(hcount[2]),
        .I3(hcount[1]),
        .I4(hcount[0]),
        .O(\hcount_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \hcount_out[5]_i_1 
       (.I0(hcount[5]),
        .I1(hcount[0]),
        .I2(hcount[1]),
        .I3(hcount[2]),
        .I4(hcount[3]),
        .I5(hcount[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \hcount_out[6]_i_1 
       (.I0(hcount[6]),
        .I1(hcount[4]),
        .I2(\hcount_out[10]_i_5_n_0 ),
        .I3(hcount[5]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \hcount_out[7]_i_1 
       (.I0(hcount[7]),
        .I1(\hcount_out[10]_i_5_n_0 ),
        .I2(hcount[4]),
        .I3(hcount[6]),
        .I4(hcount[5]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \hcount_out[8]_i_1 
       (.I0(hcount[8]),
        .I1(hcount[7]),
        .I2(hcount[5]),
        .I3(hcount[6]),
        .I4(hcount[4]),
        .I5(\hcount_out[10]_i_5_n_0 ),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \hcount_out[9]_i_1 
       (.I0(hcount[9]),
        .I1(\hcount_out[10]_i_5_n_0 ),
        .I2(\hcount_out[10]_i_4_n_0 ),
        .I3(hcount[7]),
        .I4(hcount[8]),
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
        .D(\hcount_out[3]_i_1_n_0 ),
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
  FDRE prev_rst_reg
       (.C(clk_pixel),
        .CE(1'b1),
        .D(btn_IBUF),
        .Q(prev_rst),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    read_addr10_i_1
       (.I0(vcount[9]),
        .I1(led_OBUF[0]),
        .O(\vcount_out_reg[9]_0 [9]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_10
       (.I0(vcount[1]),
        .I1(led_OBUF[0]),
        .I2(vcount[0]),
        .O(\vcount_out_reg[9]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_2
       (.I0(vcount[9]),
        .I1(led_OBUF[0]),
        .I2(vcount[8]),
        .O(\vcount_out_reg[9]_0 [8]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_3
       (.I0(vcount[8]),
        .I1(led_OBUF[0]),
        .I2(vcount[7]),
        .O(\vcount_out_reg[9]_0 [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_4
       (.I0(vcount[7]),
        .I1(led_OBUF[0]),
        .I2(vcount[6]),
        .O(\vcount_out_reg[9]_0 [6]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_5
       (.I0(vcount[6]),
        .I1(led_OBUF[0]),
        .I2(vcount[5]),
        .O(\vcount_out_reg[9]_0 [5]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_6
       (.I0(vcount[5]),
        .I1(led_OBUF[0]),
        .I2(vcount[4]),
        .O(\vcount_out_reg[9]_0 [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_7
       (.I0(vcount[4]),
        .I1(led_OBUF[0]),
        .I2(vcount[3]),
        .O(\vcount_out_reg[9]_0 [3]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_8
       (.I0(vcount[3]),
        .I1(led_OBUF[0]),
        .I2(vcount[2]),
        .O(\vcount_out_reg[9]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    read_addr10_i_9
       (.I0(vcount[2]),
        .I1(led_OBUF[0]),
        .I2(vcount[1]),
        .O(\vcount_out_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    \tally[4]_i_1 
       (.I0(btn_IBUF),
        .I1(active_draw),
        .O(SR));
  LUT6 #(
    .INIT(64'h05551555FFFFFFFF)) 
    \tally[4]_i_10__0 
       (.I0(vcount[8]),
        .I1(vcount[4]),
        .I2(vcount[6]),
        .I3(vcount[7]),
        .I4(vcount[5]),
        .I5(vcount[9]),
        .O(\tally[4]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000220000002A)) 
    \tally[4]_i_3 
       (.I0(\tally[4]_i_10__0_n_0 ),
        .I1(hcount[10]),
        .I2(hcount[8]),
        .I3(prev_rst),
        .I4(btn_IBUF),
        .I5(hcount[9]),
        .O(active_draw));
  LUT3 #(
    .INIT(8'h1B)) 
    \tmds_out[8]_i_1__0 
       (.I0(active_draw),
        .I1(hor_sync),
        .I2(\tmds_out_reg[8] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \tmds_out[9]_i_1__0 
       (.I0(\tmds_out_reg[8] ),
        .I1(\tmds_out_reg[9] ),
        .I2(\tmds_out_reg[9]_0 ),
        .I3(active_draw),
        .I4(hor_sync),
        .I5(vert_sync),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \tmds_out[9]_i_2 
       (.I0(\tmds_out[9]_i_4_n_0 ),
        .I1(hcount[9]),
        .I2(btn_IBUF),
        .I3(hcount[10]),
        .I4(hcount[8]),
        .I5(\tmds_out[9]_i_5_n_0 ),
        .O(hor_sync));
  LUT6 #(
    .INIT(64'h00000000000003E0)) 
    \tmds_out[9]_i_3 
       (.I0(vcount[0]),
        .I1(vcount[1]),
        .I2(vcount[2]),
        .I3(vcount[3]),
        .I4(\tmds_out[9]_i_6_n_0 ),
        .I5(\tmds_out[9]_i_7_n_0 ),
        .O(vert_sync));
  LUT6 #(
    .INIT(64'h01001111FFFFFFFF)) 
    \tmds_out[9]_i_4 
       (.I0(hcount[5]),
        .I1(hcount[6]),
        .I2(hcount[3]),
        .I3(\tmds_out[9]_i_8_n_0 ),
        .I4(hcount[4]),
        .I5(hcount[7]),
        .O(\tmds_out[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000BFFFFFF)) 
    \tmds_out[9]_i_5 
       (.I0(\tmds_out[9]_i_8_n_0 ),
        .I1(hcount[3]),
        .I2(hcount[4]),
        .I3(hcount[6]),
        .I4(hcount[5]),
        .I5(hcount[7]),
        .O(\tmds_out[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \tmds_out[9]_i_6 
       (.I0(vcount[9]),
        .I1(btn_IBUF),
        .I2(vcount[8]),
        .I3(vcount[5]),
        .O(\tmds_out[9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \tmds_out[9]_i_7 
       (.I0(vcount[7]),
        .I1(vcount[6]),
        .I2(vcount[4]),
        .O(\tmds_out[9]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \tmds_out[9]_i_8 
       (.I0(hcount[1]),
        .I1(hcount[2]),
        .O(\tmds_out[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vcount_out[0]_i_1 
       (.I0(vcount[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcount_out[1]_i_1 
       (.I0(vcount[0]),
        .I1(vcount[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vcount_out[2]_i_1 
       (.I0(vcount[2]),
        .I1(vcount[1]),
        .I2(vcount[0]),
        .O(\vcount_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vcount_out[3]_i_1 
       (.I0(vcount[3]),
        .I1(vcount[1]),
        .I2(vcount[0]),
        .I3(vcount[2]),
        .O(p_0_in__0[3]));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vcount_out[4]_i_1 
       (.I0(vcount[4]),
        .I1(vcount[3]),
        .I2(vcount[1]),
        .I3(vcount[0]),
        .I4(vcount[2]),
        .O(\vcount_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vcount_out[5]_i_1 
       (.I0(vcount[5]),
        .I1(vcount[2]),
        .I2(vcount[0]),
        .I3(vcount[1]),
        .I4(vcount[3]),
        .I5(vcount[4]),
        .O(p_0_in__0[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \vcount_out[6]_i_1 
       (.I0(vcount[6]),
        .I1(\vcount_out[9]_i_6_n_0 ),
        .I2(vcount[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vcount_out[7]_i_1 
       (.I0(vcount[7]),
        .I1(vcount[5]),
        .I2(\vcount_out[9]_i_6_n_0 ),
        .I3(vcount[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \vcount_out[8]_i_1 
       (.I0(vcount[8]),
        .I1(vcount[7]),
        .I2(vcount[6]),
        .I3(vcount[5]),
        .I4(\vcount_out[9]_i_6_n_0 ),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'hFEAAAAAA)) 
    \vcount_out[9]_i_1 
       (.I0(btn_IBUF),
        .I1(\vcount_out[9]_i_4_n_0 ),
        .I2(vcount[8]),
        .I3(vcount[9]),
        .I4(\vcount_out[9]_i_2_n_0 ),
        .O(\vcount_out[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFE000000000000)) 
    \vcount_out[9]_i_2 
       (.I0(hcount[7]),
        .I1(hcount[8]),
        .I2(\hcount_out[10]_i_4_n_0 ),
        .I3(\vcount_out[9]_i_5_n_0 ),
        .I4(hcount[10]),
        .I5(hcount[9]),
        .O(\vcount_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \vcount_out[9]_i_3 
       (.I0(vcount[9]),
        .I1(vcount[8]),
        .I2(\vcount_out[9]_i_6_n_0 ),
        .I3(vcount[5]),
        .I4(vcount[6]),
        .I5(vcount[7]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h00000000FFFF8880)) 
    \vcount_out[9]_i_4 
       (.I0(vcount[3]),
        .I1(vcount[2]),
        .I2(vcount[0]),
        .I3(vcount[1]),
        .I4(vcount[4]),
        .I5(\vcount_out[9]_i_7_n_0 ),
        .O(\vcount_out[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \vcount_out[9]_i_5 
       (.I0(hcount[1]),
        .I1(hcount[0]),
        .I2(hcount[3]),
        .I3(hcount[2]),
        .O(\vcount_out[9]_i_5_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "197" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \vcount_out[9]_i_6 
       (.I0(vcount[4]),
        .I1(vcount[3]),
        .I2(vcount[1]),
        .I3(vcount[0]),
        .I4(vcount[2]),
        .O(\vcount_out[9]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \vcount_out[9]_i_7 
       (.I0(vcount[7]),
        .I1(vcount[6]),
        .I2(vcount[5]),
        .O(\vcount_out[9]_i_7_n_0 ));
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
        .D(\vcount_out[2]_i_1_n_0 ),
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
        .D(\vcount_out[4]_i_1_n_0 ),
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
    \output_register.doutb_reg_reg[10]_0 ,
    \tally_reg[4] ,
    \tally_reg[4]_0 ,
    \tally_reg[4]_1 ,
    \tally_reg[4]_2 ,
    \output_register.doutb_reg_reg[10]_1 ,
    \output_register.doutb_reg_reg[10]_2 ,
    \output_register.doutb_reg_reg[10]_3 ,
    \output_register.doutb_reg_reg[10]_4 ,
    \output_register.doutb_reg_reg[10]_5 ,
    active_draw,
    led_OBUF,
    \tally_reg[2] ,
    hor_sync,
    Q,
    \tally_reg[2]_0 ,
    \tmds_out_reg[7] ,
    \tally_reg[3] ,
    \tally_reg[4]_3 ,
    \tally_reg[3]_0 ,
    addrb,
    clk_pixel,
    btn_IBUF);
  output [9:0]D;
  output \output_register.doutb_reg_reg[10]_0 ;
  output [7:0]\tally_reg[4] ;
  output \tally_reg[4]_0 ;
  output [3:0]\tally_reg[4]_1 ;
  output [3:0]\tally_reg[4]_2 ;
  output \output_register.doutb_reg_reg[10]_1 ;
  output \output_register.doutb_reg_reg[10]_2 ;
  output \output_register.doutb_reg_reg[10]_3 ;
  output \output_register.doutb_reg_reg[10]_4 ;
  output \output_register.doutb_reg_reg[10]_5 ;
  input active_draw;
  input [0:0]led_OBUF;
  input \tally_reg[2] ;
  input hor_sync;
  input [3:0]Q;
  input \tally_reg[2]_0 ;
  input [3:0]\tmds_out_reg[7] ;
  input \tally_reg[3] ;
  input \tally_reg[4]_3 ;
  input \tally_reg[3]_0 ;
  input [16:0]addrb;
  input clk_pixel;
  input [0:0]btn_IBUF;

  wire BRAM_reg_0_14_ENBWREN_cooolgate_en_sig_4;
  wire BRAM_reg_0_14_n_0;
  wire BRAM_reg_0_14_n_1;
  wire BRAM_reg_0_16_ENBWREN_cooolgate_en_sig_5;
  wire BRAM_reg_0_16_n_0;
  wire BRAM_reg_0_16_n_1;
  wire BRAM_reg_1_14_n_67;
  wire BRAM_reg_1_16_n_67;
  wire BRAM_reg_2_14_ENBWREN_cooolgate_en_sig_7;
  wire BRAM_reg_2_14_n_0;
  wire BRAM_reg_2_14_n_1;
  wire BRAM_reg_2_16_ENBWREN_cooolgate_en_sig_8;
  wire BRAM_reg_2_16_n_0;
  wire BRAM_reg_2_16_n_1;
  wire BRAM_reg_3_14_n_67;
  wire BRAM_reg_3_16_n_67;
  wire BRAM_reg_mux_sel_b_pos_0__8_n_0;
  wire [9:0]D;
  wire [3:0]Q;
  wire active_draw;
  wire [16:0]addrb;
  wire [0:0]btn_IBUF;
  wire clk_pixel;
  wire [3:1]gray;
  wire hor_sync;
  wire [0:0]led_OBUF;
  wire \output_register.doutb_reg_reg[10]_0 ;
  wire \output_register.doutb_reg_reg[10]_1 ;
  wire \output_register.doutb_reg_reg[10]_2 ;
  wire \output_register.doutb_reg_reg[10]_3 ;
  wire \output_register.doutb_reg_reg[10]_4 ;
  wire \output_register.doutb_reg_reg[10]_5 ;
  wire [12:10]ram_data_b;
  wire \rast/z_buffer0/BRAM_reg_0_14_cooolgate_en_sig_3 ;
  wire \rast/z_buffer0/BRAM_reg_2_14_cooolgate_en_sig_6 ;
  wire \tally[1]_i_2_n_0 ;
  wire \tally[2]_i_10_n_0 ;
  wire \tally[2]_i_3__0_n_0 ;
  wire \tally[2]_i_3_n_0 ;
  wire \tally[2]_i_4__0_n_0 ;
  wire \tally[2]_i_4_n_0 ;
  wire \tally[2]_i_5__0_n_0 ;
  wire \tally[2]_i_5_n_0 ;
  wire \tally[2]_i_6__0_n_0 ;
  wire \tally[2]_i_6_n_0 ;
  wire \tally[2]_i_7__0_n_0 ;
  wire \tally[2]_i_7_n_0 ;
  wire \tally[2]_i_8__0_n_0 ;
  wire \tally[2]_i_8_n_0 ;
  wire \tally[2]_i_9__0_n_0 ;
  wire \tally[2]_i_9_n_0 ;
  wire \tally[3]_i_2__0_n_0 ;
  wire \tally[3]_i_2_n_0 ;
  wire \tally[3]_i_3__0_n_0 ;
  wire \tally[3]_i_3_n_0 ;
  wire \tally[3]_i_5__0_n_0 ;
  wire \tally[3]_i_5_n_0 ;
  wire \tally[4]_i_10_n_0 ;
  wire \tally[4]_i_11_n_0 ;
  wire \tally[4]_i_12__0_n_0 ;
  wire \tally[4]_i_12_n_0 ;
  wire \tally[4]_i_13__0_n_0 ;
  wire \tally[4]_i_13_n_0 ;
  wire \tally[4]_i_14_n_0 ;
  wire \tally[4]_i_15__0_n_0 ;
  wire \tally[4]_i_15_n_0 ;
  wire \tally[4]_i_16__0_n_0 ;
  wire \tally[4]_i_16_n_0 ;
  wire \tally[4]_i_17__0_n_0 ;
  wire \tally[4]_i_19_n_0 ;
  wire \tally[4]_i_21_n_0 ;
  wire \tally[4]_i_22_n_0 ;
  wire \tally[4]_i_23_n_0 ;
  wire \tally[4]_i_24_n_0 ;
  wire \tally[4]_i_25_n_0 ;
  wire \tally[4]_i_2__0_n_0 ;
  wire \tally[4]_i_3__0_n_0 ;
  wire \tally[4]_i_4_n_0 ;
  wire \tally[4]_i_5__0_n_0 ;
  wire \tally[4]_i_5_n_0 ;
  wire \tally[4]_i_6__0_n_0 ;
  wire \tally[4]_i_7__0_n_0 ;
  wire \tally[4]_i_8__0_n_0 ;
  wire \tally[4]_i_8_n_0 ;
  wire \tally[4]_i_9__0_n_0 ;
  wire \tally[4]_i_9_n_0 ;
  wire \tally_reg[2] ;
  wire \tally_reg[2]_0 ;
  wire \tally_reg[3] ;
  wire \tally_reg[3]_0 ;
  wire [7:0]\tally_reg[4] ;
  wire \tally_reg[4]_0 ;
  wire [3:0]\tally_reg[4]_1 ;
  wire [3:0]\tally_reg[4]_2 ;
  wire \tally_reg[4]_3 ;
  wire \tmds_out[0]_i_2_n_0 ;
  wire \tmds_out[2]_i_2_n_0 ;
  wire \tmds_out[6]_i_2__0_n_0 ;
  wire \tmds_out[8]_i_3_n_0 ;
  wire \tmds_out[8]_i_4_n_0 ;
  wire \tmds_out[8]_i_5_n_0 ;
  wire \tmds_out[8]_i_6_n_0 ;
  wire \tmds_out[8]_i_7_n_0 ;
  wire \tmds_out[9]_i_2__0_n_0 ;
  wire [3:0]\tmds_out_reg[7] ;
  wire [7:5]\tmds_red/q_m ;
  wire NLW_BRAM_reg_0_14_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_14_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_14_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_14_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_14_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_0_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_0_14_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_0_16_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_16_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_16_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_0_16_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_16_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_0_16_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_16_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_0_16_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_16_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_0_16_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_0_16_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_0_16_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_1_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_1_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_1_14_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_14_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_14_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_14_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_1_14_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_1_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_1_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_1_14_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_1_16_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_1_16_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_1_16_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_16_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_16_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_1_16_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_16_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_1_16_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_1_16_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_1_16_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_16_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_1_16_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_1_16_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_1_16_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_2_14_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_14_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_14_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_14_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_14_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_2_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_2_14_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_2_16_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_16_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_16_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_2_16_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_16_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_2_16_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_16_DOADO_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_2_16_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_16_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_2_16_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_2_16_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_2_16_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_3_14_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_3_14_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_3_14_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_14_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_14_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_14_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_14_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_14_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_3_14_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_3_14_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_14_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_14_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_3_14_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_3_14_RDADDRECC_UNCONNECTED;
  wire NLW_BRAM_reg_3_16_CASCADEOUTA_UNCONNECTED;
  wire NLW_BRAM_reg_3_16_CASCADEOUTB_UNCONNECTED;
  wire NLW_BRAM_reg_3_16_DBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_16_INJECTDBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_16_INJECTSBITERR_UNCONNECTED;
  wire NLW_BRAM_reg_3_16_SBITERR_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_16_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_BRAM_reg_3_16_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_BRAM_reg_3_16_DOADO_UNCONNECTED;
  wire [31:1]NLW_BRAM_reg_3_16_DOBDO_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_16_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_BRAM_reg_3_16_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_BRAM_reg_3_16_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_BRAM_reg_3_16_RDADDRECC_UNCONNECTED;

  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_0_14" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
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
    .IS_ENBWREN_INVERTED(1'b1),
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
    BRAM_reg_0_14
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_0_14_n_0),
        .CASCADEOUTB(BRAM_reg_0_14_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_0_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_14_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_14_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_0_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_0_14_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_0_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_0_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_0_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_0_14_ENBWREN_cooolgate_en_sig_4),
        .INJECTDBITERR(NLW_BRAM_reg_0_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_0_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_0_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_0_14_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hf2)) 
    BRAM_reg_0_14_ENBWREN_cooolgate_en_gate_4
       (.I0(addrb[15]),
        .I1(\rast/z_buffer0/BRAM_reg_0_14_cooolgate_en_sig_3 ),
        .I2(addrb[16]),
        .O(BRAM_reg_0_14_ENBWREN_cooolgate_en_sig_4));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG:ENARDEN=NEW" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_0_16" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
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
    .IS_ENBWREN_INVERTED(1'b1),
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
    BRAM_reg_0_16
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_0_16_n_0),
        .CASCADEOUTB(BRAM_reg_0_16_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_0_16_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_16_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_0_16_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_0_16_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_0_16_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_0_16_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_0_16_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_0_16_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_0_16_ENBWREN_cooolgate_en_sig_5),
        .INJECTDBITERR(NLW_BRAM_reg_0_16_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_0_16_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_0_16_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_0_16_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hf2)) 
    BRAM_reg_0_16_ENBWREN_cooolgate_en_gate_6
       (.I0(addrb[15]),
        .I1(\rast/z_buffer0/BRAM_reg_0_14_cooolgate_en_sig_3 ),
        .I2(addrb[16]),
        .O(BRAM_reg_0_16_ENBWREN_cooolgate_en_sig_5));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* POWER_OPTED_WE2EN = "ENARDEN" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_1_14" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
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
    .IS_ENBWREN_INVERTED(1'b1),
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
    BRAM_reg_1_14
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(BRAM_reg_0_14_n_0),
        .CASCADEINB(BRAM_reg_0_14_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_1_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_1_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_1_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_14_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_14_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_1_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_1_14_DOBDO_UNCONNECTED[31:1],BRAM_reg_1_14_n_67}),
        .DOPADOP(NLW_BRAM_reg_1_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_1_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_1_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(addrb[16]),
        .INJECTDBITERR(NLW_BRAM_reg_1_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_1_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_1_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_1_14_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "RETARGET" *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* POWER_OPTED_WE2EN = "ENARDEN" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_1_16" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
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
    .IS_ENBWREN_INVERTED(1'b1),
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
    BRAM_reg_1_16
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(BRAM_reg_0_16_n_0),
        .CASCADEINB(BRAM_reg_0_16_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_1_16_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_1_16_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_1_16_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_16_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_1_16_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_1_16_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_1_16_DOBDO_UNCONNECTED[31:1],BRAM_reg_1_16_n_67}),
        .DOPADOP(NLW_BRAM_reg_1_16_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_1_16_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_1_16_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(addrb[16]),
        .INJECTDBITERR(NLW_BRAM_reg_1_16_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_1_16_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_1_16_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_1_16_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_2_14" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
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
    BRAM_reg_2_14
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_2_14_n_0),
        .CASCADEOUTB(BRAM_reg_2_14_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_2_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_14_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_14_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_2_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_2_14_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_2_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_2_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_2_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_2_14_ENBWREN_cooolgate_en_sig_7),
        .INJECTDBITERR(NLW_BRAM_reg_2_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_2_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_2_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_2_14_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h70)) 
    BRAM_reg_2_14_ENBWREN_cooolgate_en_gate_9
       (.I0(addrb[15]),
        .I1(\rast/z_buffer0/BRAM_reg_2_14_cooolgate_en_sig_6 ),
        .I2(addrb[16]),
        .O(BRAM_reg_2_14_ENBWREN_cooolgate_en_sig_7));
  (* IS_CLOCK_GATED *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* POWER_OPTED_CE = "ENBWREN=AUG" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_2_16" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "65536" *) 
  (* ram_addr_end = "98303" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
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
    BRAM_reg_2_16
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(BRAM_reg_2_16_n_0),
        .CASCADEOUTB(BRAM_reg_2_16_n_1),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_2_16_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_16_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_2_16_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_2_16_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_BRAM_reg_2_16_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_BRAM_reg_2_16_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_2_16_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_2_16_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(BRAM_reg_2_16_ENBWREN_cooolgate_en_sig_8),
        .INJECTDBITERR(NLW_BRAM_reg_2_16_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_2_16_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_2_16_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_2_16_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h70)) 
    BRAM_reg_2_16_ENBWREN_cooolgate_en_gate_11
       (.I0(addrb[15]),
        .I1(\rast/z_buffer0/BRAM_reg_2_14_cooolgate_en_sig_6 ),
        .I2(addrb[16]),
        .O(BRAM_reg_2_16_ENBWREN_cooolgate_en_sig_8));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_3_14" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
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
    BRAM_reg_3_14
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(BRAM_reg_2_14_n_0),
        .CASCADEINB(BRAM_reg_2_14_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_3_14_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_3_14_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_3_14_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_14_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_14_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_3_14_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_3_14_DOBDO_UNCONNECTED[31:1],BRAM_reg_3_14_n_67}),
        .DOPADOP(NLW_BRAM_reg_3_14_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_3_14_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_3_14_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(addrb[16]),
        .INJECTDBITERR(NLW_BRAM_reg_3_14_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_3_14_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_3_14_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_3_14_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2203200" *) 
  (* RTL_RAM_NAME = "rast/z_buffer0/BRAM_reg_3_16" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "98304" *) 
  (* ram_addr_end = "131071" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
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
    BRAM_reg_3_16
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR(addrb[15:0]),
        .CASCADEINA(BRAM_reg_2_16_n_0),
        .CASCADEINB(BRAM_reg_2_16_n_1),
        .CASCADEOUTA(NLW_BRAM_reg_3_16_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_BRAM_reg_3_16_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_pixel),
        .CLKBWRCLK(clk_pixel),
        .DBITERR(NLW_BRAM_reg_3_16_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_16_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_BRAM_reg_3_16_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_BRAM_reg_3_16_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_BRAM_reg_3_16_DOBDO_UNCONNECTED[31:1],BRAM_reg_3_16_n_67}),
        .DOPADOP(NLW_BRAM_reg_3_16_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_BRAM_reg_3_16_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_BRAM_reg_3_16_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(1'b0),
        .ENBWREN(addrb[16]),
        .INJECTDBITERR(NLW_BRAM_reg_3_16_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_BRAM_reg_3_16_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_BRAM_reg_3_16_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_BRAM_reg_3_16_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE BRAM_reg_mux_sel_b_pos_0__8
       (.C(clk_pixel),
        .CE(1'b1),
        .D(addrb[16]),
        .Q(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_register.doutb_reg[10]_i_1 
       (.I0(BRAM_reg_3_14_n_67),
        .I1(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .I2(BRAM_reg_1_14_n_67),
        .O(ram_data_b[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \output_register.doutb_reg[12]_i_1 
       (.I0(BRAM_reg_3_16_n_67),
        .I1(BRAM_reg_mux_sel_b_pos_0__8_n_0),
        .I2(BRAM_reg_1_16_n_67),
        .O(ram_data_b[12]));
  FDRE #(
    .INIT(1'b0)) 
    \output_register.doutb_reg_reg[10] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(ram_data_b[10]),
        .Q(gray[1]),
        .R(btn_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \output_register.doutb_reg_reg[12] 
       (.C(clk_pixel),
        .CE(1'b1),
        .D(ram_data_b[12]),
        .Q(gray[3]),
        .R(btn_IBUF));
  FDCE #(
    .INIT(1'b1)) 
    \rast/z_buffer0/BRAM_reg_0_14_cooolgate_en_gate_3_cooolDelFlop 
       (.C(clk_pixel),
        .CE(1'b1),
        .CLR(1'b0),
        .D(addrb[16]),
        .Q(\rast/z_buffer0/BRAM_reg_0_14_cooolgate_en_sig_3 ));
  FDCE #(
    .INIT(1'b0)) 
    \rast/z_buffer0/BRAM_reg_2_14_cooolgate_en_gate_8_cooolDelFlop 
       (.C(clk_pixel),
        .CE(1'b1),
        .CLR(1'b0),
        .D(addrb[16]),
        .Q(\rast/z_buffer0/BRAM_reg_2_14_cooolgate_en_sig_6 ));
  LUT5 #(
    .INIT(32'h960096FF)) 
    \tally[1]_i_1 
       (.I0(\tally[1]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(\tally[4]_i_5__0_n_0 ),
        .I3(\tally_reg[2]_0 ),
        .I4(\tally[2]_i_4__0_n_0 ),
        .O(\tally_reg[4]_1 [0]));
  LUT5 #(
    .INIT(32'h74474774)) 
    \tally[1]_i_1__0 
       (.I0(\tally[2]_i_3__0_n_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tally[1]_i_2_n_0 ),
        .I3(\tmds_out_reg[7] [0]),
        .I4(\tally_reg[4]_0 ),
        .O(\tally_reg[4]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \tally[1]_i_2 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally[4]_i_15__0_n_0 ),
        .O(\tally[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \tally[2]_i_1 
       (.I0(\tmds_out_reg[7] [1]),
        .I1(\output_register.doutb_reg_reg[10]_1 ),
        .I2(\tally[2]_i_3__0_n_0 ),
        .I3(\tally[2]_i_4_n_0 ),
        .I4(\tally_reg[2] ),
        .I5(\tally[2]_i_5_n_0 ),
        .O(\tally_reg[4]_2 [1]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'hC3963C69)) 
    \tally[2]_i_10 
       (.I0(\tally[2]_i_6__0_n_0 ),
        .I1(\tally[4]_i_17__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tmds_out[2]_i_2_n_0 ),
        .I4(\tally[4]_i_19_n_0 ),
        .O(\tally[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF066F099F099F066)) 
    \tally[2]_i_1__0 
       (.I0(Q[1]),
        .I1(\output_register.doutb_reg_reg[10]_3 ),
        .I2(\tally[2]_i_3_n_0 ),
        .I3(\tally_reg[2]_0 ),
        .I4(\tally[2]_i_4__0_n_0 ),
        .I5(\tally[2]_i_5__0_n_0 ),
        .O(\tally_reg[4]_1 [1]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'h90600609)) 
    \tally[2]_i_2 
       (.I0(\tally[4]_i_19_n_0 ),
        .I1(\tally[4]_i_17__0_n_0 ),
        .I2(\tally[2]_i_6__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .I4(\tmds_out[2]_i_2_n_0 ),
        .O(\output_register.doutb_reg_reg[10]_1 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'h90600609)) 
    \tally[2]_i_2__0 
       (.I0(\tally[4]_i_19_n_0 ),
        .I1(\tally[4]_i_17__0_n_0 ),
        .I2(\tally[2]_i_6__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .I4(\tmds_out[2]_i_2_n_0 ),
        .O(\output_register.doutb_reg_reg[10]_3 ));
  LUT6 #(
    .INIT(64'h556655663FF3C00C)) 
    \tally[2]_i_3 
       (.I0(\tally[2]_i_7_n_0 ),
        .I1(\tally[1]_i_2_n_0 ),
        .I2(\tally[2]_i_8__0_n_0 ),
        .I3(Q[0]),
        .I4(\tally[2]_i_9__0_n_0 ),
        .I5(\tally[4]_i_5__0_n_0 ),
        .O(\tally[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tally[2]_i_3__0 
       (.I0(\tally[4]_i_15__0_n_0 ),
        .I1(\tally[2]_i_6_n_0 ),
        .I2(\tally[2]_i_7__0_n_0 ),
        .I3(\tmds_out_reg[7] [0]),
        .O(\tally[2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \tally[2]_i_4 
       (.I0(\tmds_out_reg[7] [0]),
        .I1(\tally[4]_i_15__0_n_0 ),
        .I2(\tally[2]_i_7__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .O(\tally[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tally[2]_i_4__0 
       (.I0(\tally[4]_i_15__0_n_0 ),
        .I1(\tally[2]_i_10_n_0 ),
        .I2(\tally[2]_i_8__0_n_0 ),
        .I3(Q[0]),
        .O(\tally[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9A93FF3C00C)) 
    \tally[2]_i_5 
       (.I0(\tally[2]_i_8_n_0 ),
        .I1(\tally[1]_i_2_n_0 ),
        .I2(\tmds_out_reg[7] [0]),
        .I3(\tally[2]_i_7__0_n_0 ),
        .I4(\tally[2]_i_9_n_0 ),
        .I5(\tally_reg[4]_0 ),
        .O(\tally[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \tally[2]_i_5__0 
       (.I0(Q[0]),
        .I1(\tally[4]_i_15__0_n_0 ),
        .I2(\tally[2]_i_8__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .O(\tally[2]_i_5__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'hC3963C69)) 
    \tally[2]_i_6 
       (.I0(\tally[2]_i_6__0_n_0 ),
        .I1(\tally[4]_i_17__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tmds_out[2]_i_2_n_0 ),
        .I4(\tally[4]_i_19_n_0 ),
        .O(\tally[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB44B4BB44BB4B44B)) 
    \tally[2]_i_6__0 
       (.I0(gray[1]),
        .I1(led_OBUF),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tmds_red/q_m [6]),
        .I4(\tmds_out[0]_i_2_n_0 ),
        .I5(\tmds_red/q_m [7]),
        .O(\tally[2]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'h66699969)) 
    \tally[2]_i_7 
       (.I0(\output_register.doutb_reg_reg[10]_3 ),
        .I1(Q[1]),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tally[4]_i_15__0_n_0 ),
        .I4(\tally[2]_i_8__0_n_0 ),
        .O(\tally[2]_i_7_n_0 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'h3C69C396)) 
    \tally[2]_i_7__0 
       (.I0(\tally[2]_i_6__0_n_0 ),
        .I1(\tally[4]_i_17__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tmds_out[2]_i_2_n_0 ),
        .I4(\tally[4]_i_19_n_0 ),
        .O(\tally[2]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h99966696)) 
    \tally[2]_i_8 
       (.I0(\tmds_out_reg[7] [1]),
        .I1(\output_register.doutb_reg_reg[10]_1 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tally[4]_i_15__0_n_0 ),
        .I4(\tally[2]_i_7__0_n_0 ),
        .O(\tally[2]_i_8_n_0 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'h3C69C396)) 
    \tally[2]_i_8__0 
       (.I0(\tally[2]_i_6__0_n_0 ),
        .I1(\tally[4]_i_17__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tmds_out[2]_i_2_n_0 ),
        .I4(\tally[4]_i_19_n_0 ),
        .O(\tally[2]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'h9A59)) 
    \tally[2]_i_9 
       (.I0(\tmds_out_reg[7] [1]),
        .I1(\tally[2]_i_6_n_0 ),
        .I2(\tally[4]_i_15__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .O(\tally[2]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h9A59)) 
    \tally[2]_i_9__0 
       (.I0(Q[1]),
        .I1(\tally[2]_i_10_n_0 ),
        .I2(\tally[4]_i_15__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .O(\tally[2]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \tally[3]_i_2 
       (.I0(\tally_reg[3] ),
        .I1(\tally[4]_i_13_n_0 ),
        .I2(\tally_reg[4]_0 ),
        .I3(\tally[4]_i_16_n_0 ),
        .I4(\tally[3]_i_5__0_n_0 ),
        .I5(\tally[4]_i_15_n_0 ),
        .O(\tally[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDFFEEFF7796BB96)) 
    \tally[3]_i_2__0 
       (.I0(\tally[4]_i_24_n_0 ),
        .I1(\output_register.doutb_reg_reg[10]_5 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\output_register.doutb_reg_reg[10]_3 ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\tally[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEBBBEBEED7EED7BB)) 
    \tally[3]_i_3 
       (.I0(\tmds_out_reg[7] [2]),
        .I1(\tally[4]_i_10_n_0 ),
        .I2(\tmds_out_reg[7] [1]),
        .I3(\output_register.doutb_reg_reg[10]_1 ),
        .I4(\output_register.doutb_reg_reg[10]_0 ),
        .I5(\output_register.doutb_reg_reg[10]_2 ),
        .O(\tally[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \tally[3]_i_3__0 
       (.I0(\tally_reg[3]_0 ),
        .I1(\tally[4]_i_14_n_0 ),
        .I2(\tally[4]_i_5__0_n_0 ),
        .I3(\tally[4]_i_22_n_0 ),
        .I4(\tally[3]_i_5_n_0 ),
        .I5(\tally[4]_i_21_n_0 ),
        .O(\tally[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tally[3]_i_5 
       (.I0(\output_register.doutb_reg_reg[10]_5 ),
        .I1(Q[2]),
        .O(\tally[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tally[3]_i_5__0 
       (.I0(\output_register.doutb_reg_reg[10]_2 ),
        .I1(\tmds_out_reg[7] [2]),
        .O(\tally[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h7B9A4D06F9B26584)) 
    \tally[4]_i_10 
       (.I0(\tally[4]_i_15__0_n_0 ),
        .I1(\tally[2]_i_6_n_0 ),
        .I2(\tally[2]_i_7__0_n_0 ),
        .I3(\tmds_out_reg[7] [0]),
        .I4(\tmds_out_reg[7] [1]),
        .I5(\output_register.doutb_reg_reg[10]_0 ),
        .O(\tally[4]_i_10_n_0 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \tally[4]_i_11 
       (.I0(\tally[4]_i_19_n_0 ),
        .I1(\tally[4]_i_17__0_n_0 ),
        .I2(\tally[2]_i_6__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .I4(\tmds_out[2]_i_2_n_0 ),
        .O(\tally[4]_i_11_n_0 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'hF5E75071)) 
    \tally[4]_i_11__0 
       (.I0(\tally[4]_i_17__0_n_0 ),
        .I1(\tally[2]_i_6__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tmds_out[2]_i_2_n_0 ),
        .I4(\tally[4]_i_19_n_0 ),
        .O(\output_register.doutb_reg_reg[10]_2 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \tally[4]_i_12 
       (.I0(\tmds_out_reg[7] [1]),
        .I1(\output_register.doutb_reg_reg[10]_1 ),
        .I2(\output_register.doutb_reg_reg[10]_2 ),
        .O(\tally[4]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \tally[4]_i_12__0 
       (.I0(Q[1]),
        .I1(\output_register.doutb_reg_reg[10]_3 ),
        .I2(\output_register.doutb_reg_reg[10]_5 ),
        .O(\tally[4]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h99900090F9999099)) 
    \tally[4]_i_13 
       (.I0(\tmds_out_reg[7] [1]),
        .I1(\output_register.doutb_reg_reg[10]_1 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tally[4]_i_15__0_n_0 ),
        .I4(\tally[2]_i_7__0_n_0 ),
        .I5(\tmds_out_reg[7] [0]),
        .O(\tally[4]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tally[4]_i_13__0 
       (.I0(\output_register.doutb_reg_reg[10]_3 ),
        .I1(\output_register.doutb_reg_reg[10]_5 ),
        .O(\tally[4]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hFD4040FD71000071)) 
    \tally[4]_i_14 
       (.I0(Q[0]),
        .I1(\tally[4]_i_15__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\output_register.doutb_reg_reg[10]_3 ),
        .I4(Q[1]),
        .I5(\tally[2]_i_8__0_n_0 ),
        .O(\tally[4]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h4504)) 
    \tally[4]_i_15 
       (.I0(\tmds_out_reg[7] [1]),
        .I1(\output_register.doutb_reg_reg[10]_0 ),
        .I2(\tally[4]_i_15__0_n_0 ),
        .I3(\tally[2]_i_6_n_0 ),
        .O(\tally[4]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tally[4]_i_15__0 
       (.I0(\tally[4]_i_25_n_0 ),
        .I1(\tally[2]_i_6__0_n_0 ),
        .O(\tally[4]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'hCC4F1FCC334C1333)) 
    \tally[4]_i_16 
       (.I0(\tally[2]_i_7__0_n_0 ),
        .I1(\tmds_out_reg[7] [1]),
        .I2(\tmds_out_reg[7] [0]),
        .I3(\tally[4]_i_15__0_n_0 ),
        .I4(\output_register.doutb_reg_reg[10]_0 ),
        .I5(\tally[2]_i_6_n_0 ),
        .O(\tally[4]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tally[4]_i_16__0 
       (.I0(\tally[4]_i_25_n_0 ),
        .I1(\tally[2]_i_6__0_n_0 ),
        .O(\tally[4]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'h40F4B0FBB0FB40F4)) 
    \tally[4]_i_17__0 
       (.I0(gray[1]),
        .I1(led_OBUF),
        .I2(\tmds_out[0]_i_2_n_0 ),
        .I3(\tmds_red/q_m [7]),
        .I4(\tmds_red/q_m [6]),
        .I5(\output_register.doutb_reg_reg[10]_0 ),
        .O(\tally[4]_i_17__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \tally[4]_i_18 
       (.I0(\tally[4]_i_19_n_0 ),
        .I1(\tally[4]_i_17__0_n_0 ),
        .I2(\tally[2]_i_6__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .I4(\tmds_out[2]_i_2_n_0 ),
        .O(\output_register.doutb_reg_reg[10]_4 ));
  LUT5 #(
    .INIT(32'hA6AA9AAA)) 
    \tally[4]_i_19 
       (.I0(\tmds_out[6]_i_2__0_n_0 ),
        .I1(\output_register.doutb_reg_reg[10]_0 ),
        .I2(gray[1]),
        .I3(led_OBUF),
        .I4(gray[3]),
        .O(\tally[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \tally[4]_i_1__0 
       (.I0(\tally[4]_i_2__0_n_0 ),
        .I1(\tally[4]_i_3__0_n_0 ),
        .I2(\tally_reg[2] ),
        .I3(\tally[4]_i_5_n_0 ),
        .I4(\tally_reg[4]_0 ),
        .I5(\tally[4]_i_7__0_n_0 ),
        .O(\tally_reg[4]_2 [3]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \tally[4]_i_2 
       (.I0(\tally[4]_i_4_n_0 ),
        .I1(\tally[4]_i_5__0_n_0 ),
        .I2(\tally[4]_i_6__0_n_0 ),
        .I3(\tally_reg[2]_0 ),
        .I4(\tally[4]_i_8_n_0 ),
        .I5(\tally[4]_i_9_n_0 ),
        .O(\tally_reg[4]_1 [3]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'hF5E75071)) 
    \tally[4]_i_20 
       (.I0(\tally[4]_i_17__0_n_0 ),
        .I1(\tally[2]_i_6__0_n_0 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .I3(\tmds_out[2]_i_2_n_0 ),
        .I4(\tally[4]_i_19_n_0 ),
        .O(\output_register.doutb_reg_reg[10]_5 ));
  LUT4 #(
    .INIT(16'h4504)) 
    \tally[4]_i_21 
       (.I0(Q[1]),
        .I1(\output_register.doutb_reg_reg[10]_0 ),
        .I2(\tally[4]_i_15__0_n_0 ),
        .I3(\tally[2]_i_10_n_0 ),
        .O(\tally[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hCC4F1FCC334C1333)) 
    \tally[4]_i_22 
       (.I0(\tally[2]_i_8__0_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\tally[4]_i_15__0_n_0 ),
        .I4(\output_register.doutb_reg_reg[10]_0 ),
        .I5(\tally[2]_i_10_n_0 ),
        .O(\tally[4]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hAAC0553F)) 
    \tally[4]_i_23 
       (.I0(Q[2]),
        .I1(\tally[4]_i_11_n_0 ),
        .I2(\output_register.doutb_reg_reg[10]_3 ),
        .I3(\output_register.doutb_reg_reg[10]_5 ),
        .I4(Q[3]),
        .O(\tally[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hC57D246341356CE7)) 
    \tally[4]_i_24 
       (.I0(Q[1]),
        .I1(\tally[4]_i_15__0_n_0 ),
        .I2(\tally[2]_i_10_n_0 ),
        .I3(Q[0]),
        .I4(\tally[2]_i_8__0_n_0 ),
        .I5(\output_register.doutb_reg_reg[10]_0 ),
        .O(\tally[4]_i_24_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \tally[4]_i_25 
       (.I0(gray[3]),
        .I1(led_OBUF),
        .O(\tally[4]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h95AAA695)) 
    \tally[4]_i_2__0 
       (.I0(\tmds_out_reg[7] [3]),
        .I1(\tally[4]_i_8__0_n_0 ),
        .I2(\tmds_out_reg[7] [2]),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .I4(\tally[4]_i_9__0_n_0 ),
        .O(\tally[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hD444D4DDE8DDE844)) 
    \tally[4]_i_3__0 
       (.I0(\tmds_out_reg[7] [2]),
        .I1(\tally[4]_i_10_n_0 ),
        .I2(\tmds_out_reg[7] [1]),
        .I3(\output_register.doutb_reg_reg[10]_1 ),
        .I4(\output_register.doutb_reg_reg[10]_0 ),
        .I5(\output_register.doutb_reg_reg[10]_2 ),
        .O(\tally[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h966666C3999696CC)) 
    \tally[4]_i_4 
       (.I0(\tally[4]_i_11_n_0 ),
        .I1(Q[3]),
        .I2(\tally[4]_i_12__0_n_0 ),
        .I3(Q[2]),
        .I4(\tally[4]_i_13__0_n_0 ),
        .I5(\tally[4]_i_14_n_0 ),
        .O(\tally[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCCC396663CCC9996)) 
    \tally[4]_i_5 
       (.I0(\tally[4]_i_9__0_n_0 ),
        .I1(\tmds_out_reg[7] [3]),
        .I2(\tally[4]_i_12_n_0 ),
        .I3(\tmds_out_reg[7] [2]),
        .I4(\tally[4]_i_8__0_n_0 ),
        .I5(\tally[4]_i_13_n_0 ),
        .O(\tally[4]_i_5_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h003030F3EF8E8E08)) 
    \tally[4]_i_5__0 
       (.I0(\tally[4]_i_15__0_n_0 ),
        .I1(\tally[4]_i_16__0_n_0 ),
        .I2(\tally[4]_i_17__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .I4(\tally[4]_i_19_n_0 ),
        .I5(Q[3]),
        .O(\tally[4]_i_5__0_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h003030F3EF8E8E08)) 
    \tally[4]_i_6 
       (.I0(\tally[4]_i_15__0_n_0 ),
        .I1(\tally[4]_i_16__0_n_0 ),
        .I2(\tally[4]_i_17__0_n_0 ),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .I4(\tally[4]_i_19_n_0 ),
        .I5(\tmds_out_reg[7] [3]),
        .O(\tally_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hF990066F)) 
    \tally[4]_i_6__0 
       (.I0(Q[2]),
        .I1(\output_register.doutb_reg_reg[10]_5 ),
        .I2(\tally[4]_i_21_n_0 ),
        .I3(\tally[4]_i_22_n_0 ),
        .I4(\tally[4]_i_23_n_0 ),
        .O(\tally[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hE78EE7711871188E)) 
    \tally[4]_i_7__0 
       (.I0(\tally[4]_i_15_n_0 ),
        .I1(\tally[4]_i_16_n_0 ),
        .I2(\tmds_out_reg[7] [2]),
        .I3(\output_register.doutb_reg_reg[10]_2 ),
        .I4(\output_register.doutb_reg_reg[10]_1 ),
        .I5(\tally_reg[4]_3 ),
        .O(\tally[4]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h9A55569A)) 
    \tally[4]_i_8 
       (.I0(Q[3]),
        .I1(\tally[4]_i_13__0_n_0 ),
        .I2(Q[2]),
        .I3(\output_register.doutb_reg_reg[10]_0 ),
        .I4(\tally[4]_i_11_n_0 ),
        .O(\tally[4]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \tally[4]_i_8__0 
       (.I0(\output_register.doutb_reg_reg[10]_2 ),
        .I1(\output_register.doutb_reg_reg[10]_1 ),
        .O(\tally[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h8EEE8E884D884DEE)) 
    \tally[4]_i_9 
       (.I0(Q[2]),
        .I1(\tally[4]_i_24_n_0 ),
        .I2(Q[1]),
        .I3(\output_register.doutb_reg_reg[10]_3 ),
        .I4(\output_register.doutb_reg_reg[10]_0 ),
        .I5(\output_register.doutb_reg_reg[10]_5 ),
        .O(\tally[4]_i_9_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \tally[4]_i_9__0 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally[4]_i_19_n_0 ),
        .I2(\tally[4]_i_25_n_0 ),
        .I3(\tally[2]_i_6__0_n_0 ),
        .I4(\tally[4]_i_17__0_n_0 ),
        .O(\tally[4]_i_9__0_n_0 ));
  MUXF7 \tally_reg[3]_i_1 
       (.I0(\tally[3]_i_2__0_n_0 ),
        .I1(\tally[3]_i_3__0_n_0 ),
        .O(\tally_reg[4]_1 [2]),
        .S(\tally_reg[2]_0 ));
  MUXF7 \tally_reg[3]_i_1__0 
       (.I0(\tally[3]_i_2_n_0 ),
        .I1(\tally[3]_i_3_n_0 ),
        .O(\tally_reg[4]_2 [2]),
        .S(\tally_reg[2] ));
  LUT6 #(
    .INIT(64'hB487FFFFB4870000)) 
    \tmds_out[0]_i_1 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tmds_out[0]_i_2_n_0 ),
        .I3(\tally_reg[4]_0 ),
        .I4(active_draw),
        .I5(hor_sync),
        .O(\tally_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2282)) 
    \tmds_out[0]_i_1__0 
       (.I0(active_draw),
        .I1(\tmds_out[9]_i_2__0_n_0 ),
        .I2(led_OBUF),
        .I3(gray[1]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \tmds_out[0]_i_2 
       (.I0(led_OBUF),
        .I1(gray[1]),
        .O(\tmds_out[0]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tmds_out[1]_i_1 
       (.I0(active_draw),
        .I1(\output_register.doutb_reg_reg[10]_0 ),
        .I2(\tmds_out[9]_i_2__0_n_0 ),
        .O(D[1]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'h12FF1200)) 
    \tmds_out[1]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tally_reg[4]_0 ),
        .I3(active_draw),
        .I4(hor_sync),
        .O(\tally_reg[4] [1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT4 #(
    .INIT(16'h65FF)) 
    \tmds_out[2]_i_1 
       (.I0(\tmds_out[9]_i_2__0_n_0 ),
        .I1(gray[3]),
        .I2(led_OBUF),
        .I3(active_draw),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB800B8FF470047FF)) 
    \tmds_out[2]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tally_reg[4]_0 ),
        .I3(active_draw),
        .I4(hor_sync),
        .I5(\tmds_out[2]_i_2_n_0 ),
        .O(\tally_reg[4] [2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \tmds_out[2]_i_2 
       (.I0(gray[3]),
        .I1(led_OBUF),
        .O(\tmds_out[2]_i_2_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tmds_out[3]_i_1 
       (.I0(active_draw),
        .I1(\output_register.doutb_reg_reg[10]_0 ),
        .I2(\tmds_out[9]_i_2__0_n_0 ),
        .O(D[3]));
  (* OPT_MODIFIED = "RETARGET PROPCONST" *) 
  LUT5 #(
    .INIT(32'h12FF1200)) 
    \tmds_out[3]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tally_reg[4]_0 ),
        .I3(active_draw),
        .I4(hor_sync),
        .O(\tally_reg[4] [3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \tmds_out[4]_i_1 
       (.I0(\tmds_out[9]_i_2__0_n_0 ),
        .I1(\tmds_out[6]_i_2__0_n_0 ),
        .I2(active_draw),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h470047FFB800B8FF)) 
    \tmds_out[4]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tally_reg[4]_0 ),
        .I3(active_draw),
        .I4(hor_sync),
        .I5(\tmds_out[6]_i_2__0_n_0 ),
        .O(\tally_reg[4] [4]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tmds_out[5]_i_1 
       (.I0(active_draw),
        .I1(\tmds_red/q_m [5]),
        .I2(\tmds_out[9]_i_2__0_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h47B8FFFF47B80000)) 
    \tmds_out[5]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tally_reg[4]_0 ),
        .I3(\tmds_red/q_m [5]),
        .I4(active_draw),
        .I5(hor_sync),
        .O(\tally_reg[4] [5]));
  LUT4 #(
    .INIT(16'h9699)) 
    \tmds_out[5]_i_2 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tmds_out[6]_i_2__0_n_0 ),
        .I2(gray[1]),
        .I3(led_OBUF),
        .O(\tmds_red/q_m [5]));
  LUT6 #(
    .INIT(64'h65959A6AFFFFFFFF)) 
    \tmds_out[6]_i_1 
       (.I0(\tmds_out[9]_i_2__0_n_0 ),
        .I1(gray[3]),
        .I2(led_OBUF),
        .I3(gray[1]),
        .I4(\tmds_out[6]_i_2__0_n_0 ),
        .I5(active_draw),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h470047FFB800B8FF)) 
    \tmds_out[6]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tally_reg[4]_0 ),
        .I3(active_draw),
        .I4(hor_sync),
        .I5(\tmds_red/q_m [6]),
        .O(\tally_reg[4] [6]));
  LUT4 #(
    .INIT(16'hB748)) 
    \tmds_out[6]_i_2 
       (.I0(gray[3]),
        .I1(led_OBUF),
        .I2(gray[1]),
        .I3(\tmds_out[6]_i_2__0_n_0 ),
        .O(\tmds_red/q_m [6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tmds_out[6]_i_2__0 
       (.I0(gray[1]),
        .I1(led_OBUF),
        .O(\tmds_out[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \tmds_out[7]_i_1 
       (.I0(active_draw),
        .I1(\tmds_red/q_m [7]),
        .I2(\tmds_out[9]_i_2__0_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h47B8FFFF47B80000)) 
    \tmds_out[7]_i_1__0 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(\tally_reg[2] ),
        .I2(\tally_reg[4]_0 ),
        .I3(\tmds_red/q_m [7]),
        .I4(active_draw),
        .I5(hor_sync),
        .O(\tally_reg[4] [7]));
  LUT6 #(
    .INIT(64'h3E833C3E83C33E83)) 
    \tmds_out[7]_i_2 
       (.I0(\tmds_out[0]_i_2_n_0 ),
        .I1(\tmds_out[8]_i_7_n_0 ),
        .I2(\tmds_out[8]_i_6_n_0 ),
        .I3(\tmds_out[8]_i_5_n_0 ),
        .I4(\tmds_out[8]_i_4_n_0 ),
        .I5(\tmds_out[8]_i_3_n_0 ),
        .O(\tmds_red/q_m [7]));
  LUT2 #(
    .INIT(4'h7)) 
    \tmds_out[8]_i_1 
       (.I0(\output_register.doutb_reg_reg[10]_0 ),
        .I1(active_draw),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h4D4D4DDF044D4D4D)) 
    \tmds_out[8]_i_2 
       (.I0(\tmds_out[8]_i_3_n_0 ),
        .I1(\tmds_out[8]_i_4_n_0 ),
        .I2(\tmds_out[8]_i_5_n_0 ),
        .I3(\tmds_out[8]_i_6_n_0 ),
        .I4(\tmds_out[8]_i_7_n_0 ),
        .I5(\tmds_out[0]_i_2_n_0 ),
        .O(\output_register.doutb_reg_reg[10]_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmds_out[8]_i_3 
       (.I0(led_OBUF),
        .I1(gray[3]),
        .O(\tmds_out[8]_i_3_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tmds_out[8]_i_4 
       (.I0(gray[1]),
        .I1(led_OBUF),
        .O(\tmds_out[8]_i_4_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmds_out[8]_i_5 
       (.I0(led_OBUF),
        .I1(gray[3]),
        .O(\tmds_out[8]_i_5_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmds_out[8]_i_6 
       (.I0(led_OBUF),
        .I1(gray[1]),
        .O(\tmds_out[8]_i_6_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \tmds_out[8]_i_7 
       (.I0(gray[1]),
        .I1(led_OBUF),
        .O(\tmds_out[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tmds_out[9]_i_1 
       (.I0(\tmds_out[9]_i_2__0_n_0 ),
        .I1(active_draw),
        .O(D[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmds_out[9]_i_2__0 
       (.I0(\tally[4]_i_5__0_n_0 ),
        .I1(\tally_reg[2]_0 ),
        .I2(\output_register.doutb_reg_reg[10]_0 ),
        .O(\tmds_out[9]_i_2__0_n_0 ));
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
