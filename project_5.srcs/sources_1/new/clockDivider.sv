`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 13:23:10
// Design Name: 
// Module Name: clockDivider
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


module clockDivider #(parameter division_value = 1000000)(
    input logic clkin,
    output logic clkout
    );
    
    logic dividedClk = 1'b0;
    logic [31:0] count;
    always_ff@(posedge clkin) begin
        count <= count +1;
        if(count == division_value) begin
            count <= 0;
            dividedClk <= ~dividedClk;
            end
        end
     assign clkout = dividedClk;
endmodule
