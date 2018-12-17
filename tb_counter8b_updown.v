`timescale 10ns/1ns
`include "counter8b_updown.v"
module tb_counter8b_updown;
  wire [7:0]count;
  reg clk,reset,dir;
  
  counter8b_updown m_counter8b_updown(count,clk,reset,dir);
  
  initial
  begin 
    reset=1;
    dir=1;
    clk=0;
    
    forever #5 clk=~clk;
    
  end
  
  initial
  begin 
    dir=0;
    #10 reset=0;
    #10 dir=1;
    #20 reset=1;
    #25 reset=0;dir=0;
    #25 reset=0;dir=1;
    #25 reset=0;dir=0;
    #25 reset=0;dir=1;
    #25 reset=0;dir=0;
    #25 reset=0;dir=1;
    #25 reset=0;dir=0;
    #25 reset=0;dir=1;
    #30 $stop;
  end
  
  initial  
   begin
    $monitor("time10:%tns,",$time,"<----> count=%b,reset=%b,dir=%b",count,reset,dir);
  end
endmodule