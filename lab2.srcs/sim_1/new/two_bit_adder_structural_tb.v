`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 00:01:32
// Design Name: 
// Module Name: two_bit_adder_structural_tb
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


module two_bit_adder_structural_tb;
reg A0,A1,B0,B1;
wire S0,S1,Cout;
two_bit_adder_structural uut (.A0(A0), .A1(A1), .B0(B0), .B1(B1), .S0(S0), .S1(S1), .Cout(Cout));
initial begin
A0 = 0; B0 = 0; A1= 0; B1 = 0; #50;
A0 = 0; B0 = 1; A1= 0; B1 = 0; #50;
A0 = 1; B0 = 0; A1= 0; B1 = 0; #50;
A0 = 1; B0 = 1; A1= 0; B1 = 0; #50;
A0 = 0; B0 = 0; A1= 0; B1 = 1; #50;
A0 = 0; B0 = 1; A1= 0; B1 = 1; #50;
A0 = 1; B0 = 0; A1= 0; B1 = 1; #50;
A0 = 1; B0 = 1; A1= 0; B1 = 1; #50;
A0 = 0; B0 = 0; A1= 1; B1 = 0; #50;
A0 = 0; B0 = 1; A1= 1; B1 = 0; #50;
A0 = 1; B0 = 0; A1= 1; B1 = 0; #50;
A0 = 1; B0 = 1; A1= 1; B1 = 0; #50;
A0 = 0; B0 = 0; A1= 1; B1 = 1; #50;
A0 = 0; B0 = 1; A1= 1; B1 = 1; #50;
A0 = 1; B0 = 0; A1= 1; B1 = 1; #50;
A0 = 1; B0 = 1; A1= 1; B1 = 1; #50;
	end
endmodule


