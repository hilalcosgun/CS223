`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 00:32:41
// Design Name: 
// Module Name: full_substractor_behavioral
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


module full_substractor_behavioral(A,B,Bin,D,Bout);
    input A,B,Bin;
	output D,Bout;
    reg D,Bout;
    
    always@(A,B,Bin)
        begin
    D <= A^B^Bin;
    Bout <= (~A&B)| (~A&Bin)| (B&Bin);
    end

endmodule
