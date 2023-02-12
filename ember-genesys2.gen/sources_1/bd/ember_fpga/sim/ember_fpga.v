//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sun Feb 12 03:21:39 2023
//Host        : r7cad-tsmc40r3 running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target ember_fpga.bd
//Design      : ember_fpga
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ember_fpga,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ember_fpga,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ember_fpga.hwdef" *) 
module ember_fpga
   (PROG_MISO,
    PROG_MOSI,
    PROG_SCK,
    PROG_SPIEN,
    PROG_SS,
    aclk,
    bl_en,
    bleed_en,
    bsl_dac_en,
    clamp_ref,
    clksel,
    di,
    mclk_pause_in,
    mclk_pause_out,
    miso_led,
    mosi_led,
    mosi_out,
    read_dac_config,
    read_dac_en,
    read_ref,
    reset,
    rram_addr,
    rram_busy_fpga_led,
    rram_busy_in,
    rram_busy_led,
    rram_busy_out,
    rst_n_led,
    rst_n_out,
    sa_clk,
    sa_do,
    sa_en,
    sa_rdy,
    sc_led,
    sc_out,
    sclk_led,
    sclk_out,
    set_rst,
    sl_en,
    spien_led,
    sw,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p,
    wl_dac_en,
    wl_en);
  output PROG_MISO;
  input PROG_MOSI;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PROG_SCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PROG_SCK, CLK_DOMAIN ember_fpga_PROG_SCK, FREQ_HZ 33000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input PROG_SCK;
  input PROG_SPIEN;
  input PROG_SS;
  output [0:0]aclk;
  output [0:0]bl_en;
  output [0:0]bleed_en;
  output [0:0]bsl_dac_en;
  output [5:0]clamp_ref;
  input clksel;
  output [47:0]di;
  input mclk_pause_in;
  output mclk_pause_out;
  output miso_led;
  output mosi_led;
  output mosi_out;
  output [3:0]read_dac_config;
  output [0:0]read_dac_en;
  output [5:0]read_ref;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  output [15:0]rram_addr;
  output rram_busy_fpga_led;
  input rram_busy_in;
  output rram_busy_led;
  output rram_busy_out;
  output rst_n_led;
  output rst_n_out;
  output sa_clk;
  input [47:0]sa_do;
  output [0:0]sa_en;
  input sa_rdy;
  output [0:0]sc_led;
  output [0:0]sc_out;
  output sclk_led;
  output sclk_out;
  output [0:0]set_rst;
  output [0:0]sl_en;
  output spien_led;
  input [5:0]sw;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 200000000" *) input sys_diff_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P" *) input sys_diff_clock_clk_p;
  output [0:0]wl_dac_en;
  output [0:0]wl_en;

  wire PROG_SPIEN_1;
  wire PROG_SS_1;
  wire clk_wiz_clk_out1;
  wire clkmux_0_sclk_out;
  wire clksel_1;
  wire mclk_pause_in;
  wire mosi_in;
  wire reset_2;
  wire rram_busy_in_1;
  wire rram_top_wrapper_0_miso;
  wire [15:0]rram_top_wrapper_0_rram_addr;
  wire rram_top_wrapper_0_rram_busy;
  wire [47:0]sa_do_1;
  wire sa_rdy_1;
  wire [0:0]sc_in;
  wire sclk_in_1;
  wire [5:0]sw_1;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_0_dout1;
  wire [3:0]xlconstant_2_dout;
  wire [5:0]xlconstant_3_dout;
  wire [47:0]xlconstant_4_dout;

  assign PROG_MISO = rram_top_wrapper_0_miso;
  assign PROG_SPIEN_1 = PROG_SPIEN;
  assign PROG_SS_1 = PROG_SS;
  assign aclk[0] = xlconstant_0_dout;
  assign bl_en[0] = xlconstant_0_dout1;
  assign bleed_en[0] = xlconstant_0_dout1;
  assign bsl_dac_en[0] = xlconstant_0_dout;
  assign clamp_ref[5:0] = xlconstant_3_dout;
  assign clksel_1 = clksel;
  assign di[47:0] = xlconstant_4_dout;
  assign mclk_pause_out = mclk_pause_in;
  assign miso_led = rram_top_wrapper_0_miso;
  assign mosi_in = PROG_MOSI;
  assign mosi_led = mosi_in;
  assign mosi_out = mosi_in;
  assign read_dac_config[3:0] = xlconstant_2_dout;
  assign read_dac_en[0] = xlconstant_0_dout1;
  assign read_ref[5:0] = sw_1;
  assign reset_2 = reset;
  assign rram_addr[15:0] = rram_top_wrapper_0_rram_addr;
  assign rram_busy_fpga_led = rram_top_wrapper_0_rram_busy;
  assign rram_busy_in_1 = rram_busy_in;
  assign rram_busy_led = rram_busy_in_1;
  assign rram_busy_out = rram_busy_in_1;
  assign rst_n_led = reset_2;
  assign rst_n_out = reset_2;
  assign sa_clk = clk_wiz_clk_out1;
  assign sa_do_1 = sa_do[47:0];
  assign sa_en[0] = util_vector_logic_1_Res;
  assign sa_rdy_1 = sa_rdy;
  assign sc_led[0] = sc_in;
  assign sc_out[0] = sc_in;
  assign sclk_in_1 = PROG_SCK;
  assign sclk_led = clkmux_0_sclk_out;
  assign sclk_out = clkmux_0_sclk_out;
  assign set_rst[0] = xlconstant_0_dout;
  assign sl_en[0] = xlconstant_0_dout1;
  assign spien_led = PROG_SPIEN_1;
  assign sw_1 = sw[5:0];
  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
  assign wl_dac_en[0] = xlconstant_0_dout;
  assign wl_en[0] = xlconstant_0_dout1;
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
  ember_fpga_ila_0_0 ila_0
       (.clk(clk_wiz_clk_out1),
        .probe0(sa_do_1),
        .probe1(sa_rdy_1),
        .probe2(rram_busy_in_1));
  ember_fpga_rram_top_wrapper_0_0 rram_top_wrapper_0
       (.mclk_pause(mclk_pause_in),
        .miso(rram_top_wrapper_0_miso),
        .mosi(mosi_in),
        .rram_addr(rram_top_wrapper_0_rram_addr),
        .rram_busy(rram_top_wrapper_0_rram_busy),
        .rst_n(reset_2),
        .sa_do(sa_do_1),
        .sa_rdy(sa_rdy_1),
        .sc(sc_in),
        .sclk(clkmux_0_sclk_out));
  ember_fpga_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(PROG_SS_1),
        .Res(sc_in));
  ember_fpga_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(sa_rdy_1),
        .Res(util_vector_logic_1_Res));
  ember_fpga_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  ember_fpga_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_0_dout1));
  ember_fpga_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  ember_fpga_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
  ember_fpga_xlconstant_4_0 xlconstant_4
       (.dout(xlconstant_4_dout));
endmodule
