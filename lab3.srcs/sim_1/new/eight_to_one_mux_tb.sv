`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 05:08:45
// Design Name: 
// Module Name: eight_to_one_mux_tb
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


module eight_to_one_mux_tb(
    );
    logic [7:0] D;
    logic [2:0] S;
    logic Y;
    eight_to_one_mux em(D,S,Y);
    
    initial begin 
        for (int a = 0; a < 2; a++) begin
            for (int b = 0; b < 2; b++) begin
                for (int c = 0; c < 2; c++) begin
                    for (int d = 0; d < 2; d++) begin
                        for (int e = 0; e < 2; e++) begin
                            for (int f = 0; f < 2; f++) begin
                                for (int g = 0; g < 2; g++) begin
                                    for (int h = 0; h < 2; h++) begin
                                        for (int k = 0; k < 2; k++) begin
                                            for (int l = 0; l < 2; l++) begin
                                                for (int m = 0; m < 2; m++) begin
                                                 S[0]=a; S[1]=b; S[2]=c; D[7]=d; D[6]=e; D[5]=f; D[4]=g; D[3]=h; D[2]=k;
                                                 D[1]=l; D[0]=m; #20;
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
endmodule
