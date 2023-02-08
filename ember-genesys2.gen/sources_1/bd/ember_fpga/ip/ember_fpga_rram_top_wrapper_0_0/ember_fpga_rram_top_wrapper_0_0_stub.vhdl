-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Feb  7 12:54:44 2023
-- Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /sim2/akashl/ember-fpga/ember-genesys2.gen/sources_1/bd/ember_fpga/ip/ember_fpga_rram_top_wrapper_0_0/ember_fpga_rram_top_wrapper_0_0_stub.vhdl
-- Design      : ember_fpga_rram_top_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ember_fpga_rram_top_wrapper_0_0 is
  Port ( 
    mclk_pause : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    rram_busy : out STD_LOGIC;
    sclk : in STD_LOGIC;
    sc : in STD_LOGIC;
    mosi : in STD_LOGIC;
    miso : out STD_LOGIC;
    sa_do : in STD_LOGIC_VECTOR ( 47 downto 0 );
    sa_rdy : in STD_LOGIC
  );

end ember_fpga_rram_top_wrapper_0_0;

architecture stub of ember_fpga_rram_top_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mclk_pause,rst_n,rram_busy,sclk,sc,mosi,miso,sa_do[47:0],sa_rdy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rram_top_wrapper,Vivado 2020.2";
begin
end;
