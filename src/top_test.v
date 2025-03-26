`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2025 04:57:16 PM
// Design Name: 
// Module Name: Top_test
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

`timescale 1ns / 1ps

module Top_test;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg Cin;
    reg clk;
    reg reset;

    // Outputs
    wire [7:0] Sout;
    wire Cout;

    // Instantiate the Top module
    Top uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .clk(clk),
        .reset(reset),
        .Sout(Sout),
        .Cout(Cout)
    );

    // Clock generation: 10ns period (50MHz)
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize inputs
        clk = 0;
        reset = 1;
        A = 8'b00000000;
        B = 8'b00000000;
        Cin = 0;

        // Apply reset
        #10 reset = 0;

        // Test case 1: A = 5, B = 10, Cin = 0
        #10 A = 8'b00000101;  // 5
            B = 8'b00001010;  // 10
            Cin = 0;

        // Test case 2: A = 100, B = 200, Cin = 1
        #20 A = 8'b00000000;  // 100
            B = 8'b00000111;  // 200
            Cin = 1;

        // Test case 3: A = 255, B = 1, Cin = 0 (Checking Carry)
        #20 A = 8'b00000001;  // 255
            B = 8'b00000001;  // 1
            Cin = 0;

        // Test case 4: Random values
        #20 A = 8'b10101010;
            B = 8'b01010101;
            Cin = 1;

        // End simulation
        #50 $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | A=%b | B=%b | Cin=%b | Sout=%b | Cout=%b", 
                 $time, A, B, Cin, Sout, Cout);
    end

endmodule
