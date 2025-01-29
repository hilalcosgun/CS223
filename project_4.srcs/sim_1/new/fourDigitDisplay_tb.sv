`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2024 23:13:01
// Design Name: 
// Module Name: fourDigitDisplay_tb
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


module fourDigitDisplay_tb(
    );
 logic clk;
 logic [3:0] digit1; 
 logic [3:0] digit2;
 logic [3:0] digit3;
 logic [3:0] digit4;
 logic [3:0] anode;
 logic [6:0] cathode;
 fourDigitDisplay uut(clk,digit1,digit2,digit3,digit4,anode,cathode);
 always
    begin
    clk = 1; #5; 
    clk = 0; #5;
    end
 initial begin
digit1 = 4'b1001;
digit2 = 4'b1100; 
digit3 = 4'b0011; 
digit4 = 4'b0100;
 #1000;
 digit1 = 4'b1001;
digit2 = 4'b1100; 
digit3 = 4'b0011; 
digit4 = 4'b0100; 
 end
endmodule