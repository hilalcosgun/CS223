`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 00:14:04
// Design Name: 
// Module Name: full_substractor_structural
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


module full_substractor_structural(A,B,Bin,D,Bout);
    input A,B,Bin;
	output D,Bout;
    wire d1,b1,b2,b3,b4;
    
    xor xor1(d1,A,B);
    xor xor2(D,d1,Bin);
    not not1(b1,A);
    not not2(b2,d1);
    and and1(b3,B,b1);
    and and2(b4,Bin,b2);
    or or1(Bout,b3,b4);

endmodule
