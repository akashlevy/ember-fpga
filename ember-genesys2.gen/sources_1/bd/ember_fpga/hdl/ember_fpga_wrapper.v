//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Tue Feb  7 22:26:45 2023
//Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
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
  input PROG_SCK;
  input PROG_SPIEN;
  input PROG_SS;
  input clksel;
  input mclk_pause_in;
  output mclk_pause_out;
  output miso_led;
  output mosi_led;
  output mosi_out;
  input reset;
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
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;

  wire PROG_MISO;
  wire PROG_MOSI;
  wire PROG_SCK;
  wire PROG_SPIEN;
  wire PROG_SS;
  wire clksel;
  wire mclk_pause_in;
  wire mclk_pause_out;
  wire miso_led;
  wire mosi_led;
  wire mosi_out;
  wire reset;
  wire rram_busy_fpga_led;
  wire rram_busy_in;
  wire rram_busy_led;
  wire rram_busy_out;
  wire rst_n_led;
  wire rst_n_out;
  wire [47:0]sa_do;
  wire sa_rdy;
  wire sc_led;
  wire sc_out;
  wire sclk_led;
  wire sclk_out;
  wire spien_led;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;

  ember_fpga ember_fpga_i
       (.PROG_MISO(PROG_MISO),
        .PROG_MOSI(PROG_MOSI),
        .PROG_SCK(PROG_SCK),
        .PROG_SPIEN(PROG_SPIEN),
        .PROG_SS(PROG_SS),
        .clksel(clksel),
        .mclk_pause_in(mclk_pause_in),
        .mclk_pause_out(mclk_pause_out),
        .miso_led(miso_led),
        .mosi_led(mosi_led),
        .mosi_out(mosi_out),
        .reset(reset),
        .rram_busy_fpga_led(rram_busy_fpga_led),
        .rram_busy_in(rram_busy_in),
        .rram_busy_led(rram_busy_led),
        .rram_busy_out(rram_busy_out),
        .rst_n_led(rst_n_led),
        .rst_n_out(rst_n_out),
        .sa_do(sa_do),
        .sa_rdy(sa_rdy),
        .sc_led(sc_led),
        .sc_out(sc_out),
        .sclk_led(sclk_led),
        .sclk_out(sclk_out),
        .spien_led(spien_led),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
endmodule
