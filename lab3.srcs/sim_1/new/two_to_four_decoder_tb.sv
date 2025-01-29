`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 03:48:42
// Design Name: 
// Module Name: two_to_four_decoder_tb
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


module two_to_four_decoder_tb(
    );
    logic d0,d1;
    logic E;
    logic y0,y1,y2,y3;
    two_to_four_decoder uud(d0,d1,E,y0,y1,y2,y3);
   
    initial begin
        d0 = 0; d1 = 0; E = 0; #50;
        E = 1; #50;
        d1 = 1; E = 0; #50;
        E = 1; #50;
        d0 = 1; d1 = 0; E = 0; #50;
        E = 1; #50;
        d1 = 1; E = 0; #50;
        E = 1; #50;
     end
endmodule
