// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Mar 12 06:16:12 2023
// Host        : r7cad-tsmc40r3 running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ember_fpga_rram_top_wrapper_0_0_stub.v
// Design      : ember_fpga_rram_top_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rram_top_wrapper,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(mclk_pause, rst_n, rram_busy, sclk, sc, mosi, miso, di, 
  read_ref, rram_addr, sa_do, sa_rdy)
/* synthesis syn_black_box black_box_pad_pin="mclk_pause,rst_n,rram_busy,sclk,sc,mosi,miso,di[47:0],read_ref[5:0],rram_addr[15:0],sa_do[47:0],sa_rdy" */;
  input mclk_pause;
  input rst_n;
  output rram_busy;
  input sclk;
  input sc;
  input mosi;
  output miso;
  output [47:0]di;
  output [5:0]read_ref;
  output [15:0]rram_addr;
  input [47:0]sa_do;
  input sa_rdy;
endmodule
