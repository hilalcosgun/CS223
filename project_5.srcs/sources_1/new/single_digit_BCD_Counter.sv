`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 23:17:28
// Design Name: 
// Module Name: single_digit_BCD_Counter
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


module single_digit_BCD_Counter(
    input logic clk,        
    input logic enable, 
    input logic load, 
    input logic [3:0] d,
    output logic [3:0] q
    );
    logic reset = 0;
    logic [3:0] w; 
    single_digit_up_counter sduc (clk,enable,reset,load,d,w);
    always@(w) begin
     q<=w;
     reset<=0;
    if(enable & ~load & q == 4'b1001) reset <= 1;
    end

endmodule

