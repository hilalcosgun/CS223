`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2024 22:16:27
// Design Name: 
// Module Name: fourDigitDisplay
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


module fourDigitDisplay(
   input logic clk,
    input logic [3:0] digit1, 
    input logic [3:0] digit2,
    input logic [3:0] digit3,
    input logic [3:0] digit4,
    output logic [3:0] anode,
    output logic [6:0] cathode
    );
    localparam baudRate= 100_000_000/9600;
logic divided_clk;
logic [1:0] refresh = 2'b00;
logic [3:0] current_digit = 0;
integer count= 0;
clockDivider#(baudRate) cd1(clk,divided_clk);

always@(posedge divided_clk)begin
    refresh <= refresh + 1;
  end

always@(refresh)begin
case(refresh)
    2'b00: anode <= 4'b1110;
    2'b01: anode <= 4'b1101;
    2'b10: anode <= 4'b1011;
    2'b11: anode <= 4'b0111;
    default: anode <= 4'b1110;
 endcase
 end
 
 always@(refresh)begin
 case(refresh)
    2'b00: current_digit <= digit1;
    2'b01: current_digit <= digit2;
    2'b10: current_digit <= digit3;
    2'b11: current_digit <= digit4;
 endcase
 end
 sevenSegmentDecoder ssd(current_digit,cathode);
 
endmodule
