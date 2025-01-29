`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 11:25:40
// Design Name: 
// Module Name: multipler
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


module multipler(
input a1,a0,
output p3,p2,p1,p0
    );
wire c1,c2;   
assign p0 = a0;
full_adder_structural fas1(a1,a0,0,p1,c1);
full_adder_structural fas2(0,a1,c1,p2,c2);
assign p3 = c2;


endmodule


