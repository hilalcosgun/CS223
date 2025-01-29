`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 03:28:28
// Design Name: 
// Module Name: function_g_tb
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


module function_g_tb(
    );
    logic W1,W2,W3;
    logic Y;
    function_g uud(W1,W2,W3,Y);
    initial begin
        W1 = 0; W2 = 0; W3 = 0; #50;
        W3 = 1; #50;
        W2 = 1; W3 = 0; #50;
        W3 = 1; #50;
        W1 = 1; W2 = 0; W3 = 0; #50;
        W3 = 1; #50;
        W2 = 1; W3 = 0; #50;
        W3 = 1; #50;
    end
endmodule
