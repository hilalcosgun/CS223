`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2024 18:03:36
// Design Name: 
// Module Name: register2
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


module register2(
 input logic clk,
    input logic reset,
    input logic shift,
    input logic [1:0]s,
    input logic [3:0]d,
    output logic [3:0]q
    );
    logic [3:0]w;
    
    logic[27:0]counter = 0;
    logic new_clk;
    
    always@(posedge clk) begin
            counter<=counter+1;
            if(counter == {27{1'b1}})begin
                counter<=0;
                new_clk <= ~new_clk;
            end
    end
    
    four_to_one_mux m0(q[1],shift,d[0],q[0],s[1],s[0],w[0]);
    four_to_one_mux m1(q[2],q[0],d[1],q[1],s[1],s[0],w[1]);
    four_to_one_mux m2(q[3],q[1],d[2],q[2],s[1],s[0],w[2]);
    four_to_one_mux m3(shift,q[2],d[3],q[3],s[1],s[0],w[3]);
    rdflop f1(new_clk,reset,w,q);
    always_ff@(posedge new_clk)
        if(reset) q <= 4'b0;
        else q <= w;

endmodule
