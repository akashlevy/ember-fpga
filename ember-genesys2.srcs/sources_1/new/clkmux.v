module clkmux (sclk,fastclk,clksel,rram_busy,clk_out);
    // Inputs and outputs
    input sclk;
    input fastclk;
    input clksel;
    input rram_busy;
    output clk_out;
    
    BUFGMUX #(
       .CLK_SEL_TYPE("SYNC")  // ASYNC, SYNC
    )
    BUFGMUX_inst0 (
       .O(clk_out),            // 1-bit output: Clock output
       .I0(sclk),             // 1-bit input: Clock input (S=0)
       .I1(fastclk),          // 1-bit input: Clock input (S=1)
       .S(clksel & rram_busy) // 1-bit input: Clock select
    );
endmodule