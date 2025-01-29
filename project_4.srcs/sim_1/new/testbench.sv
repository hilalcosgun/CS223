`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2024 23:46:00
// Design Name: 
// Module Name: testbench
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


module testbench(

    );
    logic clk;
    logic reset;
    logic shift;
    logic [1:0]s;
    logic [3:0]d;
    logic [3:0]q;
    
    register2 r2(clk,reset,shift,s,d,q);
    always
    begin
    clk = 1; #20; 
    clk = 0; #20;
    end
    initial begin
    reset = 1; shift = 0; s[1] = 0; s[0] = 0; d = 4'b0000; #20;
    reset = 0;  #20;
    for(int i = 0; i < 5; i++) begin
        d = i; #20;
        end
    s[0] = 1; d = 0; #20;
    for(int i = 0; i < 16; i++) begin
        d = i; #20;
        end
    s[0] = 0; s[1] = 1; d = 4'b0000; #20
    for(int i = 0; i < 8; i++) begin
        d = i; #20;
        end
    s[0] = 1;  d = 4'b0000; #20;
    for(int i = 0; i < 8; i++) begin
        d = i; #20;
        end
    shift = 1; #20;
    #140;
    reset = 1;#60;
end     
endmodule
