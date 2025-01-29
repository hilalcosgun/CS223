`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 00:18:01
// Design Name: 
// Module Name: full_adder_behavioral
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


module full_adder_behavioral(A,B,Cin,S,Cout);
    input A,B,Cin;
	output S,Cout;
    reg S,Cout;
    
    always@(A,B,Cin)
        begin
    S <= A^B^Cin;
    Cout<=A&B| A&Cin| B&Cin;
    end

endmodule
