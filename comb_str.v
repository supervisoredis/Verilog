`timescale 10ns/1ns
module comb_str(Y,A,B,C,D);
  output Y;
  input A,B,C,D;
  wire e1,b1,b2,c1;
  not n1(e1,D);
  or or1(b1,A,D);
  and a1(b2,B,C,e1);
  not n2(c1,b1);
  and a2(Y,c1,b2);
endmodule