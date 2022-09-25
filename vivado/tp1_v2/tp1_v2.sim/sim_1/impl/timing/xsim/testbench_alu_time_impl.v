// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sun Sep 25 17:42:43 2022
// Host        : DESKTOP-1TGLUUV running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/arqui_2020/git/arqui-2022/vivado/tp1_v2/tp1_v2.sim/sim_1/impl/timing/xsim/testbench_alu_time_impl.v
// Design      : alu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ADD = "6'b100000" *) (* AND = "6'b100100" *) (* ECO_CHECKSUM = "18bd66f9" *) 
(* NB_IN = "8" *) (* NB_IN_ENABLE = "3" *) (* NB_OP = "6" *) 
(* NB_OUT = "8" *) (* NOR = "6'b100111" *) (* OR = "6'b100101" *) 
(* SRA = "6'b000011" *) (* SRL = "6'b000010" *) (* SUB = "6'b100010" *) 
(* XOR = "6'b100110" *) 
(* NotValidForBitStream *)
module alu
   (i_clk,
    i_enable,
    i_switch,
    o_led,
    o_carry_bit);
  input i_clk;
  input [2:0]i_enable;
  input [7:0]i_switch;
  output [7:0]o_led;
  output o_carry_bit;

  wire [8:0]data0;
  wire [7:0]data1;
  wire [7:0]data_a;
  wire [7:0]data_b;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [2:0]i_enable;
  wire [2:0]i_enable_IBUF;
  wire [7:0]i_switch;
  wire [7:0]i_switch_IBUF;
  wire o_carry_bit;
  wire o_carry_bit_OBUF;
  wire [7:0]o_led;
  wire [7:0]o_led_OBUF;
  wire [5:0]op_code;
  wire [8:0]result;
  wire \result[0]_i_2_n_0 ;
  wire \result[0]_i_3_n_0 ;
  wire \result[0]_i_4_n_0 ;
  wire \result[0]_i_5_n_0 ;
  wire \result[0]_i_6_n_0 ;
  wire \result[1]_i_2_n_0 ;
  wire \result[1]_i_3_n_0 ;
  wire \result[1]_i_4_n_0 ;
  wire \result[1]_i_5_n_0 ;
  wire \result[1]_i_6_n_0 ;
  wire \result[1]_i_7_n_0 ;
  wire \result[1]_i_8_n_0 ;
  wire \result[2]_i_2_n_0 ;
  wire \result[2]_i_3_n_0 ;
  wire \result[2]_i_4_n_0 ;
  wire \result[2]_i_5_n_0 ;
  wire \result[2]_i_6_n_0 ;
  wire \result[2]_i_7_n_0 ;
  wire \result[2]_i_8_n_0 ;
  wire \result[3]_i_10_n_0 ;
  wire \result[3]_i_13_n_0 ;
  wire \result[3]_i_14_n_0 ;
  wire \result[3]_i_15_n_0 ;
  wire \result[3]_i_16_n_0 ;
  wire \result[3]_i_17_n_0 ;
  wire \result[3]_i_18_n_0 ;
  wire \result[3]_i_19_n_0 ;
  wire \result[3]_i_20_n_0 ;
  wire \result[3]_i_21_n_0 ;
  wire \result[3]_i_22_n_0 ;
  wire \result[3]_i_23_n_0 ;
  wire \result[3]_i_24_n_0 ;
  wire \result[3]_i_25_n_0 ;
  wire \result[3]_i_26_n_0 ;
  wire \result[3]_i_27_n_0 ;
  wire \result[3]_i_28_n_0 ;
  wire \result[3]_i_2_n_0 ;
  wire \result[3]_i_3_n_0 ;
  wire \result[3]_i_4_n_0 ;
  wire \result[3]_i_5_n_0 ;
  wire \result[3]_i_6_n_0 ;
  wire \result[3]_i_7_n_0 ;
  wire \result[3]_i_8_n_0 ;
  wire \result[3]_i_9_n_0 ;
  wire \result[4]_i_10_n_0 ;
  wire \result[4]_i_2_n_0 ;
  wire \result[4]_i_3_n_0 ;
  wire \result[4]_i_4_n_0 ;
  wire \result[4]_i_5_n_0 ;
  wire \result[4]_i_6_n_0 ;
  wire \result[4]_i_7_n_0 ;
  wire \result[4]_i_8_n_0 ;
  wire \result[4]_i_9_n_0 ;
  wire \result[5]_i_2_n_0 ;
  wire \result[5]_i_3_n_0 ;
  wire \result[5]_i_4_n_0 ;
  wire \result[5]_i_5_n_0 ;
  wire \result[5]_i_6_n_0 ;
  wire \result[6]_i_2_n_0 ;
  wire \result[6]_i_3_n_0 ;
  wire \result[6]_i_4_n_0 ;
  wire \result[6]_i_5_n_0 ;
  wire \result[6]_i_6_n_0 ;
  wire \result[7]_i_2_n_0 ;
  wire \result[7]_i_3_n_0 ;
  wire \result[7]_i_4_n_0 ;
  wire \result[7]_i_5_n_0 ;
  wire \result[7]_i_6_n_0 ;
  wire \result[7]_i_7_n_0 ;
  wire \result[8]_i_10_n_0 ;
  wire \result[8]_i_11_n_0 ;
  wire \result[8]_i_14_n_0 ;
  wire \result[8]_i_15_n_0 ;
  wire \result[8]_i_16_n_0 ;
  wire \result[8]_i_17_n_0 ;
  wire \result[8]_i_18_n_0 ;
  wire \result[8]_i_19_n_0 ;
  wire \result[8]_i_20_n_0 ;
  wire \result[8]_i_21_n_0 ;
  wire \result[8]_i_22_n_0 ;
  wire \result[8]_i_23_n_0 ;
  wire \result[8]_i_24_n_0 ;
  wire \result[8]_i_25_n_0 ;
  wire \result[8]_i_26_n_0 ;
  wire \result[8]_i_27_n_0 ;
  wire \result[8]_i_28_n_0 ;
  wire \result[8]_i_29_n_0 ;
  wire \result[8]_i_2_n_0 ;
  wire \result[8]_i_4_n_0 ;
  wire \result[8]_i_5_n_0 ;
  wire \result[8]_i_7_n_0 ;
  wire \result[8]_i_8_n_0 ;
  wire \result[8]_i_9_n_0 ;
  wire \result_reg[3]_i_11_n_0 ;
  wire \result_reg[3]_i_12_n_0 ;
  wire \result_reg[8]_i_12_n_0 ;
  wire \result_reg[8]_i_13_n_0 ;
  wire \result_reg[8]_i_3_n_3 ;
  wire [2:0]\NLW_result_reg[3]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[3]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[8]_i_12_CO_UNCONNECTED ;
  wire [2:0]\NLW_result_reg[8]_i_13_CO_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[8]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[8]_i_3_O_UNCONNECTED ;
  wire [3:1]\NLW_result_reg[8]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[8]_i_6_O_UNCONNECTED ;

