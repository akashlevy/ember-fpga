//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sun Jan 29 10:59:28 2023
//Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target ember_fpga.bd
//Design      : ember_fpga
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ember_fpga,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ember_fpga,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ember_fpga.hwdef" *) 
module ember_fpga
   (mclk_pause_in,
    mclk_pause_led,
    mclk_pause_out,
    mosi_in,
    mosi_led,
    mosi_out,
    reset,
    reset_led,
    rram_busy_ember_led,
    rram_busy_in,
    rram_busy_out,
    rst_n_led,
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
  output mclk_pause_led;
  output mclk_pause_out;
  input mosi_in;
  output mosi_led;
  output mosi_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_LED RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_LED, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output reset_led;
  output rram_busy_ember_led;
  input rram_busy_in;
  output rram_busy_out;
  output [0:0]rst_n_led;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_OUT, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]rst_n_out;
  input [47:0]sa_do;
  input sa_rdy;
  input sc_in;
  output sc_led;
  output sc_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SCLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SCLK_IN, CLK_DOMAIN ember_fpga_sclk_in, FREQ_HZ 5000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sclk_in;
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
  wire ila_0_trig_in_ack;
  wire [31:0]jtag_axi_0_M_AXI_ARADDR;
  wire jtag_axi_0_M_AXI_ARREADY;
  wire jtag_axi_0_M_AXI_ARVALID;
  wire [31:0]jtag_axi_0_M_AXI_AWADDR;
  wire jtag_axi_0_M_AXI_AWREADY;
  wire jtag_axi_0_M_AXI_AWVALID;
  wire jtag_axi_0_M_AXI_BREADY;
  wire [1:0]jtag_axi_0_M_AXI_BRESP;
  wire jtag_axi_0_M_AXI_BVALID;
  wire [31:0]jtag_axi_0_M_AXI_RDATA;
  wire jtag_axi_0_M_AXI_RREADY;
  wire [1:0]jtag_axi_0_M_AXI_RRESP;
  wire jtag_axi_0_M_AXI_RVALID;
  wire [31:0]jtag_axi_0_M_AXI_WDATA;
  wire jtag_axi_0_M_AXI_WREADY;
  wire [3:0]jtag_axi_0_M_AXI_WSTRB;
  wire jtag_axi_0_M_AXI_WVALID;
  wire mclk_pause_in;
  wire mosi_in;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire reset_1;
  wire rram_busy_in_1;
  wire [47:0]sa_do_1;
  wire sa_rdy_1;
  wire sc_in;
  wire sclk_in_1;
  wire sysclk_n_1;
  wire sysclk_p_1;
  wire use_mmcm_1;

  assign mclk_pause_led = mclk_pause_in;
  assign mclk_pause_out = mclk_pause_in;
  assign mosi_led = mosi_in;
  assign mosi_out = mosi_in;
  assign reset_1 = reset;
  assign reset_led = reset_1;
  assign rram_busy_ember_led = rram_busy_in_1;
  assign rram_busy_in_1 = rram_busy_in;
  assign rram_busy_out = rram_busy_in_1;
  assign rst_n_led[0] = proc_sys_reset_0_interconnect_aresetn;
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
  assign trig_in_ack = ila_0_trig_in_ack;
  assign use_mmcm_1 = use_mmcm;
  assign use_mmcm_led = use_mmcm_1;
  ember_fpga_clk_wiz_0 clk_wiz
       (.clk_in1_n(sysclk_n_1),
        .clk_in1_p(sysclk_p_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(jtag_axi_0_M_AXI_ARADDR[10:0]),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .s_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .s_axi_awaddr(jtag_axi_0_M_AXI_AWADDR[10:0]),
        .s_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .s_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .s_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .s_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .s_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .s_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .s_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .s_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .s_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .s_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .s_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .s_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .s_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
  ember_fpga_clkmux_0_0 clkmux_0
       (.clk_out(clkmux_0_sclk_out),
        .clksel(use_mmcm_1),
        .mmcm_clk(clk_wiz_clk_out1),
        .sclk_in(sclk_in_1));
  ember_fpga_ila_0_0 ila_0
       (.clk(clk_wiz_clk_out1),
        .probe0(sa_do_1),
        .trig_in(sa_rdy_1),
        .trig_in_ack(ila_0_trig_in_ack));
  ember_fpga_jtag_axi_0_1 jtag_axi_0
       (.aclk(clk_wiz_clk_out1),
        .aresetn(proc_sys_reset_1_interconnect_aresetn),
        .m_axi_araddr(jtag_axi_0_M_AXI_ARADDR),
        .m_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .m_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .m_axi_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .m_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .m_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .m_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .m_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .m_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .m_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .m_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .m_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .m_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .m_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .m_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .m_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .m_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
  ember_fpga_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .interconnect_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule
