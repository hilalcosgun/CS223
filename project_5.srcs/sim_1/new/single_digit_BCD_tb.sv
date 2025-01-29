`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 23:44:39
// Design Name: 
// Module Name: single_digit_BCD_tb
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


module single_digit_BCD_tb(
    );
logic clk;       
logic enable; 
logic load;
logic [3:0] d;
logic [3:0] q;
single_digit_BCD_Counter uut(clk,enable,load,d,q);
always begin
    clk = 0; #10;
    clk= 1; #10;
end
initial begin 
    enable = 1; load = 1; d[0] = 0; d[1] = 0; d[2] = 0; d[3] = 0; #40;
    load = 0; #300;
    load = 1; #20;
    for(int i = 0; i < 16; i++) begin
        d = i; #20;
    end
    
end
endmodule
