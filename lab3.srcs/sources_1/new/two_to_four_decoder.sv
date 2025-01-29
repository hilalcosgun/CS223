`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 03:31:36
// Design Name: 
// Module Name: two_to_four_decoder
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


module two_to_four_decoder(
    input logic d0,d1,
    input logic E,
    output logic y0,y1,y2,y3
    );
    assign y0 = E&((~d0)&(~d1));
    assign y2 = E& d1&(~d0);
    assign y1 = E& (~d1)&d0;
    assign y3 = E& d1&d0;
endmodule