-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Feb 17 11:32:39 2023
-- Host        : r7cad-tsmc40r3 running 64-bit CentOS Linux release 7.6.1810 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /sim2/akashl/ember-fpga/ember-genesys2.gen/sources_1/bd/ember_fpga/ip/ember_fpga_addr_loop_counter_0_0/ember_fpga_addr_loop_counter_0_0_sim_netlist.vhdl
-- Design      : ember_fpga_addr_loop_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ember_fpga_addr_loop_counter_0_0_addr_loop_counter is
  port (
    rram_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    address_step : in STD_LOGIC_VECTOR ( 15 downto 0 );
    address_start : in STD_LOGIC_VECTOR ( 15 downto 0 );
    address_stop : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ember_fpga_addr_loop_counter_0_0_addr_loop_counter : entity is "addr_loop_counter";
end ember_fpga_addr_loop_counter_0_0_addr_loop_counter;

architecture STRUCTURE of ember_fpga_addr_loop_counter_0_0_addr_loop_counter is
  signal \halfclk1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_n_0\ : STD_LOGIC;
  signal \halfclk1_carry__0_n_1\ : STD_LOGIC;
  signal \halfclk1_carry__0_n_2\ : STD_LOGIC;
  signal \halfclk1_carry__0_n_3\ : STD_LOGIC;
  signal halfclk1_carry_i_1_n_0 : STD_LOGIC;
  signal halfclk1_carry_i_2_n_0 : STD_LOGIC;
  signal halfclk1_carry_i_3_n_0 : STD_LOGIC;
  signal halfclk1_carry_i_4_n_0 : STD_LOGIC;
  signal halfclk1_carry_i_5_n_0 : STD_LOGIC;
  signal halfclk1_carry_i_6_n_0 : STD_LOGIC;
  signal halfclk1_carry_i_7_n_0 : STD_LOGIC;
  signal halfclk1_carry_i_8_n_0 : STD_LOGIC;
  signal halfclk1_carry_n_0 : STD_LOGIC;
  signal halfclk1_carry_n_1 : STD_LOGIC;
  signal halfclk1_carry_n_2 : STD_LOGIC;
  signal halfclk1_carry_n_3 : STD_LOGIC;
  signal halfclk2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \halfclk2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__0_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__0_n_1\ : STD_LOGIC;
  signal \halfclk2_carry__0_n_2\ : STD_LOGIC;
  signal \halfclk2_carry__0_n_3\ : STD_LOGIC;
  signal \halfclk2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__1_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__1_n_1\ : STD_LOGIC;
  signal \halfclk2_carry__1_n_2\ : STD_LOGIC;
  signal \halfclk2_carry__1_n_3\ : STD_LOGIC;
  signal \halfclk2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \halfclk2_carry__2_n_1\ : STD_LOGIC;
  signal \halfclk2_carry__2_n_2\ : STD_LOGIC;
  signal \halfclk2_carry__2_n_3\ : STD_LOGIC;
  signal halfclk2_carry_i_1_n_0 : STD_LOGIC;
  signal halfclk2_carry_i_2_n_0 : STD_LOGIC;
  signal halfclk2_carry_i_3_n_0 : STD_LOGIC;
  signal halfclk2_carry_i_4_n_0 : STD_LOGIC;
  signal halfclk2_carry_n_0 : STD_LOGIC;
  signal halfclk2_carry_n_1 : STD_LOGIC;
  signal halfclk2_carry_n_2 : STD_LOGIC;
  signal halfclk2_carry_n_3 : STD_LOGIC;
  signal \halfclk__0\ : STD_LOGIC;
  signal halfclk_n_0 : STD_LOGIC;
  signal \^rram_addr\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rram_addr[11]_i_2_n_0\ : STD_LOGIC;
  signal \rram_addr[11]_i_3_n_0\ : STD_LOGIC;
  signal \rram_addr[11]_i_4_n_0\ : STD_LOGIC;
  signal \rram_addr[11]_i_5_n_0\ : STD_LOGIC;
  signal \rram_addr[11]_i_6_n_0\ : STD_LOGIC;
  signal \rram_addr[11]_i_7_n_0\ : STD_LOGIC;
  signal \rram_addr[11]_i_8_n_0\ : STD_LOGIC;
  signal \rram_addr[11]_i_9_n_0\ : STD_LOGIC;
  signal \rram_addr[15]_i_2_n_0\ : STD_LOGIC;
  signal \rram_addr[15]_i_3_n_0\ : STD_LOGIC;
  signal \rram_addr[15]_i_4_n_0\ : STD_LOGIC;
  signal \rram_addr[15]_i_5_n_0\ : STD_LOGIC;
  signal \rram_addr[15]_i_6_n_0\ : STD_LOGIC;
  signal \rram_addr[15]_i_7_n_0\ : STD_LOGIC;
  signal \rram_addr[15]_i_8_n_0\ : STD_LOGIC;
  signal \rram_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \rram_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \rram_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \rram_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \rram_addr[3]_i_6_n_0\ : STD_LOGIC;
  signal \rram_addr[3]_i_7_n_0\ : STD_LOGIC;
  signal \rram_addr[3]_i_8_n_0\ : STD_LOGIC;
  signal \rram_addr[3]_i_9_n_0\ : STD_LOGIC;
  signal \rram_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \rram_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \rram_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \rram_addr[7]_i_5_n_0\ : STD_LOGIC;
  signal \rram_addr[7]_i_6_n_0\ : STD_LOGIC;
  signal \rram_addr[7]_i_7_n_0\ : STD_LOGIC;
  signal \rram_addr[7]_i_8_n_0\ : STD_LOGIC;
  signal \rram_addr[7]_i_9_n_0\ : STD_LOGIC;
  signal \rram_addr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \rram_addr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \rram_addr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \rram_addr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \rram_addr_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \rram_addr_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \rram_addr_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \rram_addr_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \rram_addr_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \rram_addr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \rram_addr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \rram_addr_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \rram_addr_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \rram_addr_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \rram_addr_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \rram_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \rram_addr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \rram_addr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \rram_addr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \rram_addr_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \rram_addr_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \rram_addr_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \rram_addr_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \rram_addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \rram_addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \rram_addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \rram_addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \rram_addr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \rram_addr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \rram_addr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \rram_addr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal NLW_halfclk1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_halfclk1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_halfclk2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rram_addr_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of halfclk1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \halfclk1_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of halfclk2_carry : label is 35;
  attribute ADDER_THRESHOLD of \halfclk2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \halfclk2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \halfclk2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \rram_addr_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rram_addr_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rram_addr_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rram_addr_reg[7]_i_1\ : label is 11;
begin
  rram_addr(15 downto 0) <= \^rram_addr\(15 downto 0);
halfclk: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \halfclk__0\,
      I1 => rst_n,
      O => halfclk_n_0
    );
