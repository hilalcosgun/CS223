`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 04:21:31
// Design Name: 
// Module Name: three_to_eight_decoder_tb
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


module three_to_eight_decoder_tb(
    );
    logic E;
    logic [2:0] A;
    logic [7:0] Y;
    three_to_eight_decoder uud(E,A,Y);
    initial begin
        E = 0; A[2] = 0; A[1] = 0; A[0] = 0; #20;
        A[0] = 1; #20;
        A[1] = 1; A[0] = 0; #20;
        A[0] = 1; #20;
        A[2] = 1; A[1] = 0; A[0] = 0; #20;
        A[0] = 1; #20;
        A[1] = 1; A[0] = 0; #20;
        A[0] = 1; #20;
        E = 1; A[2] = 0; A[1] = 0; A[0] = 0; #20;
        A[0] = 1; #20;
        A[1] = 1; A[0] = 0; #20;
        A[0] = 1; #20;
        A[2] = 1; A[1] = 0; A[0] = 0; #20;
        A[0] = 1; #20;
        A[1] = 1; A[0] = 0; #20;
        A[0] = 1; #20;
    end
endmodule
