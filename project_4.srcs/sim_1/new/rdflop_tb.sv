`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2024 00:21:02
// Design Name: 
// Module Name: rdflop_tb
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


module rdflop_tb(

    );
    logic clk,reset;
    logic [3:0]d;
    logic [3:0] q;
    
    rdflop ff1(clk,reset,d,q);
    initial begin
    clk = 0; reset = 0; d=4'b0; #50;
    clk = 1; d = 4'b0001; #50;
    d = 4'b0100; #50;
    clk = 0; d = 4'b1000; #50;
    reset = 0; #50;
    end
endmodule
