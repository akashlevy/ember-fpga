//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Tue Nov  7 20:39:27 2023
//Host        : r7cad-tsmc40r2 running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target ember_fpga.bd
//Design      : ember_fpga
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ember_fpga,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ember_fpga,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ember_fpga.hwdef" *) 
module ember_fpga
   (PROG_MISO,
    PROG_MOSI,
    PROG_SCK,
    PROG_SPIEN,
    PROG_SS,
    aclk,
    bl_en,
    bleed_en,
    bsl_dac_config,
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
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p,
    user_rst,
    we,
    wl_dac_config,
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
  output [4:0]bsl_dac_config;
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
  output [0:0]rst_n_led;
  output [0:0]rst_n_out;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 200000000" *) input sys_diff_clock_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P" *) input sys_diff_clock_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.USER_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.USER_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input user_rst;
  output we;
  output [7:0]wl_dac_config;
  output [0:0]wl_dac_en;
  output [0:0]wl_en;

  wire PROG_SPIEN_1;
  wire PROG_SS_1;
  wire clk;
  wire clkmux_0_sclk_out;
  wire clksel_1;
  wire [47:0]di;
  wire mclk_pause_in;
  wire mosi_in;
  wire [5:0]read_ref;
  wire reset_1;
  wire [15:0]rram_addr;
  wire rram_busy;
  wire rram_top_wrapper_0_aclk;
  wire rram_top_wrapper_0_bl_en;
  wire rram_top_wrapper_0_bleed_en;
  wire [4:0]rram_top_wrapper_0_bsl_dac_config;
  wire rram_top_wrapper_0_bsl_dac_en;
  wire [5:0]rram_top_wrapper_0_clamp_ref;
  wire rram_top_wrapper_0_miso;
  wire [3:0]rram_top_wrapper_0_read_dac_config;
  wire rram_top_wrapper_0_read_dac_en;
  wire rram_top_wrapper_0_rram_busy;
  wire rram_top_wrapper_0_sa_clk;
  wire rram_top_wrapper_0_sa_en;
  wire rram_top_wrapper_0_set_rst;
  wire rram_top_wrapper_0_sl_en;
  wire rram_top_wrapper_0_we;
  wire [7:0]rram_top_wrapper_0_wl_dac_config;
  wire rram_top_wrapper_0_wl_dac_en;
  wire rram_top_wrapper_0_wl_en;
  wire [47:0]sa_do;
  wire sa_rdy;
  wire [0:0]sc_in;
  wire sclk_in_1;
  wire sys_diff_clock_1_CLK_N;
  wire sys_diff_clock_1_CLK_P;
  wire user_rst_1;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign PROG_MISO = rram_top_wrapper_0_miso;
  assign PROG_SPIEN_1 = PROG_SPIEN;
  assign PROG_SS_1 = PROG_SS;
  assign aclk[0] = rram_top_wrapper_0_aclk;
  assign bl_en[0] = rram_top_wrapper_0_bl_en;
  assign bleed_en[0] = rram_top_wrapper_0_bleed_en;
  assign bsl_dac_config[4:0] = rram_top_wrapper_0_bsl_dac_config;
  assign bsl_dac_en[0] = rram_top_wrapper_0_bsl_dac_en;
  assign clamp_ref[5:0] = rram_top_wrapper_0_clamp_ref;
  assign clksel_1 = clksel;
  assign mclk_pause_out = mclk_pause_in;
  assign miso_led = rram_top_wrapper_0_miso;
  assign mosi_in = PROG_MOSI;
  assign mosi_led = mosi_in;
  assign mosi_out = mosi_in;
  assign read_dac_config[3:0] = rram_top_wrapper_0_read_dac_config;
  assign read_dac_en[0] = rram_top_wrapper_0_read_dac_en;
  assign reset_1 = reset;
  assign rram_busy = rram_busy_in;
  assign rram_busy_fpga_led = rram_top_wrapper_0_rram_busy;
  assign rram_busy_led = rram_busy;
  assign rram_busy_out = rram_top_wrapper_0_rram_busy;
  assign rst_n_led[0] = util_vector_logic_1_Res;
  assign rst_n_out[0] = util_vector_logic_1_Res;
  assign sa_clk = rram_top_wrapper_0_sa_clk;
  assign sa_en[0] = rram_top_wrapper_0_sa_en;
  assign sc_led[0] = sc_in;
  assign sc_out[0] = sc_in;
  assign sclk_in_1 = PROG_SCK;
  assign sclk_led = clkmux_0_sclk_out;
  assign sclk_out = clkmux_0_sclk_out;
  assign set_rst[0] = rram_top_wrapper_0_set_rst;
  assign sl_en[0] = rram_top_wrapper_0_sl_en;
  assign spien_led = PROG_SPIEN_1;
  assign sys_diff_clock_1_CLK_N = sys_diff_clock_clk_n;
  assign sys_diff_clock_1_CLK_P = sys_diff_clock_clk_p;
  assign user_rst_1 = user_rst;
  assign we = rram_top_wrapper_0_we;
  assign wl_dac_config[7:0] = rram_top_wrapper_0_wl_dac_config;
  assign wl_dac_en[0] = rram_top_wrapper_0_wl_dac_en;
  assign wl_en[0] = rram_top_wrapper_0_wl_en;
  ember_fpga_clk_wiz_0 clk_wiz
       (.clk_in1_n(sys_diff_clock_1_CLK_N),
        .clk_in1_p(sys_diff_clock_1_CLK_P),
        .clk_out1(clk),
        .resetn(reset_1));
  ember_fpga_clkmux_0_0 clkmux_0
       (.clk_out(clkmux_0_sclk_out),
        .clksel(clksel_1),
        .fastclk(clk),
        .rram_busy(rram_top_wrapper_0_rram_busy),
        .sclk(sclk_in_1));
  ember_fpga_rram_top_wrapper_0_0 rram_top_wrapper_0
       (.aclk(rram_top_wrapper_0_aclk),
        .bl_en(rram_top_wrapper_0_bl_en),
        .bleed_en(rram_top_wrapper_0_bleed_en),
        .bsl_dac_config(rram_top_wrapper_0_bsl_dac_config),
        .bsl_dac_en(rram_top_wrapper_0_bsl_dac_en),
        .clamp_ref(rram_top_wrapper_0_clamp_ref),
        .di(di),
        .mclk_pause(mclk_pause_in),
        .miso(rram_top_wrapper_0_miso),
        .mosi(mosi_in),
        .read_dac_config(rram_top_wrapper_0_read_dac_config),
        .read_dac_en(rram_top_wrapper_0_read_dac_en),
        .read_ref(read_ref),
        .rram_addr(rram_addr),
        .rram_busy(rram_top_wrapper_0_rram_busy),
        .rst_n(util_vector_logic_1_Res),
        .sa_clk(rram_top_wrapper_0_sa_clk),
        .sa_do(sa_do),
        .sa_en(rram_top_wrapper_0_sa_en),
        .sa_rdy(sa_rdy),
        .sc(sc_in),
        .sclk(clkmux_0_sclk_out),
        .set_rst(rram_top_wrapper_0_set_rst),
        .sl_en(rram_top_wrapper_0_sl_en),
        .we(rram_top_wrapper_0_we),
        .wl_dac_config(rram_top_wrapper_0_wl_dac_config),
        .wl_dac_en(rram_top_wrapper_0_wl_dac_en),
        .wl_en(rram_top_wrapper_0_wl_en));
  ember_fpga_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(PROG_SS_1),
        .Res(sc_in));
  ember_fpga_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(reset_1),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_1_Res));
  ember_fpga_util_vector_logic_0_1 util_vector_logic_2
       (.Op1(user_rst_1),
        .Res(util_vector_logic_2_Res));
endmodule
