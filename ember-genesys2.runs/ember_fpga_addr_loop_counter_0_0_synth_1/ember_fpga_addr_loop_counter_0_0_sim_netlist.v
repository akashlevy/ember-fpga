// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Feb 17 11:32:38 2023
// Host        : r7cad-tsmc40r3 running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ember_fpga_addr_loop_counter_0_0_sim_netlist.v
// Design      : ember_fpga_addr_loop_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_addr_loop_counter
   (rram_addr,
    clk,
    rst_n,
    address_step,
    address_start,
    address_stop);
  output [15:0]rram_addr;
  input clk;
  input rst_n;
  input [15:0]address_step;
  input [15:0]address_start;
  input [15:0]address_stop;

  wire [15:0]address_start;
  wire [15:0]address_step;
  wire [15:0]address_stop;
  wire clk;
  wire halfclk1_carry__0_i_1_n_0;
  wire halfclk1_carry__0_i_2_n_0;
  wire halfclk1_carry__0_i_3_n_0;
  wire halfclk1_carry__0_i_4_n_0;
  wire halfclk1_carry__0_i_5_n_0;
  wire halfclk1_carry__0_i_6_n_0;
  wire halfclk1_carry__0_i_7_n_0;
  wire halfclk1_carry__0_i_8_n_0;
  wire halfclk1_carry__0_n_0;
  wire halfclk1_carry__0_n_1;
  wire halfclk1_carry__0_n_2;
  wire halfclk1_carry__0_n_3;
  wire halfclk1_carry_i_1_n_0;
  wire halfclk1_carry_i_2_n_0;
  wire halfclk1_carry_i_3_n_0;
  wire halfclk1_carry_i_4_n_0;
  wire halfclk1_carry_i_5_n_0;
  wire halfclk1_carry_i_6_n_0;
  wire halfclk1_carry_i_7_n_0;
  wire halfclk1_carry_i_8_n_0;
  wire halfclk1_carry_n_0;
  wire halfclk1_carry_n_1;
  wire halfclk1_carry_n_2;
  wire halfclk1_carry_n_3;
  wire [15:0]halfclk2;
  wire halfclk2_carry__0_i_1_n_0;
  wire halfclk2_carry__0_i_2_n_0;
  wire halfclk2_carry__0_i_3_n_0;
  wire halfclk2_carry__0_i_4_n_0;
  wire halfclk2_carry__0_n_0;
  wire halfclk2_carry__0_n_1;
  wire halfclk2_carry__0_n_2;
  wire halfclk2_carry__0_n_3;
  wire halfclk2_carry__1_i_1_n_0;
  wire halfclk2_carry__1_i_2_n_0;
  wire halfclk2_carry__1_i_3_n_0;
  wire halfclk2_carry__1_i_4_n_0;
  wire halfclk2_carry__1_n_0;
  wire halfclk2_carry__1_n_1;
  wire halfclk2_carry__1_n_2;
  wire halfclk2_carry__1_n_3;
  wire halfclk2_carry__2_i_1_n_0;
  wire halfclk2_carry__2_i_2_n_0;
  wire halfclk2_carry__2_i_3_n_0;
  wire halfclk2_carry__2_i_4_n_0;
  wire halfclk2_carry__2_n_1;
  wire halfclk2_carry__2_n_2;
  wire halfclk2_carry__2_n_3;
  wire halfclk2_carry_i_1_n_0;
  wire halfclk2_carry_i_2_n_0;
  wire halfclk2_carry_i_3_n_0;
  wire halfclk2_carry_i_4_n_0;
  wire halfclk2_carry_n_0;
  wire halfclk2_carry_n_1;
  wire halfclk2_carry_n_2;
  wire halfclk2_carry_n_3;
  wire halfclk__0;
  wire halfclk_n_0;
  wire [15:0]rram_addr;
  wire \rram_addr[11]_i_2_n_0 ;
  wire \rram_addr[11]_i_3_n_0 ;
  wire \rram_addr[11]_i_4_n_0 ;
  wire \rram_addr[11]_i_5_n_0 ;
  wire \rram_addr[11]_i_6_n_0 ;
  wire \rram_addr[11]_i_7_n_0 ;
  wire \rram_addr[11]_i_8_n_0 ;
  wire \rram_addr[11]_i_9_n_0 ;
  wire \rram_addr[15]_i_2_n_0 ;
  wire \rram_addr[15]_i_3_n_0 ;
  wire \rram_addr[15]_i_4_n_0 ;
  wire \rram_addr[15]_i_5_n_0 ;
  wire \rram_addr[15]_i_6_n_0 ;
  wire \rram_addr[15]_i_7_n_0 ;
  wire \rram_addr[15]_i_8_n_0 ;
  wire \rram_addr[3]_i_2_n_0 ;
  wire \rram_addr[3]_i_3_n_0 ;
  wire \rram_addr[3]_i_4_n_0 ;
  wire \rram_addr[3]_i_5_n_0 ;
  wire \rram_addr[3]_i_6_n_0 ;
  wire \rram_addr[3]_i_7_n_0 ;
  wire \rram_addr[3]_i_8_n_0 ;
  wire \rram_addr[3]_i_9_n_0 ;
  wire \rram_addr[7]_i_2_n_0 ;
  wire \rram_addr[7]_i_3_n_0 ;
  wire \rram_addr[7]_i_4_n_0 ;
  wire \rram_addr[7]_i_5_n_0 ;
  wire \rram_addr[7]_i_6_n_0 ;
  wire \rram_addr[7]_i_7_n_0 ;
  wire \rram_addr[7]_i_8_n_0 ;
  wire \rram_addr[7]_i_9_n_0 ;
  wire \rram_addr_reg[11]_i_1_n_0 ;
  wire \rram_addr_reg[11]_i_1_n_1 ;
  wire \rram_addr_reg[11]_i_1_n_2 ;
  wire \rram_addr_reg[11]_i_1_n_3 ;
  wire \rram_addr_reg[11]_i_1_n_4 ;
  wire \rram_addr_reg[11]_i_1_n_5 ;
  wire \rram_addr_reg[11]_i_1_n_6 ;
  wire \rram_addr_reg[11]_i_1_n_7 ;
  wire \rram_addr_reg[15]_i_1_n_1 ;
  wire \rram_addr_reg[15]_i_1_n_2 ;
  wire \rram_addr_reg[15]_i_1_n_3 ;
  wire \rram_addr_reg[15]_i_1_n_4 ;
  wire \rram_addr_reg[15]_i_1_n_5 ;
  wire \rram_addr_reg[15]_i_1_n_6 ;
  wire \rram_addr_reg[15]_i_1_n_7 ;
  wire \rram_addr_reg[3]_i_1_n_0 ;
  wire \rram_addr_reg[3]_i_1_n_1 ;
  wire \rram_addr_reg[3]_i_1_n_2 ;
  wire \rram_addr_reg[3]_i_1_n_3 ;
  wire \rram_addr_reg[3]_i_1_n_4 ;
  wire \rram_addr_reg[3]_i_1_n_5 ;
  wire \rram_addr_reg[3]_i_1_n_6 ;
  wire \rram_addr_reg[3]_i_1_n_7 ;
  wire \rram_addr_reg[7]_i_1_n_0 ;
  wire \rram_addr_reg[7]_i_1_n_1 ;
  wire \rram_addr_reg[7]_i_1_n_2 ;
  wire \rram_addr_reg[7]_i_1_n_3 ;
  wire \rram_addr_reg[7]_i_1_n_4 ;
  wire \rram_addr_reg[7]_i_1_n_5 ;
  wire \rram_addr_reg[7]_i_1_n_6 ;
  wire \rram_addr_reg[7]_i_1_n_7 ;
  wire rst_n;
  wire [3:0]NLW_halfclk1_carry_O_UNCONNECTED;
  wire [3:0]NLW_halfclk1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_halfclk2_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_rram_addr_reg[15]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h4)) 
    halfclk
       (.I0(halfclk__0),
        .I1(rst_n),
        .O(halfclk_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 halfclk1_carry
       (.CI(1'b0),
        .CO({halfclk1_carry_n_0,halfclk1_carry_n_1,halfclk1_carry_n_2,halfclk1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({halfclk1_carry_i_1_n_0,halfclk1_carry_i_2_n_0,halfclk1_carry_i_3_n_0,halfclk1_carry_i_4_n_0}),
        .O(NLW_halfclk1_carry_O_UNCONNECTED[3:0]),
        .S({halfclk1_carry_i_5_n_0,halfclk1_carry_i_6_n_0,halfclk1_carry_i_7_n_0,halfclk1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 halfclk1_carry__0
       (.CI(halfclk1_carry_n_0),
        .CO({halfclk1_carry__0_n_0,halfclk1_carry__0_n_1,halfclk1_carry__0_n_2,halfclk1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({halfclk1_carry__0_i_1_n_0,halfclk1_carry__0_i_2_n_0,halfclk1_carry__0_i_3_n_0,halfclk1_carry__0_i_4_n_0}),
        .O(NLW_halfclk1_carry__0_O_UNCONNECTED[3:0]),
        .S({halfclk1_carry__0_i_5_n_0,halfclk1_carry__0_i_6_n_0,halfclk1_carry__0_i_7_n_0,halfclk1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    halfclk1_carry__0_i_1
       (.I0(address_stop[14]),
        .I1(halfclk2[14]),
        .I2(halfclk2[15]),
        .I3(address_stop[15]),
        .O(halfclk1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    halfclk1_carry__0_i_2
       (.I0(address_stop[12]),
        .I1(halfclk2[12]),
        .I2(halfclk2[13]),
        .I3(address_stop[13]),
        .O(halfclk1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    halfclk1_carry__0_i_3
       (.I0(address_stop[10]),
        .I1(halfclk2[10]),
        .I2(halfclk2[11]),
        .I3(address_stop[11]),
        .O(halfclk1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    halfclk1_carry__0_i_4
       (.I0(address_stop[8]),
        .I1(halfclk2[8]),
        .I2(halfclk2[9]),
        .I3(address_stop[9]),
        .O(halfclk1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    halfclk1_carry__0_i_5
       (.I0(address_stop[14]),
        .I1(halfclk2[14]),
        .I2(address_stop[15]),
        .I3(halfclk2[15]),
        .O(halfclk1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    halfclk1_carry__0_i_6
       (.I0(address_stop[12]),
        .I1(halfclk2[12]),
        .I2(address_stop[13]),
        .I3(halfclk2[13]),
        .O(halfclk1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    halfclk1_carry__0_i_7
       (.I0(address_stop[10]),
        .I1(halfclk2[10]),
        .I2(address_stop[11]),
        .I3(halfclk2[11]),
        .O(halfclk1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    halfclk1_carry__0_i_8
       (.I0(address_stop[8]),
        .I1(halfclk2[8]),
        .I2(address_stop[9]),
        .I3(halfclk2[9]),
        .O(halfclk1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    halfclk1_carry_i_1
       (.I0(address_stop[6]),
        .I1(halfclk2[6]),
        .I2(halfclk2[7]),
        .I3(address_stop[7]),
        .O(halfclk1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    halfclk1_carry_i_2
       (.I0(address_stop[4]),
        .I1(halfclk2[4]),
        .I2(halfclk2[5]),
        .I3(address_stop[5]),
        .O(halfclk1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    halfclk1_carry_i_3
       (.I0(address_stop[2]),
        .I1(halfclk2[2]),
        .I2(halfclk2[3]),
        .I3(address_stop[3]),
        .O(halfclk1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    halfclk1_carry_i_4
       (.I0(address_stop[0]),
        .I1(halfclk2[0]),
        .I2(halfclk2[1]),
        .I3(address_stop[1]),
        .O(halfclk1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    halfclk1_carry_i_5
       (.I0(address_stop[6]),
        .I1(halfclk2[6]),
        .I2(address_stop[7]),
        .I3(halfclk2[7]),
        .O(halfclk1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    halfclk1_carry_i_6
       (.I0(address_stop[4]),
        .I1(halfclk2[4]),
        .I2(address_stop[5]),
        .I3(halfclk2[5]),
        .O(halfclk1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    halfclk1_carry_i_7
       (.I0(address_stop[2]),
        .I1(halfclk2[2]),
        .I2(address_stop[3]),
        .I3(halfclk2[3]),
        .O(halfclk1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    halfclk1_carry_i_8
       (.I0(address_stop[0]),
        .I1(halfclk2[0]),
        .I2(address_stop[1]),
        .I3(halfclk2[1]),
        .O(halfclk1_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 halfclk2_carry
       (.CI(1'b0),
        .CO({halfclk2_carry_n_0,halfclk2_carry_n_1,halfclk2_carry_n_2,halfclk2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(rram_addr[3:0]),
        .O(halfclk2[3:0]),
        .S({halfclk2_carry_i_1_n_0,halfclk2_carry_i_2_n_0,halfclk2_carry_i_3_n_0,halfclk2_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 halfclk2_carry__0
       (.CI(halfclk2_carry_n_0),
        .CO({halfclk2_carry__0_n_0,halfclk2_carry__0_n_1,halfclk2_carry__0_n_2,halfclk2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(rram_addr[7:4]),
        .O(halfclk2[7:4]),
        .S({halfclk2_carry__0_i_1_n_0,halfclk2_carry__0_i_2_n_0,halfclk2_carry__0_i_3_n_0,halfclk2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__0_i_1
       (.I0(rram_addr[7]),
        .I1(address_step[7]),
        .O(halfclk2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__0_i_2
       (.I0(rram_addr[6]),
        .I1(address_step[6]),
        .O(halfclk2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__0_i_3
       (.I0(rram_addr[5]),
        .I1(address_step[5]),
        .O(halfclk2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__0_i_4
       (.I0(rram_addr[4]),
        .I1(address_step[4]),
        .O(halfclk2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 halfclk2_carry__1
       (.CI(halfclk2_carry__0_n_0),
        .CO({halfclk2_carry__1_n_0,halfclk2_carry__1_n_1,halfclk2_carry__1_n_2,halfclk2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(rram_addr[11:8]),
        .O(halfclk2[11:8]),
        .S({halfclk2_carry__1_i_1_n_0,halfclk2_carry__1_i_2_n_0,halfclk2_carry__1_i_3_n_0,halfclk2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__1_i_1
       (.I0(rram_addr[11]),
        .I1(address_step[11]),
        .O(halfclk2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__1_i_2
       (.I0(rram_addr[10]),
        .I1(address_step[10]),
        .O(halfclk2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__1_i_3
       (.I0(rram_addr[9]),
        .I1(address_step[9]),
        .O(halfclk2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__1_i_4
       (.I0(rram_addr[8]),
        .I1(address_step[8]),
        .O(halfclk2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 halfclk2_carry__2
       (.CI(halfclk2_carry__1_n_0),
        .CO({NLW_halfclk2_carry__2_CO_UNCONNECTED[3],halfclk2_carry__2_n_1,halfclk2_carry__2_n_2,halfclk2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,rram_addr[14:12]}),
        .O(halfclk2[15:12]),
        .S({halfclk2_carry__2_i_1_n_0,halfclk2_carry__2_i_2_n_0,halfclk2_carry__2_i_3_n_0,halfclk2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__2_i_1
       (.I0(rram_addr[15]),
        .I1(address_step[15]),
        .O(halfclk2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__2_i_2
       (.I0(rram_addr[14]),
        .I1(address_step[14]),
        .O(halfclk2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__2_i_3
       (.I0(rram_addr[13]),
        .I1(address_step[13]),
        .O(halfclk2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry__2_i_4
       (.I0(rram_addr[12]),
        .I1(address_step[12]),
        .O(halfclk2_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry_i_1
       (.I0(rram_addr[3]),
        .I1(address_step[3]),
        .O(halfclk2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry_i_2
       (.I0(rram_addr[2]),
        .I1(address_step[2]),
        .O(halfclk2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry_i_3
       (.I0(rram_addr[1]),
        .I1(address_step[1]),
        .O(halfclk2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    halfclk2_carry_i_4
       (.I0(rram_addr[0]),
        .I1(address_step[0]),
        .O(halfclk2_carry_i_4_n_0));
  FDRE halfclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(halfclk_n_0),
        .Q(halfclk__0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[11]_i_2 
       (.I0(address_step[11]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[11]_i_3 
       (.I0(address_step[10]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[11]_i_4 
       (.I0(address_step[9]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[11]_i_5 
       (.I0(address_step[8]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[11]_i_6 
       (.I0(address_step[11]),
        .I1(address_start[11]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[11]),
        .O(\rram_addr[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[11]_i_7 
       (.I0(address_step[10]),
        .I1(address_start[10]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[10]),
        .O(\rram_addr[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[11]_i_8 
       (.I0(address_step[9]),
        .I1(address_start[9]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[9]),
        .O(\rram_addr[11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[11]_i_9 
       (.I0(address_step[8]),
        .I1(address_start[8]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[8]),
        .O(\rram_addr[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[15]_i_2 
       (.I0(address_step[14]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[15]_i_3 
       (.I0(address_step[13]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[15]_i_4 
       (.I0(address_step[12]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[15]_i_5 
       (.I0(address_step[15]),
        .I1(address_start[15]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[15]),
        .O(\rram_addr[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[15]_i_6 
       (.I0(address_step[14]),
        .I1(address_start[14]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[14]),
        .O(\rram_addr[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[15]_i_7 
       (.I0(address_step[13]),
        .I1(address_start[13]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[13]),
        .O(\rram_addr[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[15]_i_8 
       (.I0(address_step[12]),
        .I1(address_start[12]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[12]),
        .O(\rram_addr[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[3]_i_2 
       (.I0(address_step[3]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[3]_i_3 
       (.I0(address_step[2]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[3]_i_4 
       (.I0(address_step[1]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[3]_i_5 
       (.I0(address_step[0]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[3]_i_6 
       (.I0(address_step[3]),
        .I1(address_start[3]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[3]),
        .O(\rram_addr[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[3]_i_7 
       (.I0(address_step[2]),
        .I1(address_start[2]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[2]),
        .O(\rram_addr[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[3]_i_8 
       (.I0(address_step[1]),
        .I1(address_start[1]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[1]),
        .O(\rram_addr[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[3]_i_9 
       (.I0(address_step[0]),
        .I1(address_start[0]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[0]),
        .O(\rram_addr[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[7]_i_2 
       (.I0(address_step[7]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[7]_i_3 
       (.I0(address_step[6]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[7]_i_4 
       (.I0(address_step[5]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rram_addr[7]_i_5 
       (.I0(address_step[4]),
        .I1(halfclk1_carry__0_n_0),
        .O(\rram_addr[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[7]_i_6 
       (.I0(address_step[7]),
        .I1(address_start[7]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[7]),
        .O(\rram_addr[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[7]_i_7 
       (.I0(address_step[6]),
        .I1(address_start[6]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[6]),
        .O(\rram_addr[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[7]_i_8 
       (.I0(address_step[5]),
        .I1(address_start[5]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[5]),
        .O(\rram_addr[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h5CAC)) 
    \rram_addr[7]_i_9 
       (.I0(address_step[4]),
        .I1(address_start[4]),
        .I2(halfclk1_carry__0_n_0),
        .I3(rram_addr[4]),
        .O(\rram_addr[7]_i_9_n_0 ));
  FDRE \rram_addr_reg[0] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[3]_i_1_n_7 ),
        .Q(rram_addr[0]),
        .R(1'b0));
  FDRE \rram_addr_reg[10] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[11]_i_1_n_5 ),
        .Q(rram_addr[10]),
        .R(1'b0));
  FDRE \rram_addr_reg[11] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[11]_i_1_n_4 ),
        .Q(rram_addr[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rram_addr_reg[11]_i_1 
       (.CI(\rram_addr_reg[7]_i_1_n_0 ),
        .CO({\rram_addr_reg[11]_i_1_n_0 ,\rram_addr_reg[11]_i_1_n_1 ,\rram_addr_reg[11]_i_1_n_2 ,\rram_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\rram_addr[11]_i_2_n_0 ,\rram_addr[11]_i_3_n_0 ,\rram_addr[11]_i_4_n_0 ,\rram_addr[11]_i_5_n_0 }),
        .O({\rram_addr_reg[11]_i_1_n_4 ,\rram_addr_reg[11]_i_1_n_5 ,\rram_addr_reg[11]_i_1_n_6 ,\rram_addr_reg[11]_i_1_n_7 }),
        .S({\rram_addr[11]_i_6_n_0 ,\rram_addr[11]_i_7_n_0 ,\rram_addr[11]_i_8_n_0 ,\rram_addr[11]_i_9_n_0 }));
  FDRE \rram_addr_reg[12] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[15]_i_1_n_7 ),
        .Q(rram_addr[12]),
        .R(1'b0));
  FDRE \rram_addr_reg[13] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[15]_i_1_n_6 ),
        .Q(rram_addr[13]),
        .R(1'b0));
  FDRE \rram_addr_reg[14] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[15]_i_1_n_5 ),
        .Q(rram_addr[14]),
        .R(1'b0));
  FDRE \rram_addr_reg[15] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[15]_i_1_n_4 ),
        .Q(rram_addr[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rram_addr_reg[15]_i_1 
       (.CI(\rram_addr_reg[11]_i_1_n_0 ),
        .CO({\NLW_rram_addr_reg[15]_i_1_CO_UNCONNECTED [3],\rram_addr_reg[15]_i_1_n_1 ,\rram_addr_reg[15]_i_1_n_2 ,\rram_addr_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\rram_addr[15]_i_2_n_0 ,\rram_addr[15]_i_3_n_0 ,\rram_addr[15]_i_4_n_0 }),
        .O({\rram_addr_reg[15]_i_1_n_4 ,\rram_addr_reg[15]_i_1_n_5 ,\rram_addr_reg[15]_i_1_n_6 ,\rram_addr_reg[15]_i_1_n_7 }),
        .S({\rram_addr[15]_i_5_n_0 ,\rram_addr[15]_i_6_n_0 ,\rram_addr[15]_i_7_n_0 ,\rram_addr[15]_i_8_n_0 }));
  FDRE \rram_addr_reg[1] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[3]_i_1_n_6 ),
        .Q(rram_addr[1]),
        .R(1'b0));
  FDRE \rram_addr_reg[2] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[3]_i_1_n_5 ),
        .Q(rram_addr[2]),
        .R(1'b0));
  FDRE \rram_addr_reg[3] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[3]_i_1_n_4 ),
        .Q(rram_addr[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rram_addr_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\rram_addr_reg[3]_i_1_n_0 ,\rram_addr_reg[3]_i_1_n_1 ,\rram_addr_reg[3]_i_1_n_2 ,\rram_addr_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\rram_addr[3]_i_2_n_0 ,\rram_addr[3]_i_3_n_0 ,\rram_addr[3]_i_4_n_0 ,\rram_addr[3]_i_5_n_0 }),
        .O({\rram_addr_reg[3]_i_1_n_4 ,\rram_addr_reg[3]_i_1_n_5 ,\rram_addr_reg[3]_i_1_n_6 ,\rram_addr_reg[3]_i_1_n_7 }),
        .S({\rram_addr[3]_i_6_n_0 ,\rram_addr[3]_i_7_n_0 ,\rram_addr[3]_i_8_n_0 ,\rram_addr[3]_i_9_n_0 }));
  FDRE \rram_addr_reg[4] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[7]_i_1_n_7 ),
        .Q(rram_addr[4]),
        .R(1'b0));
  FDRE \rram_addr_reg[5] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[7]_i_1_n_6 ),
        .Q(rram_addr[5]),
        .R(1'b0));
  FDRE \rram_addr_reg[6] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[7]_i_1_n_5 ),
        .Q(rram_addr[6]),
        .R(1'b0));
  FDRE \rram_addr_reg[7] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[7]_i_1_n_4 ),
        .Q(rram_addr[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rram_addr_reg[7]_i_1 
       (.CI(\rram_addr_reg[3]_i_1_n_0 ),
        .CO({\rram_addr_reg[7]_i_1_n_0 ,\rram_addr_reg[7]_i_1_n_1 ,\rram_addr_reg[7]_i_1_n_2 ,\rram_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\rram_addr[7]_i_2_n_0 ,\rram_addr[7]_i_3_n_0 ,\rram_addr[7]_i_4_n_0 ,\rram_addr[7]_i_5_n_0 }),
        .O({\rram_addr_reg[7]_i_1_n_4 ,\rram_addr_reg[7]_i_1_n_5 ,\rram_addr_reg[7]_i_1_n_6 ,\rram_addr_reg[7]_i_1_n_7 }),
        .S({\rram_addr[7]_i_6_n_0 ,\rram_addr[7]_i_7_n_0 ,\rram_addr[7]_i_8_n_0 ,\rram_addr[7]_i_9_n_0 }));
  FDRE \rram_addr_reg[8] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[11]_i_1_n_7 ),
        .Q(rram_addr[8]),
        .R(1'b0));
  FDRE \rram_addr_reg[9] 
       (.C(clk),
        .CE(halfclk__0),
        .D(\rram_addr_reg[11]_i_1_n_6 ),
        .Q(rram_addr[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "ember_fpga_addr_loop_counter_0_0,addr_loop_counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "addr_loop_counter,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    address_start,
    address_stop,
    address_step,
    rram_addr);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ember_fpga_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [15:0]address_start;
  input [15:0]address_stop;
  input [15:0]address_step;
  output [15:0]rram_addr;

  wire [15:0]address_start;
  wire [15:0]address_step;
  wire [15:0]address_stop;
  wire clk;
  wire [15:0]rram_addr;
  wire rst_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_addr_loop_counter inst
       (.address_start(address_start),
        .address_step(address_step),
        .address_stop(address_stop),
        .clk(clk),
        .rram_addr(rram_addr),
        .rst_n(rst_n));
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
