`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 23:56:42
// Design Name: 
// Module Name: two_bit_adder_structural
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

module two_bit_adder_structural(
input A0,A1,B0,B1,
output S0,S1,Cout
    );
    wire c1;
    full_adder_structural fad1(A0,B0,0,S0,c1);
    full_adder_structural fad2(A1,B1,c1,S1,Cout);

endmodule
