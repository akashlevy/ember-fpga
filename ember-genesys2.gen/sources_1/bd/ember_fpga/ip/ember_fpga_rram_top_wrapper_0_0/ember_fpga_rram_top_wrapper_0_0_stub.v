// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jan 30 23:28:35 2023
// Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /sim2/akashl/ember-fpga/ember-genesys2.gen/sources_1/bd/ember_fpga/ip/ember_fpga_rram_top_wrapper_0_0/ember_fpga_rram_top_wrapper_0_0_stub.v
// Design      : ember_fpga_rram_top_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rram_top_wrapper,Vivado 2020.2" *)
module ember_fpga_rram_top_wrapper_0_0(mclk_pause, rst_n, rram_busy, sclk, sc, mosi, miso, 
  sa_do, sa_rdy)
/* synthesis syn_black_box black_box_pad_pin="mclk_pause,rst_n,rram_busy,sclk,sc,mosi,miso,sa_do[47:0],sa_rdy" */;
  input mclk_pause;
  input rst_n;
  output rram_busy;
  input sclk;
  input sc;
  input mosi;
  output miso;
  input [47:0]sa_do;
  input sa_rdy;
endmodule
