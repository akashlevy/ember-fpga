-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Oct 20 05:47:31 2023
-- Host        : r7cad-tsmc40r2 running 64-bit CentOS Linux release 7.6.1810 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /sim2/akashl/ember-fpga/ember-genesys2.gen/sources_1/bd/ember_fpga/ip/ember_fpga_clkmux_0_0/ember_fpga_clkmux_0_0_stub.vhdl
-- Design      : ember_fpga_clkmux_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ember_fpga_clkmux_0_0 is
  Port ( 
    sclk : in STD_LOGIC;
    fastclk : in STD_LOGIC;
    clksel : in STD_LOGIC;
    rram_busy : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );

end ember_fpga_clkmux_0_0;

architecture stub of ember_fpga_clkmux_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sclk,fastclk,clksel,rram_busy,clk_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clkmux,Vivado 2020.2";
begin
end;
