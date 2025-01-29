`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 22:00:58
// Design Name: 
// Module Name: rdflop
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


module rdflop(
    input logic clk,
    input logic reset,
    input logic d,
    output logic q
    );
    always_ff@(posedge clk) begin
    if(reset) q <= 1'b0;
    else q <= d;
    end
endmodule
