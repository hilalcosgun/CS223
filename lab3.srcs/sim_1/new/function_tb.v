`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 11:13:41
// Design Name: 
// Module Name: function_tb
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

module function_tb(

    );
    reg A,B,C,D,E;
    wire Y;
    
    functionmodule fm(A,B,C,D,E,Y);
    initial begin
        
        A=0;B=0;C=0;D=0;E=0;#50;
        A=0;B=0;C=0;D=0;E=1;#50;
        A=0;B=0;C=0;D=1;E=0;#50;
        A=0;B=0;C=0;D=1;E=1;#50;
        
        A=0;B=0;C=1;D=0;E=0;#50;
        A=0;B=0;C=1;D=0;E=1;#50;
        A=0;B=0;C=1;D=1;E=0;#50;
        A=0;B=0;C=1;D=1;E=1;#50;
        
        A=0;B=1;C=0;D=0;E=0;#50;
        A=0;B=1;C=0;D=0;E=1;#50;
        A=0;B=1;C=0;D=1;E=0;#50;
        A=0;B=1;C=0;D=1;E=1;#50;
        
        A=0;B=1;C=1;D=0;E=0;#50;
        A=0;B=1;C=1;D=0;E=1;#50;
        A=0;B=1;C=1;D=1;E=0;#50;
        A=0;B=1;C=1;D=1;E=1;#50;
        
        A=1;B=0;C=0;D=0;E=0;#50;
        A=1;B=0;C=0;D=0;E=1;#50;
        A=1;B=0;C=0;D=1;E=0;#50;
        A=1;B=0;C=0;D=1;E=1;#50;
        
        A=1;B=0;C=1;D=0;E=0;#50;
        A=1;B=0;C=1;D=0;E=1;#50;
        A=1;B=0;C=1;D=1;E=0;#50;
        A=1;B=0;C=1;D=1;E=1;#50;
        
        A=1;B=1;C=0;D=0;E=0;#50;
        A=1;B=1;C=0;D=0;E=1;#50;
        A=1;B=1;C=0;D=1;E=0;#50;
        A=1;B=1;C=0;D=1;E=1;#50;
        
        A=1;B=1;C=1;D=0;E=0;#50;
        A=1;B=1;C=1;D=0;E=1;#50;
        A=1;B=1;C=1;D=1;E=0;#50;
        A=1;B=1;C=1;D=1;E=1;#50;
   end
endmodule

