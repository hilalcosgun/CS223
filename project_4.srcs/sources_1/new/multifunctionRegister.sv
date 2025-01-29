`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 22:47:15
// Design Name: 
// Module Name: multifunctionRegister
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


module multifunctionRegister(
    input logic clk,
    input logic reset,
    input logic shift,
    input logic [1:0]s,
    input logic [3:0]d,
    output logic [3:0]q
    );

    always_ff@(posedge clk)
    if(reset) q <= 4'b0;
    else
    begin
        case(s)
        2'b00: q <= q;
        2'b01: q <= d;
        2'b10: 
         begin 
        q[3]<= q[2];
        q[2]<= q[1];
        q[1]<= q[0];
        q[0]<= shift;
        end
        2'b11:
         begin
        q[3]<= shift;
        q[2]<= q[3];
        q[1]<= q[2];
        q[0]<= q[1];
        end
        endcase 
       end 
        
       
endmodule