halfclk1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => halfclk1_carry_n_0,
      CO(2) => halfclk1_carry_n_1,
      CO(1) => halfclk1_carry_n_2,
      CO(0) => halfclk1_carry_n_3,
      CYINIT => '0',
      DI(3) => halfclk1_carry_i_1_n_0,
      DI(2) => halfclk1_carry_i_2_n_0,
      DI(1) => halfclk1_carry_i_3_n_0,
      DI(0) => halfclk1_carry_i_4_n_0,
      O(3 downto 0) => NLW_halfclk1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => halfclk1_carry_i_5_n_0,
      S(2) => halfclk1_carry_i_6_n_0,
      S(1) => halfclk1_carry_i_7_n_0,
      S(0) => halfclk1_carry_i_8_n_0
    );
\halfclk1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => halfclk1_carry_n_0,
      CO(3) => \halfclk1_carry__0_n_0\,
      CO(2) => \halfclk1_carry__0_n_1\,
      CO(1) => \halfclk1_carry__0_n_2\,
      CO(0) => \halfclk1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \halfclk1_carry__0_i_1_n_0\,
      DI(2) => \halfclk1_carry__0_i_2_n_0\,
      DI(1) => \halfclk1_carry__0_i_3_n_0\,
      DI(0) => \halfclk1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_halfclk1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \halfclk1_carry__0_i_5_n_0\,
      S(2) => \halfclk1_carry__0_i_6_n_0\,
      S(1) => \halfclk1_carry__0_i_7_n_0\,
      S(0) => \halfclk1_carry__0_i_8_n_0\
    );
