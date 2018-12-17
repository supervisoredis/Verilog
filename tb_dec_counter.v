`timescale 10ns/1ns
`include "dec_counter.v"
module tb_dec_counter;
  wire [3:0]count;
  reg clk,reset;
  
  dec_counter m_dec_count(count,clk,reset);
  
  always #10 clk=~clk;
  initial 
  begin
    reset=1;
    clk=0;
    #10 reset=0;
  end
  initial
  begin
    $monitor("time6:%tns,",$time,"<--->count=%b,clk=%b,reset=%b",count,clk,reset);
  end
endmodule
    