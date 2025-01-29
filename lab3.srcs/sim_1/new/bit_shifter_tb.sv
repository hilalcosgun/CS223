`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 02:36:47
// Design Name: 
// Module Name: bit_shifter_tb
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


module bit_shifter_tb(
    );
    logic w3, w2, w1, w0, shift;
    logic y3, y2, y1, y0, k;
    bit_Shifter uud (w3,w2,w1,w0,shift,y3,y2,y1,y0,k);
    initial begin
        shift = 0; w3 = 0; w2 = 0; w1 = 0; w0 = 0; #20;
        w0 = 1; #20;
        w1 = 1; w0 = 0; #20;
        w0 = 1; #20;
        w2 = 1; w1 = 0; w0 = 0; #20;
        w0 = 1; #20;
        w1 = 1; w0 = 0; #20;
        w0 = 1; #20;
        w3 = 1; w2 = 0; w1 = 0; w0 = 0; #20;
        w0 = 1; #20;
        w1 = 1; w0 = 0; #20;
        w0 = 1; #20;
        w2 = 1; w1 = 0; w0 = 0; #20;
        w0 = 1; #20;
        w1 = 1; w0 = 0; #20;
        w0 = 1; #20;
        shift = 1; w3 = 0; w2 = 0; w1 = 0; w0 = 0; #20;
        w0 = 1; #20;
        w1 = 1; w0 = 0; #20;
        w0 = 1; #20;
        w2 = 1; w1 = 0; w0 = 0; #20;
        w0 = 1; #20;
        w1 = 1; w0 = 0; #20;
        w0 = 1; #20;
        w3 = 1; w2 = 0; w1 = 0; w0 = 0; #20;
        w0 = 1; #20;
        w1 = 1; w0 = 0; #20;
        w0 = 1; #20;
        w2 = 1; w1 = 0; w0 = 0; #20;
        w0 = 1; #20;
        w1 = 1; w0 = 0; #20;
        w0 = 1; #20;
    end
endmodule
