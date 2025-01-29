`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 21:34:24
// Design Name: 
// Module Name: two_digit_BCD_counter_tb
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


module two_digit_BCD_counter_tb(
    );
    logic clk;        
    logic enable; 
    logic load;
    logic [3:0] loadDigit2;
    logic [3:0] loadDigit1;
    logic [3:0] outDigit2;
    logic [3:0] outDigit1;
    two_digit_BCD_counter tdbc(clk,enable,load,loadDigit2,loadDigit1,outDigit2,outDigit1);
    always begin
    clk = 0; #10;
    clk= 1; #10;
    end
    initial begin
    enable = 1; load = 1; loadDigit1[0] = 0; loadDigit1[1] = 0; loadDigit1[2] = 0; loadDigit1[3] = 0;
    loadDigit2[0] = 0; loadDigit2[1] = 0; loadDigit2[2] = 0; loadDigit2[3] = 0;
     #40;
    load = 0; #300;
    load = 1; #20;
    for(int i = 0; i < 16; i++) begin
        loadDigit1 = i; #20;
    end
    for(int i = 0; i < 16; i++) begin
        loadDigit2 = i; #20;
    end
    end
    
endmodule