\halfclk1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => address_stop(14),
      I1 => halfclk2(14),
      I2 => halfclk2(15),
      I3 => address_stop(15),
      O => \halfclk1_carry__0_i_1_n_0\
    );
\halfclk1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => address_stop(12),
      I1 => halfclk2(12),
      I2 => halfclk2(13),
      I3 => address_stop(13),
      O => \halfclk1_carry__0_i_2_n_0\
    );
\halfclk1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => address_stop(10),
      I1 => halfclk2(10),
      I2 => halfclk2(11),
      I3 => address_stop(11),
      O => \halfclk1_carry__0_i_3_n_0\
    );
\halfclk1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => address_stop(8),
      I1 => halfclk2(8),
      I2 => halfclk2(9),
      I3 => address_stop(9),
      O => \halfclk1_carry__0_i_4_n_0\
    );
\halfclk1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => address_stop(14),
      I1 => halfclk2(14),
      I2 => address_stop(15),
      I3 => halfclk2(15),
      O => \halfclk1_carry__0_i_5_n_0\
    );
\halfclk1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => address_stop(12),
      I1 => halfclk2(12),
      I2 => address_stop(13),
      I3 => halfclk2(13),
      O => \halfclk1_carry__0_i_6_n_0\
    );
\halfclk1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => address_stop(10),
      I1 => halfclk2(10),
      I2 => address_stop(11),
      I3 => halfclk2(11),
      O => \halfclk1_carry__0_i_7_n_0\
    );
\halfclk1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => address_stop(8),
      I1 => halfclk2(8),
      I2 => address_stop(9),
      I3 => halfclk2(9),
      O => \halfclk1_carry__0_i_8_n_0\
    );
halfclk1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => address_stop(6),
      I1 => halfclk2(6),
      I2 => halfclk2(7),
      I3 => address_stop(7),
      O => halfclk1_carry_i_1_n_0
    );
halfclk1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => address_stop(4),
      I1 => halfclk2(4),
      I2 => halfclk2(5),
      I3 => address_stop(5),
      O => halfclk1_carry_i_2_n_0
    );
halfclk1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => address_stop(2),
      I1 => halfclk2(2),
      I2 => halfclk2(3),
      I3 => address_stop(3),
      O => halfclk1_carry_i_3_n_0
    );
halfclk1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => address_stop(0),
      I1 => halfclk2(0),
      I2 => halfclk2(1),
      I3 => address_stop(1),
      O => halfclk1_carry_i_4_n_0
    );
halfclk1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => address_stop(6),
      I1 => halfclk2(6),
      I2 => address_stop(7),
      I3 => halfclk2(7),
      O => halfclk1_carry_i_5_n_0
    );
halfclk1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => address_stop(4),
      I1 => halfclk2(4),
      I2 => address_stop(5),
      I3 => halfclk2(5),
      O => halfclk1_carry_i_6_n_0
    );
halfclk1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => address_stop(2),
      I1 => halfclk2(2),
      I2 => address_stop(3),
      I3 => halfclk2(3),
      O => halfclk1_carry_i_7_n_0
    );
