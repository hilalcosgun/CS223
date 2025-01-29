`timescale 1ns / 1ps
module bit_Shifter(
  input logic w3, w2, w1, w0, shift,
  output logic y3,y2,y1,y0,k

    );
     two_to_one_mux m1(0,w3,shift,y3);
     two_to_one_mux m2(w3,w2,shift,y2);
     two_to_one_mux m3(w2,w1,shift,y1);
     two_to_one_mux m4(w1,w0,shift,y0);
     two_to_one_mux m5(w0,0,shift,k);
endmodule
