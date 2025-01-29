`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 00:48:51
// Design Name: 
// Module Name: full_adder_structural
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


module full_adder_structural(A,B,Cin,S,Cout);
    input A,B,Cin;
	output S,Cout;
    wire s1,c1,c2;
    
    xor xor1(s1,A,B);
    xor xor2(S,s1,Cin);
    and and1(c1,A,B);
    and and2(c2,s1,Cin);
    or or1(Cout,c1,c2);

endmodule
