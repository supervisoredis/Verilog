`timescale 10ns/1ns
`include "seq_detect.v"
module tb_seq_detect;
  wire flag;
  reg din,clk,rst_n;
  
  seq_detect m_seq_detect(flag,din,clk,rst_n);
  
  initial 
  begin 
   rst_n=0;clk=0;
    forever #5 clk=~clk;
  end
    
    initial
    begin
    din=0;
    #10 rst_n=1;
    #10 din=0;
    #10 din=1;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=0;
    #10 din=1;
    #10 din=0;
    #10 din=0;
    #10 din=0;
    #10 din=1;
    #10 din=1;
    #10 din=1;
    #10 $stop;
  end
  
initial  
   begin
    $monitor("time10:%tns,",$time,"<----> flag=%b,din=%b,clk=%b,rst_n=%b",flag,din,clk,rst_n);
  end
endmodule
  