halfclk1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => address_stop(0),
      I1 => halfclk2(0),
      I2 => address_stop(1),
      I3 => halfclk2(1),
      O => halfclk1_carry_i_8_n_0
    );
halfclk2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => halfclk2_carry_n_0,
      CO(2) => halfclk2_carry_n_1,
      CO(1) => halfclk2_carry_n_2,
      CO(0) => halfclk2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \^rram_addr\(3 downto 0),
      O(3 downto 0) => halfclk2(3 downto 0),
      S(3) => halfclk2_carry_i_1_n_0,
      S(2) => halfclk2_carry_i_2_n_0,
      S(1) => halfclk2_carry_i_3_n_0,
      S(0) => halfclk2_carry_i_4_n_0
    );
\halfclk2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => halfclk2_carry_n_0,
      CO(3) => \halfclk2_carry__0_n_0\,
      CO(2) => \halfclk2_carry__0_n_1\,
      CO(1) => \halfclk2_carry__0_n_2\,
      CO(0) => \halfclk2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^rram_addr\(7 downto 4),
      O(3 downto 0) => halfclk2(7 downto 4),
      S(3) => \halfclk2_carry__0_i_1_n_0\,
      S(2) => \halfclk2_carry__0_i_2_n_0\,
      S(1) => \halfclk2_carry__0_i_3_n_0\,
      S(0) => \halfclk2_carry__0_i_4_n_0\
    );
\halfclk2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(7),
      I1 => address_step(7),
      O => \halfclk2_carry__0_i_1_n_0\
    );
\halfclk2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(6),
      I1 => address_step(6),
      O => \halfclk2_carry__0_i_2_n_0\
    );
\halfclk2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(5),
      I1 => address_step(5),
      O => \halfclk2_carry__0_i_3_n_0\
    );
\halfclk2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(4),
      I1 => address_step(4),
      O => \halfclk2_carry__0_i_4_n_0\
    );
\halfclk2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \halfclk2_carry__0_n_0\,
      CO(3) => \halfclk2_carry__1_n_0\,
      CO(2) => \halfclk2_carry__1_n_1\,
      CO(1) => \halfclk2_carry__1_n_2\,
      CO(0) => \halfclk2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^rram_addr\(11 downto 8),
      O(3 downto 0) => halfclk2(11 downto 8),
      S(3) => \halfclk2_carry__1_i_1_n_0\,
      S(2) => \halfclk2_carry__1_i_2_n_0\,
      S(1) => \halfclk2_carry__1_i_3_n_0\,
      S(0) => \halfclk2_carry__1_i_4_n_0\
    );
\halfclk2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(11),
      I1 => address_step(11),
      O => \halfclk2_carry__1_i_1_n_0\
    );
\halfclk2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(10),
      I1 => address_step(10),
      O => \halfclk2_carry__1_i_2_n_0\
    );
\halfclk2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(9),
      I1 => address_step(9),
      O => \halfclk2_carry__1_i_3_n_0\
    );
\halfclk2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(8),
      I1 => address_step(8),
      O => \halfclk2_carry__1_i_4_n_0\
    );
\halfclk2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \halfclk2_carry__1_n_0\,
      CO(3) => \NLW_halfclk2_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \halfclk2_carry__2_n_1\,
      CO(1) => \halfclk2_carry__2_n_2\,
      CO(0) => \halfclk2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^rram_addr\(14 downto 12),
      O(3 downto 0) => halfclk2(15 downto 12),
      S(3) => \halfclk2_carry__2_i_1_n_0\,
      S(2) => \halfclk2_carry__2_i_2_n_0\,
      S(1) => \halfclk2_carry__2_i_3_n_0\,
      S(0) => \halfclk2_carry__2_i_4_n_0\
    );
\halfclk2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(15),
      I1 => address_step(15),
      O => \halfclk2_carry__2_i_1_n_0\
    );
\halfclk2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(14),
      I1 => address_step(14),
      O => \halfclk2_carry__2_i_2_n_0\
    );
