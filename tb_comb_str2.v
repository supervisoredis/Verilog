`timescale 10ns/1ns
`include "comb_str2.v"
module tb_comb_str2;
  wire Y;
  reg A,B,C,D,sel;
  
  comb_str2 m_comb_str2(Y,sel,A,B,C,D);
  
  initial 
  begin
    sel=0;A=0;B=0;C=0;D=0;
    #10 sel=0;A=0;B=0;C=0;D=1;
    #10 sel=0;A=0;B=0;C=1;D=0;
    #10 sel=0;A=0;B=1;C=0;D=0;
    #10 sel=0;A=1;B=0;C=0;D=0;
    
    #10 sel=1;A=0;B=0;C=0;D=1;
    #10 sel=1;A=0;B=0;C=1;D=0;
    #10 sel=1;A=0;B=1;C=0;D=0;
    #10 sel=1;A=1;B=0;C=0;D=0;
  
    #10 sel=0;A=0;B=0;C=1;D=1;
    #10 sel=0;A=0;B=1;C=0;D=1;
    #10 sel=0;A=1;B=0;C=0;D=1;
    #10 sel=0;A=0;B=1;C=1;D=0;
    #10 sel=0;A=1;B=0;C=1;D=0;
    #10 sel=0;A=1;B=1;C=0;D=0;
    
    #10 sel=1;A=0;B=0;C=1;D=1;
    #10 sel=1;A=0;B=1;C=0;D=1;
    #10 sel=1;A=1;B=0;C=0;D=1;
    #10 sel=1;A=0;B=1;C=1;D=0;
    #10 sel=1;A=1;B=0;C=1;D=0;
    #10 sel=1;A=1;B=1;C=0;D=0;
    
    #10 sel=0;A=0;B=1;C=1;D=1;
    #10 sel=0;A=1;B=0;C=1;D=1;
    #10 sel=0;A=1;B=1;C=0;D=1;
    #10 sel=0;A=1;B=1;C=1;D=0;
  
    #10 sel=1;A=0;B=1;C=1;D=1;
    #10 sel=1;A=1;B=0;C=1;D=1;
    #10 sel=1;A=1;B=1;C=0;D=1;
    #10 sel=1;A=1;B=1;C=1;D=0;
    
    #10 sel=0;A=1;B=1;C=1;D=1;
    #10 sel=1;A=1;B=1;C=1;D=1;
    #10 $stop;
  end
  initial
  begin
    $monitor("time6:%tns,",$time,"<--->Y=%b,sel=%b,A=%b,B=%b,C=%b,D=%b",Y,sel,A,B,C,D);
  end
endmodule
    
