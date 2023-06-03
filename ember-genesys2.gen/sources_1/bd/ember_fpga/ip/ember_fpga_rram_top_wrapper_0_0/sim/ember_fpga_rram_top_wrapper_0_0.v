// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:rram_top_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ember_fpga_rram_top_wrapper_0_0 (
  mclk_pause,
  rst_n,
  rram_busy,
  sclk,
  sc,
  mosi,
  miso,
  aclk,
  bl_en,
  bleed_en,
  bsl_dac_config,
  bsl_dac_en,
  clamp_ref,
  di,
  read_dac_config,
  read_dac_en,
  read_ref,
  rram_addr,
  sa_clk,
  sa_en,
  set_rst,
  sl_en,
  we,
  wl_dac_config,
  wl_dac_en,
  wl_en,
  sa_do,
  sa_rdy
);

input wire mclk_pause;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
output wire rram_busy;
input wire sclk;
input wire sc;
input wire mosi;
output wire miso;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ember_fpga_rram_top_wrapper_0_0_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
output wire aclk;
output wire bl_en;
output wire bleed_en;
output wire [4 : 0] bsl_dac_config;
output wire bsl_dac_en;
output wire [5 : 0] clamp_ref;
output wire [47 : 0] di;
output wire [3 : 0] read_dac_config;
output wire read_dac_en;
output wire [5 : 0] read_ref;
output wire [15 : 0] rram_addr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sa_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ember_fpga_rram_top_wrapper_0_0_sa_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sa_clk CLK" *)
output wire sa_clk;
output wire sa_en;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME set_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 set_rst RST" *)
output wire set_rst;
output wire sl_en;
output wire we;
output wire [7 : 0] wl_dac_config;
output wire wl_dac_en;
output wire wl_en;
input wire [47 : 0] sa_do;
input wire sa_rdy;

  rram_top_wrapper inst (
    .mclk_pause(mclk_pause),
    .rst_n(rst_n),
    .rram_busy(rram_busy),
    .sclk(sclk),
    .sc(sc),
    .mosi(mosi),
    .miso(miso),
    .aclk(aclk),
    .bl_en(bl_en),
    .bleed_en(bleed_en),
    .bsl_dac_config(bsl_dac_config),
    .bsl_dac_en(bsl_dac_en),
    .clamp_ref(clamp_ref),
    .di(di),
    .read_dac_config(read_dac_config),
    .read_dac_en(read_dac_en),
    .read_ref(read_ref),
    .rram_addr(rram_addr),
    .sa_clk(sa_clk),
    .sa_en(sa_en),
    .set_rst(set_rst),
    .sl_en(sl_en),
    .we(we),
    .wl_dac_config(wl_dac_config),
    .wl_dac_en(wl_dac_en),
    .wl_en(wl_en),
    .sa_do(sa_do),
    .sa_rdy(sa_rdy)
  );
endmodule
