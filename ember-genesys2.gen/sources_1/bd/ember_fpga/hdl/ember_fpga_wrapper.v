//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sun Feb 12 00:06:54 2023
//Host        : r7cad-tsmc40r3 running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target ember_fpga_wrapper.bd
//Design      : ember_fpga_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ember_fpga_wrapper
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
  input PROG_SCK;
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
  input reset;
  output [15:0]rram_addr;
  output rram_busy_fpga_led;
  input rram_busy_in;
  output rram_busy_led;
  output rram_busy_out;
  output rst_n_led;
  output rst_n_out;
  output sa_clk;
  input [47:0]sa_do;
  output sa_en;
  input sa_rdy;
  output [0:0]sc_led;
  output [0:0]sc_out;
  output sclk_led;
  output sclk_out;
  output [0:0]set_rst;
  output [0:0]sl_en;
  output spien_led;
  input [5:0]sw;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;
  output [0:0]wl_dac_en;
  output [0:0]wl_en;

  wire PROG_MISO;
  wire PROG_MOSI;
  wire PROG_SCK;
  wire PROG_SPIEN;
  wire PROG_SS;
  wire [0:0]aclk;
  wire [0:0]bl_en;
  wire [0:0]bleed_en;
  wire [0:0]bsl_dac_en;
  wire [5:0]clamp_ref;
  wire clksel;
  wire [47:0]di;
  wire mclk_pause_in;
  wire mclk_pause_out;
  wire miso_led;
  wire mosi_led;
  wire mosi_out;
  wire [3:0]read_dac_config;
  wire [0:0]read_dac_en;
  wire [5:0]read_ref;
  wire reset;
  wire [15:0]rram_addr;
  wire rram_busy_fpga_led;
  wire rram_busy_in;
  wire rram_busy_led;
  wire rram_busy_out;
  wire rst_n_led;
  wire rst_n_out;
  wire sa_clk;
  wire [47:0]sa_do;
  wire sa_en;
  wire sa_rdy;
  wire [0:0]sc_led;
  wire [0:0]sc_out;
  wire sclk_led;
  wire sclk_out;
  wire [0:0]set_rst;
  wire [0:0]sl_en;
  wire spien_led;
  wire [5:0]sw;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;
  wire [0:0]wl_dac_en;
  wire [0:0]wl_en;

  ember_fpga ember_fpga_i
       (.PROG_MISO(PROG_MISO),
        .PROG_MOSI(PROG_MOSI),
        .PROG_SCK(PROG_SCK),
        .PROG_SPIEN(PROG_SPIEN),
        .PROG_SS(PROG_SS),
        .aclk(aclk),
        .bl_en(bl_en),
        .bleed_en(bleed_en),
        .bsl_dac_en(bsl_dac_en),
        .clamp_ref(clamp_ref),
        .clksel(clksel),
        .di(di),
        .mclk_pause_in(mclk_pause_in),
        .mclk_pause_out(mclk_pause_out),
        .miso_led(miso_led),
        .mosi_led(mosi_led),
        .mosi_out(mosi_out),
        .read_dac_config(read_dac_config),
        .read_dac_en(read_dac_en),
        .read_ref(read_ref),
        .reset(reset),
        .rram_addr(rram_addr),
        .rram_busy_fpga_led(rram_busy_fpga_led),
        .rram_busy_in(rram_busy_in),
        .rram_busy_led(rram_busy_led),
        .rram_busy_out(rram_busy_out),
        .rst_n_led(rst_n_led),
        .rst_n_out(rst_n_out),
        .sa_clk(sa_clk),
        .sa_do(sa_do),
        .sa_en(sa_en),
        .sa_rdy(sa_rdy),
        .sc_led(sc_led),
        .sc_out(sc_out),
        .sclk_led(sclk_led),
        .sclk_out(sclk_out),
        .set_rst(set_rst),
        .sl_en(sl_en),
        .spien_led(spien_led),
        .sw(sw),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p),
        .wl_dac_en(wl_dac_en),
        .wl_en(wl_en));
endmodule