initial begin
 $sdf_annotate("testbench_alu_time_impl.sdf",,,,"tool_control");
end
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[0]),
        .D(i_switch_IBUF[0]),
        .Q(data_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[0]),
        .D(i_switch_IBUF[1]),
        .Q(data_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[0]),
        .D(i_switch_IBUF[2]),
        .Q(data_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[0]),
        .D(i_switch_IBUF[3]),
        .Q(data_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[0]),
        .D(i_switch_IBUF[4]),
        .Q(data_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[0]),
        .D(i_switch_IBUF[5]),
        .Q(data_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[0]),
        .D(i_switch_IBUF[6]),
        .Q(data_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_a_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[0]),
        .D(i_switch_IBUF[7]),
        .Q(data_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[1]),
        .D(i_switch_IBUF[0]),
        .Q(data_b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[1]),
        .D(i_switch_IBUF[1]),
        .Q(data_b[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[1]),
        .D(i_switch_IBUF[2]),
        .Q(data_b[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[1]),
        .D(i_switch_IBUF[3]),
        .Q(data_b[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[1]),
        .D(i_switch_IBUF[4]),
        .Q(data_b[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[1]),
        .D(i_switch_IBUF[5]),
        .Q(data_b[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[1]),
        .D(i_switch_IBUF[6]),
        .Q(data_b[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_b_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[1]),
        .D(i_switch_IBUF[7]),
        .Q(data_b[7]),
        .R(1'b0));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_enable_IBUF[0]_inst 
       (.I(i_enable[0]),
        .O(i_enable_IBUF[0]));
  IBUF \i_enable_IBUF[1]_inst 
       (.I(i_enable[1]),
        .O(i_enable_IBUF[1]));
  IBUF \i_enable_IBUF[2]_inst 
       (.I(i_enable[2]),
        .O(i_enable_IBUF[2]));
  IBUF \i_switch_IBUF[0]_inst 
       (.I(i_switch[0]),
        .O(i_switch_IBUF[0]));
  IBUF \i_switch_IBUF[1]_inst 
       (.I(i_switch[1]),
        .O(i_switch_IBUF[1]));
  IBUF \i_switch_IBUF[2]_inst 
       (.I(i_switch[2]),
        .O(i_switch_IBUF[2]));
  IBUF \i_switch_IBUF[3]_inst 
       (.I(i_switch[3]),
        .O(i_switch_IBUF[3]));
  IBUF \i_switch_IBUF[4]_inst 
       (.I(i_switch[4]),
        .O(i_switch_IBUF[4]));
  IBUF \i_switch_IBUF[5]_inst 
       (.I(i_switch[5]),
        .O(i_switch_IBUF[5]));
  IBUF \i_switch_IBUF[6]_inst 
       (.I(i_switch[6]),
        .O(i_switch_IBUF[6]));
  IBUF \i_switch_IBUF[7]_inst 
       (.I(i_switch[7]),
        .O(i_switch_IBUF[7]));
  OBUF o_carry_bit_OBUF_inst
       (.I(o_carry_bit_OBUF),
        .O(o_carry_bit));
  OBUF \o_led_OBUF[0]_inst 
       (.I(o_led_OBUF[0]),
        .O(o_led[0]));
  OBUF \o_led_OBUF[1]_inst 
       (.I(o_led_OBUF[1]),
        .O(o_led[1]));
  OBUF \o_led_OBUF[2]_inst 
       (.I(o_led_OBUF[2]),
        .O(o_led[2]));
  OBUF \o_led_OBUF[3]_inst 
       (.I(o_led_OBUF[3]),
        .O(o_led[3]));
  OBUF \o_led_OBUF[4]_inst 
       (.I(o_led_OBUF[4]),
        .O(o_led[4]));
  OBUF \o_led_OBUF[5]_inst 
       (.I(o_led_OBUF[5]),
        .O(o_led[5]));
  OBUF \o_led_OBUF[6]_inst 
       (.I(o_led_OBUF[6]),
        .O(o_led[6]));
  OBUF \o_led_OBUF[7]_inst 
       (.I(o_led_OBUF[7]),
        .O(o_led[7]));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[2]),
        .D(i_switch_IBUF[0]),
        .Q(op_code[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[2]),
        .D(i_switch_IBUF[1]),
        .Q(op_code[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[2]),
        .D(i_switch_IBUF[2]),
        .Q(op_code[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[2]),
        .D(i_switch_IBUF[3]),
        .Q(op_code[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[2]),
        .D(i_switch_IBUF[4]),
        .Q(op_code[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \op_code_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(i_enable_IBUF[2]),
        .D(i_switch_IBUF[5]),
        .Q(op_code[5]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result[0]_i_1 
       (.I0(\result[0]_i_2_n_0 ),
        .I1(\result[8]_i_4_n_0 ),
        .I2(\result[0]_i_3_n_0 ),
        .I3(\result[8]_i_2_n_0 ),
        .I4(\result[0]_i_4_n_0 ),
        .O(result[0]));
  LUT6 #(
    .INIT(64'h3030744400007444)) 
    \result[0]_i_2 
       (.I0(\result[0]_i_5_n_0 ),
        .I1(\result[8]_i_5_n_0 ),
        .I2(\result[7]_i_6_n_0 ),
        .I3(\result[0]_i_6_n_0 ),
        .I4(\result[3]_i_7_n_0 ),
        .I5(\result[1]_i_6_n_0 ),
        .O(\result[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h575757FC3030DF30)) 
    \result[0]_i_3 
       (.I0(\result[8]_i_5_n_0 ),
        .I1(i_enable_IBUF[0]),
        .I2(data_a[0]),
        .I3(data_b[0]),
        .I4(i_enable_IBUF[1]),
        .I5(i_switch_IBUF[0]),
        .O(\result[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF0008800F000)) 
    \result[0]_i_4 
       (.I0(\result[0]_i_5_n_0 ),
        .I1(\result[3]_i_7_n_0 ),
        .I2(data1[0]),
        .I3(\result[8]_i_4_n_0 ),
        .I4(\result[8]_i_5_n_0 ),
        .I5(data0[0]),
        .O(\result[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[0]_i_5 
       (.I0(i_switch_IBUF[0]),
        .I1(data_a[0]),
        .I2(i_enable_IBUF[0]),
        .O(\result[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[0]_i_6 
       (.I0(\result[6]_i_4_n_0 ),
        .I1(\result[2]_i_7_n_0 ),
        .I2(\result[1]_i_8_n_0 ),
        .I3(\result[4]_i_4_n_0 ),
        .I4(\result[2]_i_8_n_0 ),
        .I5(\result[0]_i_5_n_0 ),
        .O(\result[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result[1]_i_1 
       (.I0(\result[1]_i_2_n_0 ),
        .I1(\result[8]_i_4_n_0 ),
        .I2(\result[1]_i_3_n_0 ),
        .I3(\result[8]_i_2_n_0 ),
        .I4(\result[1]_i_4_n_0 ),
        .O(result[1]));
  LUT6 #(
    .INIT(64'h7474744444447444)) 
    \result[1]_i_2 
       (.I0(\result[1]_i_5_n_0 ),
        .I1(\result[8]_i_5_n_0 ),
        .I2(\result[7]_i_6_n_0 ),
        .I3(\result[1]_i_6_n_0 ),
        .I4(\result[3]_i_7_n_0 ),
        .I5(\result[2]_i_6_n_0 ),
        .O(\result[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h575757FC3030DF30)) 
    \result[1]_i_3 
       (.I0(\result[8]_i_5_n_0 ),
        .I1(i_enable_IBUF[0]),
        .I2(data_a[1]),
        .I3(data_b[1]),
        .I4(i_enable_IBUF[1]),
        .I5(i_switch_IBUF[1]),
        .O(\result[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF0008800F000)) 
    \result[1]_i_4 
       (.I0(\result[1]_i_7_n_0 ),
        .I1(\result[1]_i_8_n_0 ),
        .I2(data1[1]),
        .I3(\result[8]_i_4_n_0 ),
        .I4(\result[8]_i_5_n_0 ),
        .I5(data0[1]),
        .O(\result[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE44F4)) 
    \result[1]_i_5 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[1]),
        .I2(data_b[1]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[1]),
        .O(\result[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[1]_i_6 
       (.I0(\result[7]_i_4_n_0 ),
        .I1(\result[3]_i_9_n_0 ),
        .I2(\result[1]_i_8_n_0 ),
        .I3(\result[5]_i_4_n_0 ),
        .I4(\result[2]_i_8_n_0 ),
        .I5(\result[1]_i_7_n_0 ),
        .O(\result[1]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[1]_i_7 
       (.I0(i_switch_IBUF[1]),
        .I1(data_a[1]),
        .I2(i_enable_IBUF[0]),
        .O(\result[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result[1]_i_8 
       (.I0(i_switch_IBUF[1]),
        .I1(i_enable_IBUF[1]),
        .I2(data_b[1]),
        .O(\result[1]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result[2]_i_1 
       (.I0(\result[2]_i_2_n_0 ),
        .I1(\result[8]_i_4_n_0 ),
        .I2(\result[2]_i_3_n_0 ),
        .I3(\result[8]_i_2_n_0 ),
        .I4(\result[2]_i_4_n_0 ),
        .O(result[2]));
  LUT6 #(
    .INIT(64'h7474744444447444)) 
    \result[2]_i_2 
       (.I0(\result[2]_i_5_n_0 ),
        .I1(\result[8]_i_5_n_0 ),
        .I2(\result[7]_i_6_n_0 ),
        .I3(\result[2]_i_6_n_0 ),
        .I4(\result[3]_i_7_n_0 ),
        .I5(\result[3]_i_6_n_0 ),
        .O(\result[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h575757FC3030DF30)) 
    \result[2]_i_3 
       (.I0(\result[8]_i_5_n_0 ),
        .I1(i_enable_IBUF[0]),
        .I2(data_a[2]),
        .I3(data_b[2]),
        .I4(i_enable_IBUF[1]),
        .I5(i_switch_IBUF[2]),
        .O(\result[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF0008800F000)) 
    \result[2]_i_4 
       (.I0(\result[2]_i_7_n_0 ),
        .I1(\result[2]_i_8_n_0 ),
        .I2(data1[2]),
        .I3(\result[8]_i_4_n_0 ),
        .I4(\result[8]_i_5_n_0 ),
        .I5(data0[2]),
        .O(\result[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE44F4)) 
    \result[2]_i_5 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[2]),
        .I2(data_b[2]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[2]),
        .O(\result[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[2]_i_6 
       (.I0(\result[4]_i_4_n_0 ),
        .I1(\result[1]_i_8_n_0 ),
        .I2(\result[6]_i_4_n_0 ),
        .I3(\result[2]_i_8_n_0 ),
        .I4(\result[2]_i_7_n_0 ),
        .O(\result[2]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[2]_i_7 
       (.I0(i_switch_IBUF[2]),
        .I1(data_a[2]),
        .I2(i_enable_IBUF[0]),
        .O(\result[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result[2]_i_8 
       (.I0(i_switch_IBUF[2]),
        .I1(i_enable_IBUF[1]),
        .I2(data_b[2]),
        .O(\result[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \result[3]_i_1 
       (.I0(\result[3]_i_2_n_0 ),
        .I1(\result[8]_i_4_n_0 ),
        .I2(\result[3]_i_3_n_0 ),
        .I3(\result[8]_i_2_n_0 ),
        .I4(\result[3]_i_4_n_0 ),
        .O(result[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \result[3]_i_10 
       (.I0(i_switch_IBUF[3]),
        .I1(i_enable_IBUF[1]),
        .I2(data_b[3]),
        .O(\result[3]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_13 
       (.I0(i_switch_IBUF[3]),
        .I1(data_a[3]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_14 
       (.I0(i_switch_IBUF[2]),
        .I1(data_a[2]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_15 
       (.I0(i_switch_IBUF[1]),
        .I1(data_a[1]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_16 
       (.I0(i_switch_IBUF[0]),
        .I1(data_a[0]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF9ACF953)) 
    \result[3]_i_17 
       (.I0(i_switch_IBUF[3]),
        .I1(data_a[3]),
        .I2(i_enable_IBUF[0]),
        .I3(i_enable_IBUF[1]),
        .I4(data_b[3]),
        .O(\result[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hF9ACF953)) 
    \result[3]_i_18 
       (.I0(i_switch_IBUF[2]),
        .I1(data_a[2]),
        .I2(i_enable_IBUF[0]),
        .I3(i_enable_IBUF[1]),
        .I4(data_b[2]),
        .O(\result[3]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hF9ACF953)) 
    \result[3]_i_19 
       (.I0(i_switch_IBUF[1]),
        .I1(data_a[1]),
        .I2(i_enable_IBUF[0]),
        .I3(i_enable_IBUF[1]),
        .I4(data_b[1]),
        .O(\result[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h7474744444447444)) 
    \result[3]_i_2 
       (.I0(\result[3]_i_5_n_0 ),
        .I1(\result[8]_i_5_n_0 ),
        .I2(\result[7]_i_6_n_0 ),
        .I3(\result[3]_i_6_n_0 ),
        .I4(\result[3]_i_7_n_0 ),
        .I5(\result[3]_i_8_n_0 ),
        .O(\result[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF9ACF953)) 
    \result[3]_i_20 
       (.I0(i_switch_IBUF[0]),
        .I1(data_a[0]),
        .I2(i_enable_IBUF[0]),
        .I3(i_enable_IBUF[1]),
        .I4(data_b[0]),
        .O(\result[3]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_21 
       (.I0(i_switch_IBUF[3]),
        .I1(data_a[3]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_22 
       (.I0(i_switch_IBUF[2]),
        .I1(data_a[2]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_23 
       (.I0(i_switch_IBUF[1]),
        .I1(data_a[1]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_24 
       (.I0(i_switch_IBUF[0]),
        .I1(data_a[0]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h111E44B4)) 
    \result[3]_i_25 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[3]),
        .I2(data_b[3]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[3]),
        .O(\result[3]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h111E44B4)) 
    \result[3]_i_26 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[2]),
        .I2(data_b[2]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[2]),
        .O(\result[3]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h111E44B4)) 
    \result[3]_i_27 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[1]),
        .I2(data_b[1]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[1]),
        .O(\result[3]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h111E44B4)) 
    \result[3]_i_28 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[0]),
        .I2(data_b[0]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[0]),
        .O(\result[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h575757FC3030DF30)) 
    \result[3]_i_3 
       (.I0(\result[8]_i_5_n_0 ),
        .I1(i_enable_IBUF[0]),
        .I2(data_a[3]),
        .I3(data_b[3]),
        .I4(i_enable_IBUF[1]),
        .I5(i_switch_IBUF[3]),
        .O(\result[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF0008800F000)) 
    \result[3]_i_4 
       (.I0(\result[3]_i_9_n_0 ),
        .I1(\result[3]_i_10_n_0 ),
        .I2(data1[3]),
        .I3(\result[8]_i_4_n_0 ),
        .I4(\result[8]_i_5_n_0 ),
        .I5(data0[3]),
        .O(\result[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE44F4)) 
    \result[3]_i_5 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[3]),
        .I2(data_b[3]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[3]),
        .O(\result[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \result[3]_i_6 
       (.I0(\result[5]_i_4_n_0 ),
        .I1(\result[1]_i_8_n_0 ),
        .I2(\result[7]_i_4_n_0 ),
        .I3(\result[2]_i_8_n_0 ),
        .I4(\result[3]_i_9_n_0 ),
        .O(\result[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result[3]_i_7 
       (.I0(i_switch_IBUF[0]),
        .I1(i_enable_IBUF[1]),
        .I2(data_b[0]),
        .O(\result[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E4FFE400)) 
    \result[3]_i_8 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[6]),
        .I2(i_switch_IBUF[6]),
        .I3(\result[1]_i_8_n_0 ),
        .I4(\result[4]_i_4_n_0 ),
        .I5(\result[2]_i_8_n_0 ),
        .O(\result[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_9 
       (.I0(i_switch_IBUF[3]),
        .I1(data_a[3]),
        .I2(i_enable_IBUF[0]),
        .O(\result[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000E4E4E400E4)) 
    \result[4]_i_10 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[4]),
        .I2(i_switch_IBUF[4]),
        .I3(data_b[2]),
        .I4(i_enable_IBUF[1]),
        .I5(i_switch_IBUF[2]),
        .O(\result[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF0008800F000)) 
    \result[4]_i_2 
       (.I0(\result[4]_i_4_n_0 ),
        .I1(\result[4]_i_5_n_0 ),
        .I2(data1[4]),
        .I3(\result[8]_i_4_n_0 ),
        .I4(\result[8]_i_5_n_0 ),
        .I5(data0[4]),
        .O(\result[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h008F0F8F0F8FF080)) 
    \result[4]_i_3 
       (.I0(\result[7]_i_6_n_0 ),
        .I1(\result[4]_i_6_n_0 ),
        .I2(\result[8]_i_4_n_0 ),
        .I3(\result[8]_i_5_n_0 ),
        .I4(\result[4]_i_4_n_0 ),
        .I5(\result[4]_i_5_n_0 ),
        .O(\result[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[4]_i_4 
       (.I0(i_switch_IBUF[4]),
        .I1(data_a[4]),
        .I2(i_enable_IBUF[0]),
        .O(\result[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result[4]_i_5 
       (.I0(i_switch_IBUF[4]),
        .I1(i_enable_IBUF[1]),
        .I2(data_b[4]),
        .O(\result[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \result[4]_i_6 
       (.I0(\result[4]_i_7_n_0 ),
        .I1(\result[4]_i_8_n_0 ),
        .I2(\result[3]_i_7_n_0 ),
        .I3(\result[4]_i_9_n_0 ),
        .I4(\result[1]_i_8_n_0 ),
        .I5(\result[4]_i_10_n_0 ),
        .O(\result[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000E4E4E400E4)) 
    \result[4]_i_7 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[7]),
        .I2(i_switch_IBUF[7]),
        .I3(data_b[2]),
        .I4(i_enable_IBUF[1]),
        .I5(i_switch_IBUF[2]),
        .O(\result[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000E4E4E400E4)) 
    \result[4]_i_8 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[5]),
        .I2(i_switch_IBUF[5]),
        .I3(data_b[2]),
        .I4(i_enable_IBUF[1]),
        .I5(i_switch_IBUF[2]),
        .O(\result[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000E4E4E400E4)) 
    \result[4]_i_9 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[6]),
        .I2(i_switch_IBUF[6]),
        .I3(data_b[2]),
        .I4(i_enable_IBUF[1]),
        .I5(i_switch_IBUF[2]),
        .O(\result[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF0008800F000)) 
    \result[5]_i_2 
       (.I0(\result[5]_i_4_n_0 ),
        .I1(\result[5]_i_5_n_0 ),
        .I2(data1[5]),
        .I3(\result[8]_i_4_n_0 ),
        .I4(\result[8]_i_5_n_0 ),
        .I5(data0[5]),
        .O(\result[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h008F0F8F0F8FF080)) 
    \result[5]_i_3 
       (.I0(\result[7]_i_6_n_0 ),
        .I1(\result[5]_i_6_n_0 ),
        .I2(\result[8]_i_4_n_0 ),
        .I3(\result[8]_i_5_n_0 ),
        .I4(\result[5]_i_4_n_0 ),
        .I5(\result[5]_i_5_n_0 ),
        .O(\result[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[5]_i_4 
       (.I0(i_switch_IBUF[5]),
        .I1(data_a[5]),
        .I2(i_enable_IBUF[0]),
        .O(\result[5]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result[5]_i_5 
       (.I0(i_switch_IBUF[5]),
        .I1(i_enable_IBUF[1]),
        .I2(data_b[5]),
        .O(\result[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \result[5]_i_6 
       (.I0(\result[6]_i_4_n_0 ),
        .I1(\result[3]_i_7_n_0 ),
        .I2(\result[7]_i_4_n_0 ),
        .I3(\result[1]_i_8_n_0 ),
        .I4(\result[5]_i_4_n_0 ),
        .I5(\result[2]_i_8_n_0 ),
        .O(\result[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF0008800F000)) 
    \result[6]_i_2 
       (.I0(\result[6]_i_4_n_0 ),
        .I1(\result[6]_i_5_n_0 ),
        .I2(data1[6]),
        .I3(\result[8]_i_4_n_0 ),
        .I4(\result[8]_i_5_n_0 ),
        .I5(data0[6]),
        .O(\result[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h008F0F8F0F8FF080)) 
    \result[6]_i_3 
       (.I0(\result[7]_i_6_n_0 ),
        .I1(\result[6]_i_6_n_0 ),
        .I2(\result[8]_i_4_n_0 ),
        .I3(\result[8]_i_5_n_0 ),
        .I4(\result[6]_i_4_n_0 ),
        .I5(\result[6]_i_5_n_0 ),
        .O(\result[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[6]_i_4 
       (.I0(i_switch_IBUF[6]),
        .I1(data_a[6]),
        .I2(i_enable_IBUF[0]),
        .O(\result[6]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result[6]_i_5 
       (.I0(i_switch_IBUF[6]),
        .I1(i_enable_IBUF[1]),
        .I2(data_b[6]),
        .O(\result[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \result[6]_i_6 
       (.I0(\result[7]_i_4_n_0 ),
        .I1(\result[3]_i_7_n_0 ),
        .I2(\result[2]_i_8_n_0 ),
        .I3(\result[6]_i_4_n_0 ),
        .I4(\result[1]_i_8_n_0 ),
        .O(\result[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88FFF0008800F000)) 
    \result[7]_i_2 
       (.I0(\result[7]_i_4_n_0 ),
        .I1(\result[7]_i_5_n_0 ),
        .I2(data1[7]),
        .I3(\result[8]_i_4_n_0 ),
        .I4(\result[8]_i_5_n_0 ),
        .I5(data0[7]),
        .O(\result[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h008F0F8F0F8FF080)) 
    \result[7]_i_3 
       (.I0(\result[7]_i_6_n_0 ),
        .I1(\result[7]_i_7_n_0 ),
        .I2(\result[8]_i_4_n_0 ),
        .I3(\result[8]_i_5_n_0 ),
        .I4(\result[7]_i_4_n_0 ),
        .I5(\result[7]_i_5_n_0 ),
        .O(\result[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[7]_i_4 
       (.I0(i_switch_IBUF[7]),
        .I1(data_a[7]),
        .I2(i_enable_IBUF[0]),
        .O(\result[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \result[7]_i_5 
       (.I0(i_switch_IBUF[7]),
        .I1(i_enable_IBUF[1]),
        .I2(data_b[7]),
        .O(\result[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \result[7]_i_6 
       (.I0(\result[7]_i_5_n_0 ),
        .I1(\result[4]_i_5_n_0 ),
        .I2(\result[3]_i_10_n_0 ),
        .I3(\result[6]_i_5_n_0 ),
        .I4(\result[5]_i_5_n_0 ),
        .O(\result[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005410)) 
    \result[7]_i_7 
       (.I0(\result[1]_i_8_n_0 ),
        .I1(i_enable_IBUF[0]),
        .I2(data_a[7]),
        .I3(i_switch_IBUF[7]),
        .I4(\result[2]_i_8_n_0 ),
        .I5(\result[3]_i_7_n_0 ),
        .O(\result[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hA510A010)) 
    \result[8]_i_1 
       (.I0(\result[8]_i_2_n_0 ),
        .I1(\result_reg[8]_i_3_n_3 ),
        .I2(\result[8]_i_4_n_0 ),
        .I3(\result[8]_i_5_n_0 ),
        .I4(data0[8]),
        .O(result[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_10 
       (.I0(i_switch_IBUF[1]),
        .I1(op_code[1]),
        .I2(i_enable_IBUF[2]),
        .O(\result[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_11 
       (.I0(i_switch_IBUF[0]),
        .I1(op_code[0]),
        .I2(i_enable_IBUF[2]),
        .O(\result[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_14 
       (.I0(i_switch_IBUF[7]),
        .I1(data_a[7]),
        .I2(i_enable_IBUF[0]),
        .O(\result[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_15 
       (.I0(i_switch_IBUF[6]),
        .I1(data_a[6]),
        .I2(i_enable_IBUF[0]),
        .O(\result[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_16 
       (.I0(i_switch_IBUF[5]),
        .I1(data_a[5]),
        .I2(i_enable_IBUF[0]),
        .O(\result[8]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_17 
       (.I0(i_switch_IBUF[4]),
        .I1(data_a[4]),
        .I2(i_enable_IBUF[0]),
        .O(\result[8]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hF9ACF953)) 
    \result[8]_i_18 
       (.I0(i_switch_IBUF[7]),
        .I1(data_a[7]),
        .I2(i_enable_IBUF[0]),
        .I3(i_enable_IBUF[1]),
        .I4(data_b[7]),
        .O(\result[8]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hF9ACF953)) 
    \result[8]_i_19 
       (.I0(i_switch_IBUF[6]),
        .I1(data_a[6]),
        .I2(i_enable_IBUF[0]),
        .I3(i_enable_IBUF[1]),
        .I4(data_b[6]),
        .O(\result[8]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h41404100)) 
    \result[8]_i_2 
       (.I0(\result[8]_i_7_n_0 ),
        .I1(\result[8]_i_8_n_0 ),
        .I2(\result[8]_i_9_n_0 ),
        .I3(\result[8]_i_10_n_0 ),
        .I4(\result[8]_i_11_n_0 ),
        .O(\result[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF9ACF953)) 
    \result[8]_i_20 
       (.I0(i_switch_IBUF[5]),
        .I1(data_a[5]),
        .I2(i_enable_IBUF[0]),
        .I3(i_enable_IBUF[1]),
        .I4(data_b[5]),
        .O(\result[8]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hF9ACF953)) 
    \result[8]_i_21 
       (.I0(i_switch_IBUF[4]),
        .I1(data_a[4]),
        .I2(i_enable_IBUF[0]),
        .I3(i_enable_IBUF[1]),
        .I4(data_b[4]),
        .O(\result[8]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_22 
       (.I0(i_switch_IBUF[7]),
        .I1(data_a[7]),
        .I2(i_enable_IBUF[0]),
        .O(\result[8]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_23 
       (.I0(i_switch_IBUF[6]),
        .I1(data_a[6]),
        .I2(i_enable_IBUF[0]),
        .O(\result[8]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_24 
       (.I0(i_switch_IBUF[5]),
        .I1(data_a[5]),
        .I2(i_enable_IBUF[0]),
        .O(\result[8]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_25 
       (.I0(i_switch_IBUF[4]),
        .I1(data_a[4]),
        .I2(i_enable_IBUF[0]),
        .O(\result[8]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h111E44B4)) 
    \result[8]_i_26 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[7]),
        .I2(data_b[7]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[7]),
        .O(\result[8]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h111E44B4)) 
    \result[8]_i_27 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[6]),
        .I2(data_b[6]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[6]),
        .O(\result[8]_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h111E44B4)) 
    \result[8]_i_28 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[5]),
        .I2(data_b[5]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[5]),
        .O(\result[8]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h111E44B4)) 
    \result[8]_i_29 
       (.I0(i_enable_IBUF[0]),
        .I1(data_a[4]),
        .I2(data_b[4]),
        .I3(i_enable_IBUF[1]),
        .I4(i_switch_IBUF[4]),
        .O(\result[8]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h41000540)) 
    \result[8]_i_4 
       (.I0(\result[8]_i_7_n_0 ),
        .I1(\result[8]_i_9_n_0 ),
        .I2(\result[8]_i_8_n_0 ),
        .I3(\result[8]_i_10_n_0 ),
        .I4(\result[8]_i_11_n_0 ),
        .O(\result[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h44040004)) 
    \result[8]_i_5 
       (.I0(\result[8]_i_7_n_0 ),
        .I1(\result[8]_i_9_n_0 ),
        .I2(\result[8]_i_11_n_0 ),
        .I3(\result[8]_i_10_n_0 ),
        .I4(\result[8]_i_8_n_0 ),
        .O(\result[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACFCA)) 
    \result[8]_i_7 
       (.I0(op_code[3]),
        .I1(i_switch_IBUF[3]),
        .I2(i_enable_IBUF[2]),
        .I3(op_code[4]),
        .I4(i_switch_IBUF[4]),
        .O(\result[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_8 
       (.I0(i_switch_IBUF[2]),
        .I1(op_code[2]),
        .I2(i_enable_IBUF[2]),
        .O(\result[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[8]_i_9 
       (.I0(i_switch_IBUF[5]),
        .I1(op_code[5]),
        .I2(i_enable_IBUF[2]),
        .O(\result[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[0]),
        .Q(o_led_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[1]),
        .Q(o_led_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[2]),
        .Q(o_led_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[3]),
        .Q(o_led_OBUF[3]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_reg[3]_i_11 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_11_n_0 ,\NLW_result_reg[3]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI({\result[3]_i_13_n_0 ,\result[3]_i_14_n_0 ,\result[3]_i_15_n_0 ,\result[3]_i_16_n_0 }),
        .O(data1[3:0]),
        .S({\result[3]_i_17_n_0 ,\result[3]_i_18_n_0 ,\result[3]_i_19_n_0 ,\result[3]_i_20_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_reg[3]_i_12 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_12_n_0 ,\NLW_result_reg[3]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\result[3]_i_21_n_0 ,\result[3]_i_22_n_0 ,\result[3]_i_23_n_0 ,\result[3]_i_24_n_0 }),
        .O(data0[3:0]),
        .S({\result[3]_i_25_n_0 ,\result[3]_i_26_n_0 ,\result[3]_i_27_n_0 ,\result[3]_i_28_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[4]),
        .Q(o_led_OBUF[4]),
        .R(1'b0));
  MUXF7 \result_reg[4]_i_1 
       (.I0(\result[4]_i_2_n_0 ),
        .I1(\result[4]_i_3_n_0 ),
        .O(result[4]),
        .S(\result[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[5]),
        .Q(o_led_OBUF[5]),
        .R(1'b0));
  MUXF7 \result_reg[5]_i_1 
       (.I0(\result[5]_i_2_n_0 ),
        .I1(\result[5]_i_3_n_0 ),
        .O(result[5]),
        .S(\result[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[6]),
        .Q(o_led_OBUF[6]),
        .R(1'b0));
  MUXF7 \result_reg[6]_i_1 
       (.I0(\result[6]_i_2_n_0 ),
        .I1(\result[6]_i_3_n_0 ),
        .O(result[6]),
        .S(\result[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[7]),
        .Q(o_led_OBUF[7]),
        .R(1'b0));
  MUXF7 \result_reg[7]_i_1 
       (.I0(\result[7]_i_2_n_0 ),
        .I1(\result[7]_i_3_n_0 ),
        .O(result[7]),
        .S(\result[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \result_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(result[8]),
        .Q(o_carry_bit_OBUF),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_reg[8]_i_12 
       (.CI(\result_reg[3]_i_11_n_0 ),
        .CO({\result_reg[8]_i_12_n_0 ,\NLW_result_reg[8]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\result[8]_i_14_n_0 ,\result[8]_i_15_n_0 ,\result[8]_i_16_n_0 ,\result[8]_i_17_n_0 }),
        .O(data1[7:4]),
        .S({\result[8]_i_18_n_0 ,\result[8]_i_19_n_0 ,\result[8]_i_20_n_0 ,\result[8]_i_21_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \result_reg[8]_i_13 
       (.CI(\result_reg[3]_i_12_n_0 ),
        .CO({\result_reg[8]_i_13_n_0 ,\NLW_result_reg[8]_i_13_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\result[8]_i_22_n_0 ,\result[8]_i_23_n_0 ,\result[8]_i_24_n_0 ,\result[8]_i_25_n_0 }),
        .O(data0[7:4]),
        .S({\result[8]_i_26_n_0 ,\result[8]_i_27_n_0 ,\result[8]_i_28_n_0 ,\result[8]_i_29_n_0 }));
  CARRY4 \result_reg[8]_i_3 
       (.CI(\result_reg[8]_i_12_n_0 ),
        .CO({\NLW_result_reg[8]_i_3_CO_UNCONNECTED [3:1],\result_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_result_reg[8]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \result_reg[8]_i_6 
       (.CI(\result_reg[8]_i_13_n_0 ),
        .CO({\NLW_result_reg[8]_i_6_CO_UNCONNECTED [3:1],data0[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_result_reg[8]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
