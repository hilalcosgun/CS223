`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 00:43:01
// Design Name: 
// Module Name: full_substractor_structural_tb
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


module full_substractor_structural_tb();
    reg A, B, Bin;
    wire D, Bout;
    full_substractor_structural  uut (.A(A), .B(B), .Bin(Bin), .D(D), .Bout(Bout));
    initial begin
        A = 0; B = 0; Bin = 0; #100;
        A = 0; B = 0; Bin = 1; #100;
        A = 0; B = 1; Bin = 0; #100;
        A = 0; B = 1; Bin = 1; #100;
        A = 1; B = 0; Bin = 0; #100;
        A = 1; B = 0; Bin = 1; #100;
        A = 1; B = 1; Bin = 0; #100;
        A = 1; B = 1; Bin = 1; #100;
    end

endmodule
