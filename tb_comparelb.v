`timescale 10ns/1ns
`include "comparelb.v"

module tb_comparelb;
  wire p_y;
  reg p_a,p_b;
  comparelb m_cmplb(.y(p_y),.a(p_a),.b(p_b));
  
  initial 
  begin
    p_a=0;
    p_b=0;
    #100 p_a=0;
         p_b=1;
    #100 p_a=1;
         p_b=0;
    #100 p_a=1;
         p_b=1;
    #100 $stop;
  end
  
  initial 
  begin 
    $monitor("recent_time:%tns,",$time,"<----> y=%a,a=%a,b=%a",p_y,p_a,p_b);
  end
endmodule    
  