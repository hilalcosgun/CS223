`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 21:22:01
// Design Name: 
// Module Name: two_digit_BCD_counter
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


module two_digit_BCD_counter(
    input logic clk,        
    input logic enable, 
    input logic load, 
    input logic [3:0] loadDigit2,
    input logic [3:0] loadDigit1,
    output logic [3:0] outDigit2,
    output logic [3:0] outDigit1
    );
    logic en2 = 0;
    single_digit_BCD_Counter sdbc(clk,enable,load,loadDigit2,outDigit2);
    single_digit_BCD_Counter sdbc2(clk,en2,load,loadDigit1,outDigit1);
    always@(outDigit2) begin
    if(outDigit2 == 4'b1001 || load) en2<=enable;
    else en2<=0;
    end



endmodule
