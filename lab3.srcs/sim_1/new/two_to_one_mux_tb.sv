`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 22:28:27
// Design Name: 
// Module Name: two_to_one_mux_tb
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


module two_to_one_mux_tb(
    );
    logic D0, D1 ,S;
    logic Y;
    two_to_one_mux(D0,D1,S,Y);
    initial begin
        D0 = 0; D1 = 0; S = 0; #100;
        S = 1; #100;
        D1 = 1; S = 0; #100;
        S = 1; #100;
        D0 = 1; D1 = 0; S = 0; #100;
        S = 1; #100;
        D1 = 1; S = 0; #100;
        S = 1; #100;
      end
endmodule