\halfclk2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(13),
      I1 => address_step(13),
      O => \halfclk2_carry__2_i_3_n_0\
    );
\halfclk2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(12),
      I1 => address_step(12),
      O => \halfclk2_carry__2_i_4_n_0\
    );
halfclk2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(3),
      I1 => address_step(3),
      O => halfclk2_carry_i_1_n_0
    );
halfclk2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(2),
      I1 => address_step(2),
      O => halfclk2_carry_i_2_n_0
    );
halfclk2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(1),
      I1 => address_step(1),
      O => halfclk2_carry_i_3_n_0
    );
halfclk2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rram_addr\(0),
      I1 => address_step(0),
      O => halfclk2_carry_i_4_n_0
    );
halfclk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => halfclk_n_0,
      Q => \halfclk__0\,
      R => '0'
    );
\rram_addr[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(11),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[11]_i_2_n_0\
    );
\rram_addr[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(10),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[11]_i_3_n_0\
    );
\rram_addr[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(9),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[11]_i_4_n_0\
    );
\rram_addr[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(8),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[11]_i_5_n_0\
    );
\rram_addr[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(11),
      I1 => address_start(11),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(11),
      O => \rram_addr[11]_i_6_n_0\
    );
\rram_addr[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(10),
      I1 => address_start(10),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(10),
      O => \rram_addr[11]_i_7_n_0\
    );
\rram_addr[11]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(9),
      I1 => address_start(9),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(9),
      O => \rram_addr[11]_i_8_n_0\
    );
\rram_addr[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(8),
      I1 => address_start(8),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(8),
      O => \rram_addr[11]_i_9_n_0\
    );
\rram_addr[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(14),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[15]_i_2_n_0\
    );
\rram_addr[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(13),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[15]_i_3_n_0\
    );
\rram_addr[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(12),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[15]_i_4_n_0\
    );
\rram_addr[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(15),
      I1 => address_start(15),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(15),
      O => \rram_addr[15]_i_5_n_0\
    );
\rram_addr[15]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(14),
      I1 => address_start(14),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(14),
      O => \rram_addr[15]_i_6_n_0\
    );
\rram_addr[15]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(13),
      I1 => address_start(13),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(13),
      O => \rram_addr[15]_i_7_n_0\
    );
\rram_addr[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(12),
      I1 => address_start(12),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(12),
      O => \rram_addr[15]_i_8_n_0\
    );
\rram_addr[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(3),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[3]_i_2_n_0\
    );
\rram_addr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(2),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[3]_i_3_n_0\
    );
\rram_addr[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(1),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[3]_i_4_n_0\
    );
\rram_addr[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(0),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[3]_i_5_n_0\
    );
\rram_addr[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(3),
      I1 => address_start(3),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(3),
      O => \rram_addr[3]_i_6_n_0\
    );
\rram_addr[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(2),
      I1 => address_start(2),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(2),
      O => \rram_addr[3]_i_7_n_0\
    );
\rram_addr[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(1),
      I1 => address_start(1),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(1),
      O => \rram_addr[3]_i_8_n_0\
    );
\rram_addr[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(0),
      I1 => address_start(0),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(0),
      O => \rram_addr[3]_i_9_n_0\
    );
\rram_addr[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(7),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[7]_i_2_n_0\
    );
\rram_addr[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(6),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[7]_i_3_n_0\
    );
\rram_addr[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(5),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[7]_i_4_n_0\
    );
\rram_addr[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => address_step(4),
      I1 => \halfclk1_carry__0_n_0\,
      O => \rram_addr[7]_i_5_n_0\
    );
\rram_addr[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(7),
      I1 => address_start(7),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(7),
      O => \rram_addr[7]_i_6_n_0\
    );
\rram_addr[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(6),
      I1 => address_start(6),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(6),
      O => \rram_addr[7]_i_7_n_0\
    );
