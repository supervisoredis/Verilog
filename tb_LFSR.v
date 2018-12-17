`timescale 10ns/1ns
`include "LFSR.v"
module tb_LFSR;
  wire [1:26]q;
  reg        clk;
  reg        rst_n;
  reg        load;
  reg  [1:26]din;
  
  LFSR m_LFSR(q,clk,rst_n,load,din);
  
  initial 
  begin
    clk=0;
    rst_n=0;
    load=1;
    din=26'b01_1001_0011_1000_0011_1111_0010;
    
    forever #100 clk=~clk;
  end
  
   initial
    begin
    #100 rst_n=1;
    #100 load=1;
    #100 load=0;
  end
  initial 
  begin
    $monitor("time9:%tns,",$time,"<----> q=%b,clk=%b,rst_n=%b,load=%b,din=%b",q,clk,rst_n,load,din);
  end
endmodule