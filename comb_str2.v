`timescale 10ns/1ns
module comb_str2(Y,sel,A,B,C,D);
  output reg Y;
  input sel,A,B,C,D;
  wire E,F;
  
  nand n1(E,A,B);
  nand n2(F,C,D);
  
  always @(sel or E or F)
  if(!sel) Y=E;
  else Y=F;
  endmodule 
  
