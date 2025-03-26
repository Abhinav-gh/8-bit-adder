`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 09:16:49 PM
// Design Name: 
// Module Name: RippleCarryAdder
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


module RippleCarryAdder(
    input [7:0] A,
    input [7:0] B,
    input Cin,
    output [7:0] Out,
    output Cout
    );
    
    
    wire C1;
    Adder A1(A[0], B[0], Cin, Out[0], C1);
    
    wire C2;
    Adder A2(A[1], B[1], C1, Out[1], C2);
    
    wire C3;
    Adder A3(A[2], B[2], C2, Out[2], C3);
   
    wire C4;
    Adder A4(A[3], B[3], C3, Out[3], C4);
    
    wire C5;
    Adder A5(A[4], B[4], C4, Out[4], C5);
    
    wire C6;
    Adder A6(A[5], B[5], C5, Out[5], C6);
    
    wire C7;
    Adder A7(A[6], B[6], C6, Out[6], C7);
    
    Adder A8(A[7], B[7], C7, Out[7], Cout);
endmodule
