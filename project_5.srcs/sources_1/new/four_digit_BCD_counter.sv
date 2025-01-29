`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2024 16:06:34
// Design Name: 
// Module Name: four_digit_BCD_counter
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


module four_digit_BCD_counter(
    input logic clk,        
    input logic reset, 
    input logic load, 
    input logic [3:0] loadThousands,
    input logic [3:0] loadHundreds,
    input logic [3:0] loadTens,
    input logic [3:0] loadOnes,
    output logic [3:0] anode,
    output logic [6:0] cathode
    );
    logic [3:0] thousands;
    logic [3:0] hundreds;
    logic [3:0] tens;
    logic [3:0] ones;
    logic divided_clk;
    clockDivider#(49999995)(clk,divided_clk);
    
    always @(posedge divided_clk or posedge reset) begin
        
        if(reset)begin 
         ones <= 0;
         tens <=0;
         hundreds <= 0;
         thousands <= 0; 
         end
        else if(load) begin
            ones<= loadOnes;
            tens <=loadTens;
            hundreds <=loadHundreds;
            thousands <=loadThousands;
        end
        else if(thousands == 9 && hundreds == 9 && tens ==9 && ones==9)begin
        ones <= 0;
         tens <=0;
         hundreds <= 0;
         thousands <= 0; 
         end 
         else if(hundreds == 9 && tens ==9 && ones==9) begin
         ones <= 0;
         tens <=0;
         hundreds <= 0;
         thousands <= thousands + 1;
         end
         else if(tens ==9 && ones==9)begin
          ones <= 0;
         tens <=0;
         hundreds <= hundreds+1;
         end 
         else if(ones==9)begin
         ones <=0 ;
          tens <= tens +1;
          end
          else
          ones <= ones +1;
          end
       
    fourDigitDisplay(clk,ones,tens,hundreds,thousands,anode,cathode);
endmodule
