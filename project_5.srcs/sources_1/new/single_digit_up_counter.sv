`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 23:03:37
// Design Name: 
// Module Name: single_digit_up_counter
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


module single_digit_up_counter(
    input logic clk,        
    input logic enable,
    input logic reset, 
    input logic load, 
    input logic [3:0] d,
    output logic [3:0] q
);

always_ff @(posedge clk or posedge reset) begin
    if(reset == 1) q<=4'b0;
    else begin
    if (enable) begin
        if(load) q<=d;
        else q<=q+1;
        end
    else q<=q;
    end
end
endmodule
