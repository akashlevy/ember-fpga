//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Tue Feb  7 22:26:44 2023
//Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target ember_fpga.bd
//Design      : ember_fpga
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ember_fpga,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ember_fpga,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ember_fpga.hwdef" *) 
module ember_fpga
   (PROG_MISO,
    PROG_MOSI,
    PROG_SCK,
    PROG_SPIEN,
    PROG_SS,
    clksel,
    mclk_pause_in,
    mclk_pause_out,
    miso_led,
    mosi_led,
    mosi_out,
    reset,
    rram_busy_fpga_led,
    rram_busy_in,
    rram_busy_led,
    rram_busy_out,
    rst_n_led,
    rst_n_out,
    sa_do,
    sa_rdy,
    sc_led,
    sc_out,
    sclk_led,
    sclk_out,
    spien_led,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p);
  output PROG_MISO;
  input PROG_MOSI;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PROG_SCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PROG_SCK, CLK_DOMAIN ember_fpga_PROG_SCK, FREQ_HZ 33000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input PROG_SCK;
  input PROG_SPIEN;
  input PROG_SS;
  input clksel;
  input mclk_pause_in;
  output mclk_pause_out;
  output miso_led;
  output mosi_led;
  output mosi_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  output rram_busy_fpga_led;
  input rram_busy_in;
  output rram_busy_led;
  output rram_busy_out;
  output rst_n_led;
  output rst_n_out;
  input [47:0]sa_do;
  input sa_rdy;
  output sc_led;
  output sc_out;
  output sclk_led;
  output sclk_out;
  output spien_led;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 200000000" *) input sys_diff_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P" *) input sys_diff_clock_clk_p;

  wire PROG_SPIEN_1;
  wire clk_wiz_clk_out1;
  wire clkmux_0_sclk_out;
  wire clksel_1;
  wire mclk_pause_in;
  wire mosi_in;
  wire reset_2;
  wire rram_busy_in_1;
  wire rram_top_wrapper_0_miso;
  wire rram_top_wrapper_0_rram_busy;
  wire [47:0]sa_do_1;
  wire sa_rdy_1;
  wire sc_in;
  wire sclk_in_1;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;

  assign PROG_MISO = rram_top_wrapper_0_miso;
  assign PROG_SPIEN_1 = PROG_SPIEN;
  assign clksel_1 = clksel;
  assign mclk_pause_out = mclk_pause_in;
  assign miso_led = rram_top_wrapper_0_miso;
  assign mosi_in = PROG_MOSI;
  assign mosi_led = mosi_in;
  assign mosi_out = mosi_in;
  assign reset_2 = reset;
  assign rram_busy_fpga_led = rram_top_wrapper_0_rram_busy;
  assign rram_busy_in_1 = rram_busy_in;
  assign rram_busy_led = rram_busy_in_1;
  assign rram_busy_out = rram_busy_in_1;
  assign rst_n_led = reset_2;
  assign rst_n_out = reset_2;
  assign sa_do_1 = sa_do[47:0];
  assign sa_rdy_1 = sa_rdy;
  assign sc_in = PROG_SS;
  assign sc_led = sc_in;
  assign sc_out = sc_in;
  assign sclk_in_1 = PROG_SCK;
  assign sclk_led = clkmux_0_sclk_out;
  assign sclk_out = clkmux_0_sclk_out;
  assign spien_led = PROG_SPIEN_1;
  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
  ember_fpga_clk_wiz_0 clk_wiz
       (.clk_in1_n(sys_diff_clock_1_CLK_N),
        .clk_in1_p(sys_diff_clock_1_CLK_P),
        .clk_out1(clk_wiz_clk_out1),
        .resetn(reset_2));
  ember_fpga_clkmux_0_0 clkmux_0
       (.clk_out(clkmux_0_sclk_out),
        .clksel(clksel_1),
        .fastclk(clk_wiz_clk_out1),
        .rram_busy(rram_busy_in_1),
        .sclk(sclk_in_1));
  ember_fpga_rram_top_wrapper_0_0 rram_top_wrapper_0
       (.mclk_pause(mclk_pause_in),
        .miso(rram_top_wrapper_0_miso),
        .mosi(mosi_in),
        .rram_busy(rram_top_wrapper_0_rram_busy),
        .rst_n(reset_2),
        .sa_do(sa_do_1),
        .sa_rdy(sa_rdy_1),
        .sc(sc_in),
        .sclk(clkmux_0_sclk_out));
  ember_fpga_vio_0_0 vio_0
       (.clk(clk_wiz_clk_out1),
        .probe_in0(sa_do_1),
        .probe_in1(sa_rdy_1),
        .probe_in2(rram_busy_in_1));
endmodule
