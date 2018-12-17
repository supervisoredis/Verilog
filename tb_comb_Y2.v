`timescale 10ns/1ns
`include "comb_Y2.v"
module tb_comb_Y2;
wire Y;
reg A,B,C,D;
 
 comb_Y2 m_comb_Y2(Y,A,B,C,D);
 
 initial 
 begin
   A=0;B=0;C=0;D=0;
   #10 A=0;B=0;C=0;D=1;
   #10 A=0;B=0;C=1;D=0;
   #10 A=0;B=1;C=0;D=0;
   #10 A=1;B=0;C=0;D=0;
   #10 A=0;B=0;C=1;D=1;
   #10 A=0;B=1;C=0;D=1;
   #10 A=1;B=0;C=0;D=1;
   #10 A=0;B=1;C=1;D=0;
   #10 A=1;B=0;C=1;D=0;
   #10 A=1;B=1;C=0;D=0;
   #10 A=0;B=1;C=1;D=1;
   #10 A=1;B=0;C=1;D=1;
   #10 A=1;B=1;C=1;D=0;
   #10 A=1;B=1;C=0;D=1;
   #10 A=1;B=1;C=1;D=1;
   #10 $stop;
 end 
 
 initial
 begin
    $monitor("time4:%tns,",$time,"<--->Y=%b,A=%b,B=%b,C=%b,D=%b",Y,A,B,C,D);
  end
endmodule
