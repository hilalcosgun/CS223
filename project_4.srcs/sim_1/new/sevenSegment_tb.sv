`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 20:19:52
// Design Name: 
// Module Name: sevenSegment_tb
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


module sevenSegment_tb(
    );
    logic [3:0]w;
    logic [6:0]y;
    sevenSegmentDecoder ssd(w,y);
    initial begin
    for(int i = 0; i < 10; i++)begin
        w = i; #20;
        end
    end
endmodule
