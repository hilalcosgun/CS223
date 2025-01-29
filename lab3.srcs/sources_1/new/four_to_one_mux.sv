`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 22:38:45
// Design Name: 
// Module Name: four_to_one_mux
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


module four_to_one_mux(
input logic  D3,D2,D1,D0, 
input logic S1,S0,
output logic Y
    );
logic y1,y0;
two_to_one_mux tm(D3,D2,S0,y0);
two_to_one_mux tm1(D1,D0,S0,y1);
two_to_one_mux tm2(y0,y1,S1,Y); 
endmodule
