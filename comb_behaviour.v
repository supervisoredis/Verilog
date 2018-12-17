`timescale 10ns/1ns
module comb_behaviour(Y,A,B,C,D);
  output reg Y;
  input  A,B,C,D;
  reg e1,b1,b2,c1;
always@(*)
begin
  e1 = ~D;
  b1 = A|D;
  b2 = B&C&e1;
  c1 = ~b1;
  Y = c1&b2;
end 
endmodule