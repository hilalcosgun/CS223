`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 22:28:06
// Design Name: 
// Module Name: logic_function_tb
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


module logic_function_tb(
    );
    logic A,B,C,D,E;
    logic  Y;
    logic_function uud (A,B,C,D,E,Y);
    initial begin
        A = 0; B = 0; C = 0; D = 0; E = 0; #20;
        E = 1; #20;
        D = 1; E = 0; #20;
        E = 1; #20;
        C = 1; D = 0; E = 0; #20;
        E = 1; #20;
        D = 1; E = 0; #20;
        E = 1; #20;
        B = 1; C = 0; D = 0; E = 0; #20;
        E = 1; #20;
        D = 1; E = 0; #20;
        E = 1; #20;
        C = 1; D = 0; E = 0; #20;
        E = 1; #20;
        D = 1; E = 0; #20;
        E = 1; #20;
        A = 1; B = 0; C = 0; D = 0; E = 0; #20;
        E = 1; #20;
        D = 1; E = 0; #20;
        E = 1; #20;
        C = 1; D = 0; E = 0; #20;
        E = 1; #20;
        D = 1; E = 0; #20;
        E = 1; #20;
        B = 1; C = 0; D = 0; E = 0; #20;
        E = 1; #20;
        D = 1; E = 0; #20;
        E = 1; #20;
        C = 1; D = 0; E = 0; #20;
        E = 1; #20;
        D = 1; E = 0; #20;
        E = 1; #20;
    end
endmodule
