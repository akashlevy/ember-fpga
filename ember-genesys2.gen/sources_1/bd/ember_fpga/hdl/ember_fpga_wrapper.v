//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Wed Feb  1 01:40:41 2023
//Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
//Command     : generate_target ember_fpga_wrapper.bd
//Design      : ember_fpga_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ember_fpga_wrapper
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
  output mmcm_led;
  input mosi_in;
  output mosi_led;
  output mosi_out;
  input reset;
  output rram_busy_ember_led;
  output rram_busy_fpga_led;
  input rram_busy_in;
  output rram_busy_out;
  output [0:0]rst_n_out;
  input [47:0]sa_do;
  input sa_rdy;
  input sc_in;
  output sc_led;
  output sc_out;
  input sclk_in;
  output sclk_led;
  output sclk_out;
  input sysclk_n;
  input sysclk_p;
  output trig_in_ack;
  input use_mmcm;
  output use_mmcm_led;

  wire mclk_pause_in;
  wire mclk_pause_out;
  wire miso;
  wire miso_led;
  wire mmcm_led;
  wire mosi_in;
  wire mosi_led;
  wire mosi_out;
  wire reset;
  wire rram_busy_ember_led;
  wire rram_busy_fpga_led;
  wire rram_busy_in;
  wire rram_busy_out;
  wire [0:0]rst_n_out;
  wire [47:0]sa_do;
  wire sa_rdy;
  wire sc_in;
  wire sc_led;
  wire sc_out;
  wire sclk_in;
  wire sclk_led;
  wire sclk_out;
  wire sysclk_n;
  wire sysclk_p;
  wire trig_in_ack;
  wire use_mmcm;
  wire use_mmcm_led;

  ember_fpga ember_fpga_i
       (.mclk_pause_in(mclk_pause_in),
        .mclk_pause_out(mclk_pause_out),
        .miso(miso),
        .miso_led(miso_led),
        .mmcm_led(mmcm_led),
        .mosi_in(mosi_in),
        .mosi_led(mosi_led),
        .mosi_out(mosi_out),
        .reset(reset),
        .rram_busy_ember_led(rram_busy_ember_led),
        .rram_busy_fpga_led(rram_busy_fpga_led),
        .rram_busy_in(rram_busy_in),
        .rram_busy_out(rram_busy_out),
        .rst_n_out(rst_n_out),
        .sa_do(sa_do),
        .sa_rdy(sa_rdy),
        .sc_in(sc_in),
        .sc_led(sc_led),
        .sc_out(sc_out),
        .sclk_in(sclk_in),
        .sclk_led(sclk_led),
        .sclk_out(sclk_out),
        .sysclk_n(sysclk_n),
        .sysclk_p(sysclk_p),
        .trig_in_ack(trig_in_ack),
        .use_mmcm(use_mmcm),
        .use_mmcm_led(use_mmcm_led));
endmodule
