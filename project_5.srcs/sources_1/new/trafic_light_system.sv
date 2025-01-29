`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.04.2024 12:44:16
// Design Name: 
// Module Name: trafic_light_system
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


module trafic_light_system(
    input logic clk,
    input logic reset,
    input logic Sa,Sb,
    output logic [2:0] La, [2:0] Lb
    );
    logic [1:0] LaColor;
    logic [1:0] LbColor;
    logic dividedClk;
    typedef enum logic [2:0] {S0,S1,S2,S3,S4,S5,S6,S7} statetype;
    statetype state, nextState;
    clockDivider#(150_000_000) cd1 (clk,dividedClk);
    always_ff@(posedge dividedClk, posedge reset) begin
        if(reset) state <= S0;
        else state <= nextState;
    end
    
    always@(*)
        case(state)
            S0: if(Sa) nextState = S0;
                else nextState = S1;
            S1: nextState = S2;
            S2: nextState = S3;
            S3: nextState = S4;
            S4: if(Sb) nextState = S4;
                else nextState = S5;
            S5: nextState = S6;
            S6: nextState = S7;
            default: nextState = S0;
       endcase
    assign LaColor[1] = (state == S0);
    assign LaColor[0] = (state == S1) | (state == S7);
    assign LbColor[1] = (state == S4);
    assign LbColor[0] = (state == S3) | (state == S5); 
    assign La[0] = 1;
    assign La[1] = (LaColor == 2'b01 | LaColor == 2'b10);
    assign La[2] = (LaColor == 2'b10);
    assign Lb[0] = 1;
    assign Lb[1] = (LbColor == 2'b01 | LbColor == 2'b10);
    assign Lb[2] = (LbColor == 2'b10);
endmodule
