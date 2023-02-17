module addr_loop_counter(
    input clk,
    input rst_n,
    input [15:0] address_start,
    input [15:0] address_stop,
    input [15:0] address_step,
    output reg [15:0] rram_addr
    );
    reg halfclk;
    always @(posedge clk) begin
        if (~rst_n) begin
            halfclk <= 0;
        end
        else begin
            halfclk <= ~halfclk;
        end
        
        if (halfclk) begin
            if ((rram_addr + address_step) < address_stop) begin
                rram_addr <= rram_addr + address_step;
                halfclk <= ~halfclk;
            end
            else begin 
                rram_addr <= address_start;
            end
        end
    end
endmodule
