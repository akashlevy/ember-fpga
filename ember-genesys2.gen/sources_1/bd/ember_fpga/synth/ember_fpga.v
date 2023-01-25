//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Wed Jan 25 07:09:34 2023
//Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target ember_fpga.bd
//Design      : ember_fpga
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ember_fpga,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ember_fpga,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ember_fpga.hwdef" *) 
module ember_fpga
   (cpu_resetn,
    cpu_resetn_led,
    mclk_pause_in,
    mclk_pause_led,
    mclk_pause_out,
    miso,
    miso_led,
    mosi_in,
    mosi_led,
    mosi_out,
    rram_busy_ember_led,
    rram_busy_fpga_led,
    rram_busy_in,
    rram_busy_out,
    rst_n_out,
    sa_do,
    sa_rdy,
    sc_in,
    sc_led,
    sc_out,
    sclk_in,
    sclk_led,
    sclk_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input cpu_resetn;
  output cpu_resetn_led;
  input mclk_pause_in;
  output mclk_pause_led;
  output mclk_pause_out;
  output miso;
  output miso_led;
  input mosi_in;
  output mosi_led;
  output mosi_out;
  output rram_busy_ember_led;
  output rram_busy_fpga_led;
  input rram_busy_in;
  output rram_busy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_OUT, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output rst_n_out;
  input [47:0]sa_do;
  input sa_rdy;
  input sc_in;
  output sc_led;
  output sc_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SCLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SCLK_IN, CLK_DOMAIN ember_fpga_sclk_in, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sclk_in;
  output sclk_led;
  output sclk_out;

  wire cpu_resetn;
  wire mclk_pause_in;
  wire mosi_in;
  wire rram_busy_in_1;
  wire rram_top_0_miso;
  wire rram_top_0_rram_busy;
  wire [47:0]sa_do_1;
  wire sa_rdy;
  wire sc_in;
  wire sclk_in_1;

  assign cpu_resetn_led = cpu_resetn;
  assign mclk_pause_led = mclk_pause_in;
  assign mclk_pause_out = mclk_pause_in;
  assign miso = rram_top_0_miso;
  assign miso_led = rram_top_0_miso;
  assign mosi_led = mosi_in;
  assign mosi_out = mosi_in;
  assign rram_busy_ember_led = rram_busy_in_1;
  assign rram_busy_fpga_led = rram_top_0_rram_busy;
  assign rram_busy_in_1 = rram_busy_in;
  assign rram_busy_out = rram_busy_in_1;
  assign rst_n_out = cpu_resetn;
  assign sa_do_1 = sa_do[47:0];
  assign sc_led = sc_in;
  assign sc_out = sc_in;
  assign sclk_in_1 = sclk_in;
  assign sclk_led = sclk_in_1;
  assign sclk_out = sclk_in_1;
  ember_fpga_rram_top_wrapper_0_0 rram_top_wrapper_0
       (.mclk_pause(mclk_pause_in),
        .miso(rram_top_0_miso),
        .mosi(mosi_in),
        .rram_busy(rram_top_0_rram_busy),
        .rst_n(cpu_resetn),
        .sa_do(sa_do_1),
        .sa_rdy(sa_rdy),
        .sc(sc_in),
        .sclk(sclk_in_1));
endmodule
