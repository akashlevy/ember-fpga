-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun Mar 12 01:49:48 2023
-- Host        : r7cad-tsmc40r3 running 64-bit CentOS Linux release 7.6.1810 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /sim2/akashl/ember-fpga/ember-genesys2.gen/sources_1/bd/ember_fpga/ip/ember_fpga_clkmux_0_0/ember_fpga_clkmux_0_0_sim_netlist.vhdl
-- Design      : ember_fpga_clkmux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ember_fpga_clkmux_0_0_clkmux is
  port (
    clk_out : out STD_LOGIC;
    sclk : in STD_LOGIC;
    fastclk : in STD_LOGIC;
    clksel : in STD_LOGIC;
    rram_busy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ember_fpga_clkmux_0_0_clkmux : entity is "clkmux";
end ember_fpga_clkmux_0_0_clkmux;

architecture STRUCTURE of ember_fpga_clkmux_0_0_clkmux is
  signal S0 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFGMUX_inst0 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of BUFGMUX_inst0 : label is "BUFGMUX";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of BUFGMUX_inst0 : label is "S:CE1,CE0";
begin
BUFGMUX_inst0: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      IS_CE0_INVERTED => '1',
      PRESELECT_I0 => true,
      PRESELECT_I1 => false,
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE0 => S0,
      CE1 => S0,
      I0 => sclk,
      I1 => fastclk,
      IGNORE0 => '0',
      IGNORE1 => '0',
      O => clk_out,
      S0 => '1',
      S1 => '1'
    );
BUFGMUX_inst0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => clksel,
      I1 => rram_busy,
      O => S0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ember_fpga_clkmux_0_0 is
  port (
    sclk : in STD_LOGIC;
    fastclk : in STD_LOGIC;
    clksel : in STD_LOGIC;
    rram_busy : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ember_fpga_clkmux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ember_fpga_clkmux_0_0 : entity is "ember_fpga_clkmux_0_0,clkmux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ember_fpga_clkmux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ember_fpga_clkmux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ember_fpga_clkmux_0_0 : entity is "clkmux,Vivado 2020.2";
end ember_fpga_clkmux_0_0;

architecture STRUCTURE of ember_fpga_clkmux_0_0 is
begin
inst: entity work.ember_fpga_clkmux_0_0_clkmux
     port map (
      clk_out => clk_out,
      clksel => clksel,
      fastclk => fastclk,
      rram_busy => rram_busy,
      sclk => sclk
    );
end STRUCTURE;