\rram_addr[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(5),
      I1 => address_start(5),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(5),
      O => \rram_addr[7]_i_8_n_0\
    );
\rram_addr[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5CAC"
    )
        port map (
      I0 => address_step(4),
      I1 => address_start(4),
      I2 => \halfclk1_carry__0_n_0\,
      I3 => \^rram_addr\(4),
      O => \rram_addr[7]_i_9_n_0\
    );
\rram_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[3]_i_1_n_7\,
      Q => \^rram_addr\(0),
      R => '0'
    );
\rram_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[11]_i_1_n_5\,
      Q => \^rram_addr\(10),
      R => '0'
    );
\rram_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[11]_i_1_n_4\,
      Q => \^rram_addr\(11),
      R => '0'
    );
\rram_addr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rram_addr_reg[7]_i_1_n_0\,
      CO(3) => \rram_addr_reg[11]_i_1_n_0\,
      CO(2) => \rram_addr_reg[11]_i_1_n_1\,
      CO(1) => \rram_addr_reg[11]_i_1_n_2\,
      CO(0) => \rram_addr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \rram_addr[11]_i_2_n_0\,
      DI(2) => \rram_addr[11]_i_3_n_0\,
      DI(1) => \rram_addr[11]_i_4_n_0\,
      DI(0) => \rram_addr[11]_i_5_n_0\,
      O(3) => \rram_addr_reg[11]_i_1_n_4\,
      O(2) => \rram_addr_reg[11]_i_1_n_5\,
      O(1) => \rram_addr_reg[11]_i_1_n_6\,
      O(0) => \rram_addr_reg[11]_i_1_n_7\,
      S(3) => \rram_addr[11]_i_6_n_0\,
      S(2) => \rram_addr[11]_i_7_n_0\,
      S(1) => \rram_addr[11]_i_8_n_0\,
      S(0) => \rram_addr[11]_i_9_n_0\
    );
\rram_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[15]_i_1_n_7\,
      Q => \^rram_addr\(12),
      R => '0'
    );
\rram_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[15]_i_1_n_6\,
      Q => \^rram_addr\(13),
      R => '0'
    );
\rram_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[15]_i_1_n_5\,
      Q => \^rram_addr\(14),
      R => '0'
    );
\rram_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[15]_i_1_n_4\,
      Q => \^rram_addr\(15),
      R => '0'
    );
\rram_addr_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rram_addr_reg[11]_i_1_n_0\,
      CO(3) => \NLW_rram_addr_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rram_addr_reg[15]_i_1_n_1\,
      CO(1) => \rram_addr_reg[15]_i_1_n_2\,
      CO(0) => \rram_addr_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rram_addr[15]_i_2_n_0\,
      DI(1) => \rram_addr[15]_i_3_n_0\,
      DI(0) => \rram_addr[15]_i_4_n_0\,
      O(3) => \rram_addr_reg[15]_i_1_n_4\,
      O(2) => \rram_addr_reg[15]_i_1_n_5\,
      O(1) => \rram_addr_reg[15]_i_1_n_6\,
      O(0) => \rram_addr_reg[15]_i_1_n_7\,
      S(3) => \rram_addr[15]_i_5_n_0\,
      S(2) => \rram_addr[15]_i_6_n_0\,
      S(1) => \rram_addr[15]_i_7_n_0\,
      S(0) => \rram_addr[15]_i_8_n_0\
    );
\rram_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[3]_i_1_n_6\,
      Q => \^rram_addr\(1),
      R => '0'
    );
\rram_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[3]_i_1_n_5\,
      Q => \^rram_addr\(2),
      R => '0'
    );
\rram_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[3]_i_1_n_4\,
      Q => \^rram_addr\(3),
      R => '0'
    );
