`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 11:56:56
// Design Name: 
// Module Name: multipler_tb
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


module multipler_tb();
reg a1,a0;
wire p3,p2,p1,p0;
multipler uut(.a1(a1),.a0(a0),.p3(p3),.p2(p2),.p1(p1),.p0(p0));
initial begin
a1 = 0; a0= 0; #100;
a1 = 0; a0 = 1; #100;
a1 = 1; a0 = 0; #100;
a1 = 1; a0= 1; #100;
end
endmodule
