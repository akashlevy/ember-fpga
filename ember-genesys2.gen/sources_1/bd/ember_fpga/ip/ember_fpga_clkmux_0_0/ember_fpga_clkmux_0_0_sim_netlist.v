// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jan 30 18:09:14 2023
// Host        : r7cad-tsmc40r running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode funcsim
//               /sim2/akashl/ember-fpga/ember-genesys2.gen/sources_1/bd/ember_fpga/ip/ember_fpga_clkmux_0_0/ember_fpga_clkmux_0_0_sim_netlist.v
// Design      : ember_fpga_clkmux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ember_fpga_clkmux_0_0,clkmux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clkmux,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ember_fpga_clkmux_0_0
   (sclk_in,
    mmcm_clk,
    clksel,
    rram_busy,
    clk_out);
  input sclk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mmcm_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mmcm_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ember_fpga_clk_wiz_0_clk_out1, INSERT_VIP 0" *) input mmcm_clk;
  input clksel;
  input rram_busy;
  output clk_out;

  wire clk_out;
  wire clksel;
  wire mmcm_clk;
  wire rram_busy;
  wire sclk_in;

  ember_fpga_clkmux_0_0_clkmux inst
       (.clk_out(clk_out),
        .clksel(clksel),
        .mmcm_clk(mmcm_clk),
        .rram_busy(rram_busy),
        .sclk_in(sclk_in));
endmodule

(* ORIG_REF_NAME = "clkmux" *) 
module ember_fpga_clkmux_0_0_clkmux
   (clk_out,
    sclk_in,
    mmcm_clk,
    clksel,
    rram_busy);
  output clk_out;
  input sclk_in;
  input mmcm_clk;
  input clksel;
  input rram_busy;

  wire S0;
  wire clk_out;
  wire clksel;
  wire mmcm_clk;
  wire rram_busy;
  wire sclk_in;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFGMUX" *) 
  (* XILINX_TRANSFORM_PINMAP = "S:CE1,CE0" *) 
  BUFGCTRL #(
    .INIT_OUT(0),
    .IS_CE0_INVERTED(1'b1),
    .PRESELECT_I0("TRUE"),
    .PRESELECT_I1("FALSE"),
    .SIM_DEVICE("7SERIES")) 
    BUFGMUX_inst
       (.CE0(S0),
        .CE1(S0),
        .I0(sclk_in),
        .I1(mmcm_clk),
        .IGNORE0(1'b0),
        .IGNORE1(1'b0),
        .O(clk_out),
        .S0(1'b1),
        .S1(1'b1));
  LUT2 #(
    .INIT(4'h8)) 
    BUFGMUX_inst_i_1
       (.I0(clksel),
        .I1(rram_busy),
        .O(S0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
