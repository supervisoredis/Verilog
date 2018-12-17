`timescale 10ns/1ns
`include "mealy.v"
`include "moore.v"
module top();
  parameter [0:19] data = 32'b0101_0101_0101_1110_0101_0111_0101_0101_0100;
  wire flag_mealy, flag_moore;
  reg din, clk, rst;
  integer i;
  mealy ins1(flag_mealy, din, clk, rst);
  moore ins2(flag_moore, din, clk, rst);
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    rst = 1'b0;
    #10 rst = 1'b1;
    #2 rst = 1'b0;
  end
  
  initial begin
  #5
    for(i=0; i<32; i=i+1)
      #10 din = data[i];
    #20 $stop;
  end
  initial
   begin
   $monitor("time16:%tns,",$time,"<----> flag_mealy=%b,flag_moore=%b",flag_mealy,flag_moore);
 end
endmodule