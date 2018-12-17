`timescale 10ns/1ns
module comb_dataflow(Y,A,B,C,D);
  output Y;
  input  A,B,C,D;
  wire e1,b1,b2,c1;
  assign e1 = ~D;
  assign b1 = A|D;
  assign b2 = B&C&e1;
  assign c1 = ~b1;
  assign Y = c1&b2;
endmodule
       