// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Feb 17 11:32:38 2023
// Host        : r7cad-tsmc40r3 running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ember_fpga_addr_loop_counter_0_0_stub.v
// Design      : ember_fpga_addr_loop_counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "addr_loop_counter,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, address_start, address_stop, 
  address_step, rram_addr)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,address_start[15:0],address_stop[15:0],address_step[15:0],rram_addr[15:0]" */;
  input clk;
  input rst_n;
  input [15:0]address_start;
  input [15:0]address_stop;
  input [15:0]address_step;
  output [15:0]rram_addr;
endmodule
