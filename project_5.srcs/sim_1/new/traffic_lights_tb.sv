`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 16:23:54
// Design Name: 
// Module Name: traffic_lights_tb
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


module traffic_lights_tb(
    );
    logic clk;
    logic reset;
    logic Sa;
    logic Sb;
    logic [2:0] La;
    logic [2:0] Lb;
    
    trafic_light_system tls(clk,reset,Sa,Sb,La,Lb);
    always begin
    clk = 0; #5;
    clk = 1; #5;
    end
    initial begin 
    reset = 1; #5;
    reset = 0; Sa = 0; Sb = 0; #100;
    Sb = 1; #100;
    Sa = 1; Sb=0; #100;
    Sb = 1; #100;
    Sa = 0; #100;
    end
         
endmodule
