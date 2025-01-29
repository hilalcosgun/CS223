`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 04:26:49
// Design Name: 
// Module Name: eight_to_one_mux
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


module eight_to_one_mux(
input logic D7,D6,D5,D4,D3,D2,D1,D0,
input logic S2,S1,S0,
output logic Y
    );
    logic y1,y2;
    four_to_one_mux fm(D3,D2,D1,D0,S1,S0,y1);
    four_to_one_mux fm2(D7,D6,D5,D4, S1,S0,y2);
    assign Y = (~S2 & y1) | (S2 & y2); 
endmodule
