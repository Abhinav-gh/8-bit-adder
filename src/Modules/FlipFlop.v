`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 08:50:45 PM
// Design Name: 
// Module Name: FlipFlop
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


module FlipFlop(
    input D,
    input clk,
    input reset,
    output reg Q
    );
    
    always @(posedge clk)
    begin
        if (reset == 1'b1)
        begin
            Q <= 1'b0;
        end
        else
        begin
            Q <= D;
        end
    end
endmodule
