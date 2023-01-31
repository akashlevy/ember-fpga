// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jan 29 07:55:19 2023
// Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top ember_fpga_ila_0_0 -prefix
//               ember_fpga_ila_0_0_ ember_fpga_ila_0_0_stub.v
// Design      : ember_fpga_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.2" *)
module ember_fpga_ila_0_0(clk, trig_in, trig_in_ack, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,trig_in,trig_in_ack,probe0[47:0]" */;
  input clk;
  input trig_in;
  output trig_in_ack;
  input [47:0]probe0;
endmodule
