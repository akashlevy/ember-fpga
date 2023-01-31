//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon Jan 30 23:26:54 2023
//Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target ember_fpga.bd
//Design      : ember_fpga
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ember_fpga,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ember_fpga,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ember_fpga.hwdef" *) 
module ember_fpga
   (mclk_pause_in,
    mclk_pause_out,
    miso,
    miso_led,
    mmcm_led,
    mosi_in,
    mosi_led,
    mosi_out,
    reset,
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
    sclk_out,
    sysclk_n,
    sysclk_p,
    trig_in_ack,
    use_mmcm,
    use_mmcm_led);
  input mclk_pause_in;
  output mclk_pause_out;
  output miso;
  output miso_led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MMCM_LED CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MMCM_LED, CLK_DOMAIN ember_fpga_clk_wiz_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output mmcm_led;
  input mosi_in;
  output mosi_led;
  output mosi_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  output rram_busy_ember_led;
  output rram_busy_fpga_led;
  input rram_busy_in;
  output rram_busy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_OUT, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]rst_n_out;
  input [47:0]sa_do;
  input sa_rdy;
  input sc_in;
  output sc_led;
  output sc_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SCLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SCLK_IN, CLK_DOMAIN ember_fpga_sclk_in, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sclk_in;
  output sclk_led;
  output sclk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK_N, CLK_DOMAIN ember_fpga_sysclk_n, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sysclk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK_P, CLK_DOMAIN ember_fpga_sysclk_p, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sysclk_p;
  output trig_in_ack;
  input use_mmcm;
  output use_mmcm_led;

  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire clkmux_0_sclk_out;
  wire mclk_pause_in;
  wire mosi_in;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire reset_1;
  wire rram_busy_in_1;
  wire rram_top_wrapper_0_miso;
  wire rram_top_wrapper_0_rram_busy;
  wire [47:0]sa_do_1;
  wire sa_rdy_1;
  wire sc_in;
  wire sclk_in_1;
  wire sysclk_n_1;
  wire sysclk_p_1;
  wire use_mmcm_1;

  assign mclk_pause_out = mclk_pause_in;
  assign miso = rram_top_wrapper_0_miso;
  assign miso_led = rram_top_wrapper_0_miso;
  assign mmcm_led = clk_wiz_clk_out1;
  assign mosi_led = mosi_in;
  assign mosi_out = mosi_in;
  assign reset_1 = reset;
  assign rram_busy_ember_led = rram_busy_in_1;
  assign rram_busy_fpga_led = rram_top_wrapper_0_rram_busy;
  assign rram_busy_in_1 = rram_busy_in;
  assign rram_busy_out = rram_busy_in_1;
  assign rst_n_out[0] = proc_sys_reset_0_interconnect_aresetn;
  assign sa_do_1 = sa_do[47:0];
  assign sa_rdy_1 = sa_rdy;
  assign sc_led = sc_in;
  assign sc_out = sc_in;
  assign sclk_in_1 = sclk_in;
  assign sclk_led = clkmux_0_sclk_out;
  assign sclk_out = clkmux_0_sclk_out;
  assign sysclk_n_1 = sysclk_n;
  assign sysclk_p_1 = sysclk_p;
  assign use_mmcm_1 = use_mmcm;
  assign use_mmcm_led = use_mmcm_1;
  ember_fpga_clk_wiz_0 clk_wiz
       (.clk_in1_n(sysclk_n_1),
        .clk_in1_p(sysclk_p_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .resetn(reset_1));
  ember_fpga_clkmux_0_0 clkmux_0
       (.clk_out(clkmux_0_sclk_out),
        .clksel(use_mmcm_1),
        .mmcm_clk(clk_wiz_clk_out1),
        .rram_busy(rram_busy_in_1),
        .sclk_in(sclk_in_1));
  ember_fpga_ila_0_0 ila_0
       (.clk(clk_wiz_clk_out1),
        .probe0(sa_do_1),
        .probe1(sa_rdy_1));
  ember_fpga_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
  ember_fpga_rram_top_wrapper_0_0 rram_top_wrapper_0
       (.mclk_pause(mclk_pause_in),
        .miso(rram_top_wrapper_0_miso),
        .mosi(mosi_in),
        .rram_busy(rram_top_wrapper_0_rram_busy),
        .rst_n(proc_sys_reset_1_peripheral_aresetn),
        .sa_do(sa_do_1),
        .sa_rdy(sa_rdy_1),
        .sc(sc_in),
        .sclk(sclk_in_1));
endmodule