\rram_addr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rram_addr_reg[3]_i_1_n_0\,
      CO(2) => \rram_addr_reg[3]_i_1_n_1\,
      CO(1) => \rram_addr_reg[3]_i_1_n_2\,
      CO(0) => \rram_addr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \rram_addr[3]_i_2_n_0\,
      DI(2) => \rram_addr[3]_i_3_n_0\,
      DI(1) => \rram_addr[3]_i_4_n_0\,
      DI(0) => \rram_addr[3]_i_5_n_0\,
      O(3) => \rram_addr_reg[3]_i_1_n_4\,
      O(2) => \rram_addr_reg[3]_i_1_n_5\,
      O(1) => \rram_addr_reg[3]_i_1_n_6\,
      O(0) => \rram_addr_reg[3]_i_1_n_7\,
      S(3) => \rram_addr[3]_i_6_n_0\,
      S(2) => \rram_addr[3]_i_7_n_0\,
      S(1) => \rram_addr[3]_i_8_n_0\,
      S(0) => \rram_addr[3]_i_9_n_0\
    );
\rram_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[7]_i_1_n_7\,
      Q => \^rram_addr\(4),
      R => '0'
    );
\rram_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[7]_i_1_n_6\,
      Q => \^rram_addr\(5),
      R => '0'
    );
\rram_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[7]_i_1_n_5\,
      Q => \^rram_addr\(6),
      R => '0'
    );
\rram_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[7]_i_1_n_4\,
      Q => \^rram_addr\(7),
      R => '0'
    );
\rram_addr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rram_addr_reg[3]_i_1_n_0\,
      CO(3) => \rram_addr_reg[7]_i_1_n_0\,
      CO(2) => \rram_addr_reg[7]_i_1_n_1\,
      CO(1) => \rram_addr_reg[7]_i_1_n_2\,
      CO(0) => \rram_addr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \rram_addr[7]_i_2_n_0\,
      DI(2) => \rram_addr[7]_i_3_n_0\,
      DI(1) => \rram_addr[7]_i_4_n_0\,
      DI(0) => \rram_addr[7]_i_5_n_0\,
      O(3) => \rram_addr_reg[7]_i_1_n_4\,
      O(2) => \rram_addr_reg[7]_i_1_n_5\,
      O(1) => \rram_addr_reg[7]_i_1_n_6\,
      O(0) => \rram_addr_reg[7]_i_1_n_7\,
      S(3) => \rram_addr[7]_i_6_n_0\,
      S(2) => \rram_addr[7]_i_7_n_0\,
      S(1) => \rram_addr[7]_i_8_n_0\,
      S(0) => \rram_addr[7]_i_9_n_0\
    );
\rram_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[11]_i_1_n_7\,
      Q => \^rram_addr\(8),
      R => '0'
    );
\rram_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \halfclk__0\,
      D => \rram_addr_reg[11]_i_1_n_6\,
      Q => \^rram_addr\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ember_fpga_addr_loop_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    address_start : in STD_LOGIC_VECTOR ( 15 downto 0 );
    address_stop : in STD_LOGIC_VECTOR ( 15 downto 0 );
    address_step : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rram_addr : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ember_fpga_addr_loop_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ember_fpga_addr_loop_counter_0_0 : entity is "ember_fpga_addr_loop_counter_0_0,addr_loop_counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ember_fpga_addr_loop_counter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ember_fpga_addr_loop_counter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ember_fpga_addr_loop_counter_0_0 : entity is "addr_loop_counter,Vivado 2020.2";
end ember_fpga_addr_loop_counter_0_0;

architecture STRUCTURE of ember_fpga_addr_loop_counter_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ember_fpga_clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ember_fpga_addr_loop_counter_0_0_addr_loop_counter
     port map (
      address_start(15 downto 0) => address_start(15 downto 0),
      address_step(15 downto 0) => address_step(15 downto 0),
      address_stop(15 downto 0) => address_stop(15 downto 0),
      clk => clk,
      rram_addr(15 downto 0) => rram_addr(15 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
