`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2023 04:21:17 AM
// Design Name: 
// Module Name: clk_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_mux(
    input sclk,
    input clk_1,
    input clk_2,
    input clk_3,
    input clk_4,
    input clk_5,
    input clk_6,
    input clk_7,
    input [2:0] clk_sel,
    output clk_out
    );
  always @(*) begin
    case(clk_sel)
    3'b000: clk_out=sclk;
    3'b001: clk_out=clk_1;
    3'b010: clk_out=clk_2;
    3'b011: clk_out=clk_3;
    3'b100: clk_out=clk_4;
    3'b101: clk_out=clk_5;
    3'b110: clk_out=clk_7;
    3'b111: clk_out=clk_7;
    default: clk_out=sclk;
    endcase
  end
endmodule
