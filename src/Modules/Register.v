`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 08:54:37 PM
// Design Name: 
// Module Name: Register
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


module Register(
    input [7:0] Din,
    input clk,
    input reset,
    output [7:0] Dout
    );
    
    FlipFlop F1(Din[7], clk, reset, Dout[7]);
    FlipFlop F2(Din[6], clk, reset, Dout[6]);
    FlipFlop F3(Din[5], clk, reset, Dout[5]);
    FlipFlop F4(Din[4], clk, reset, Dout[4]);
    FlipFlop F5(Din[3], clk, reset, Dout[3]);
    FlipFlop F6(Din[2], clk, reset, Dout[2]);
    FlipFlop F7(Din[1], clk, reset, Dout[1]);
    FlipFlop F8(Din[0], clk, reset, Dout[0]);
endmodule
