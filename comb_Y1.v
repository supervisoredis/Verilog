`timescale 10ns/1ns
module comb_Y1(Y,A,B,C);
  output Y;
  input A,B,C;
  wire a1,a2,a3,a4;
  assign a1=(~A)&(~B)&C;
  assign a2=(~A)&B&(~C);
  assign a3=A&(~B)&(~C);
  assign a4=A&(~B)&C; 
  assign Y=a1|a2|a3|a4;
endmodule