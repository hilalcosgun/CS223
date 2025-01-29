`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 03:23:56
// Design Name: 
// Module Name: function_g
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


module function_g(
input logic W1,W2,W3,
output logic Y
    );
    logic y0,y1;
    assign y0 = W2 & W3;
    assign y1 = W2 | W3;
    two_to_one_mux tm(y1,y0,W1,Y);
endmodule
