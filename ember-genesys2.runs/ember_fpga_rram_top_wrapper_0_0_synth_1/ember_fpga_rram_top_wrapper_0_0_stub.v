// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Oct  3 05:46:51 2023
// Host        : r7cad-tsmc40r2 running 64-bit CentOS Linux release 7.6.1810 (Core)
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(mclk_pause, rst_n, rram_busy, sclk, sc, mosi, miso, 
  aclk, bl_en, bleed_en, bsl_dac_config, bsl_dac_en, clamp_ref, di, read_dac_config, read_dac_en, 
  read_ref, rram_addr, sa_clk, sa_en, set_rst, sl_en, we, wl_dac_config, wl_dac_en, wl_en, sa_do, sa_rdy)
/* synthesis syn_black_box black_box_pad_pin="mclk_pause,rst_n,rram_busy,sclk,sc,mosi,miso,aclk,bl_en,bleed_en,bsl_dac_config[4:0],bsl_dac_en,clamp_ref[5:0],di[47:0],read_dac_config[3:0],read_dac_en,read_ref[5:0],rram_addr[15:0],sa_clk,sa_en,set_rst,sl_en,we,wl_dac_config[7:0],wl_dac_en,wl_en,sa_do[47:0],sa_rdy" */;
  input mclk_pause;
  input rst_n;
  output rram_busy;
  input sclk;
  input sc;
  input mosi;
  output miso;
  output aclk;
  output bl_en;
  output bleed_en;
  output [4:0]bsl_dac_config;
  output bsl_dac_en;
  output [5:0]clamp_ref;
  output [47:0]di;
  output [3:0]read_dac_config;
  output read_dac_en;
  output [5:0]read_ref;
  output [15:0]rram_addr;
  output sa_clk;
  output sa_en;
  output set_rst;
  output sl_en;
  output we;
  output [7:0]wl_dac_config;
  output wl_dac_en;
  output wl_en;
  input [47:0]sa_do;
  input sa_rdy;
endmodule
