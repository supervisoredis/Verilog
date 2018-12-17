`timescale 10ns/1ns
`include "shift_counter.v"
module tb_shift_counter;
  wire [7:0]count;
  reg clk,reset;
  shift_counter m_shift_counter(count,clk,reset);
  
  initial 
  begin 
    reset=0;
    clk=0;
    
    forever #5 clk=~clk;
  end
  
  initial 
  begin
  #10 reset=1;
end
initial
  begin
    $monitor("time13:%tns,",$time,"<--->count=%b",count);
  end
endmodule
  