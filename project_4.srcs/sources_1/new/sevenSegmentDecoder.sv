`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 19:40:25
// Design Name: 
// Module Name: sevenSegmentDecoder
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


module sevenSegmentDecoder(
    input logic [3:0] w,
output logic [6:0] sseg
    );
     always_comb
        begin
        case (w)
        0: sseg[6:0] = 7'b1000000;
        1: sseg[6:0] = 7'b1111001;
        2: sseg[6:0] = 7'b0100100;
        3: sseg[6:0] = 7'b0110000;
        4: sseg[6:0] = 7'b0011001;
        5: sseg[6:0] = 7'b0010010;
        6: sseg[6:0] = 7'b0000010;
        7: sseg[6:0] = 7'b1111000;
        8: sseg[6:0] = 7'b0000000;
        9: sseg[6:0] = 7'b0010000;
        10: sseg[6:0] = 7'b0001000;
        11: sseg[6:0] = 7'b0000011;
        12: sseg[6:0] = 7'b1000110;
        13: sseg[6:0] = 7'b0100001;
        14: sseg[6:0] = 7'b0000110;
        15: sseg[6:0] = 7'b0001110;
        default: sseg[6:0] = 7'b1000000; 

        endcase
    end

endmodule
