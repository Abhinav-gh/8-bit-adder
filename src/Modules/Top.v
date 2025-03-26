`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2025 11:00:44 AM
// Design Name: 
// Module Name: Top
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


module Top(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    input clk,
    input reset,
    output [7:0] Sout,
    output Cout
    );
    
    wire [7:0] A_reg, B_reg;
    
    Register R1(A, clk, reset, A_reg);
    Register R2(B, clk, reset, B_reg);
    
    wire [7:0] Out;
    wire carryout;
    
    RippleCarryAdder RCA(A_reg, B_reg, Cin, Out, carryout);
    
    Register Rout(Out, clk, reset, Sout);
    FlipFlop Fout(carryout, clk, reset, Cout);
endmodule
