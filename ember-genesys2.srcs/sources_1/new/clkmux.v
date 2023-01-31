module clkmux (sclk_in,mmcm_clk,clksel,rram_busy,clk_out);
    // Inputs and outputs
    input sclk_in;
    input mmcm_clk;
    input clksel;
    input rram_busy;
    output clk_out;
    
    // BUFGMUX: General Clock Mux Buffer
    //          UltraScale
    // Xilinx HDL Language Template, version 2021.1
    
    BUFGMUX #(
       .CLK_SEL_TYPE("SYNC")  // ASYNC, SYNC
    )
    BUFGMUX_inst (
       .O(clk_out),   // 1-bit output: Clock output
       .I0(sclk_in),  // 1-bit input: Clock input (S=0)
       .I1(mmcm_clk), // 1-bit input: Clock input (S=1)
       .S(clksel & rram_busy)     // 1-bit input: Clock select
    );
    
    // End of BUFGMUX_inst instantiation
endmodule