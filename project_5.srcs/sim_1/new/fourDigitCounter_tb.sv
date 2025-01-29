`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2024 23:42:05
// Design Name: 
// Module Name: fourDigitCounter_tb
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


module fourDigitCounter_tb(

    );
    logic  clk;       
    logic  reset;
    logic  load;
    logic  [3:0] loadThousands;
    logic  [3:0] loadHundreds;
    logic  [3:0] loadTens;
    logic  [3:0] loadOnes;
    logic  [3:0] thousands;
    logic  [3:0] hundreds;
    logic  [3:0] tens;
    logic  [3:0] ones;
    four_digit_BCD_counter fdbc(clk,reset,load,loadThousands,loadHundreds,
    loadTens,loadOnes,thousand,hundreds,tens,ones);
    always begin
     clk = 0; #5;
     clk = 1; #5;
     end
    initial begin
    reset = 1; load = 0; #10;
    reset = 0; #500;
    load = 1; #10;
    for(int i = 0; i < 9; i++) begin
        loadOnes = i; #10;
    end
     for(int i = 0; i < 9; i++) begin
        loadTens = i; #10;
    end
    end
    
endmodule
