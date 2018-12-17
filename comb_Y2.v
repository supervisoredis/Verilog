`timescale 10ns/1ns
module comb_Y2(Y,A,B,C,D);
  output Y;
  input A,B,C,D;
  wire a1,a2,a3,a4,a5,a6,a7;
  assign a1=(~A)&B&(~C)&(~D);
  assign a2=(~A)&B&(~C)&D;
  assign a3=(~A)&B&C&(~D);
  assign a4=(~A)&B&C&D;
  assign a5=A&(~B)&C&C;
  assign a6=A&B&(~C)&(~D);
  assign a7=A&B&(~C)&D;
  assign Y=a1|a2|a3|a4|a5|a6|a7;
endmodule
