`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 04:16:00
// Design Name: 
// Module Name: three_to_eight_decoder
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


module three_to_eight_decoder(
    input logic E,
    input logic [2:0] A,
    output logic [7:0] Y
    );
    logic e0;
    logic e1;
    assign e0 = E & A[2];
    assign e1 = E & ~A[2];
    two_to_four_decoder tfd(A[1:0], e0, Y[7:4]);
    two_to_four_decoder tfd2(A[1:0], e1, Y[3:0]);
       
endmodule
