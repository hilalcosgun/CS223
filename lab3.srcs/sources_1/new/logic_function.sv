`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 22:11:21
// Design Name: 
// Module Name: logic_function
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


module logic_function(
    input logic A,B,C,D,E,
    output logic Y
        );
    logic k3,k2,k1,k;
    two_to_four_decoder td(E,A,1, k0,k1,k2,k3);
    eight_to_one_mux em(k2,~E,k1,~k1,k3,0,k3,~k0,D,B,C,Y);
endmodule
