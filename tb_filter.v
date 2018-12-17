`timescale 10ns/1ns
`include "filter.v"
module tb_filter;
  wire sig_out;
  reg clock,reset,sig_in;
  
  filter m_filter(sig_out,clock,reset,sig_in);
  
  initial
  begin 
    clock=0;
    reset=1;
    sig_in=0;
    
    forever #10 clock=~clock;
  end
  
  initial 
  begin
    #50 reset=0;
    #20 sig_in=1;
    #20 sig_in=0;
    #20 sig_in=0;
    #20 sig_in=1;
    #20 sig_in=1;
    #20 sig_in=1;
    #20 sig_in=1;
    #20 sig_in=0;
    #20 sig_in=1;
    #20 sig_in=0;
    #20 sig_in=0;
    #20 sig_in=0;
    #20 sig_in=0;
    #20 sig_in=0;
    #20 sig_in=0;
    #20 sig_in=1;
    #20 sig_in=1;
    #20 sig_in=1;
    #20 sig_in=1;
    #20 sig_in=0;
    #20 sig_in=1;
    #20 sig_in=1;
    #20 sig_in=0;
    #20 $stop;
  end
  
  initial  
   begin
    $monitor("time10:%tns,",$time,"<----> sig_out=%b,clock=%b,reset=%b,sig_in=%b",sig_out,clock,reset,sig_in);
  end
endmodule
  