`timescale 10ns/1ns
`include "comb_Y1.v"
module tb_comb_Y1;
wire Y;
reg A,B,C;
 
 comb_Y1 m_comb_Y1(Y,A,B,C);
 
 initial 
 begin
   A=0;B=0;C=0;
   #10 A=1;B=0;C=0;
   #10 A=0;B=1;C=1;
   #10 A=1;B=0;C=1;
   #10 A=1;B=1;C=0;
   #10 A=0;B=0;C=1;
   #10 A=1;B=1;C=1;
   #10 A=0;B=1;C=0;
   #10 $stop;
 end 
 
 initial
 begin
    $monitor("time4:%tns,",$time,"<--->Y=%b,A=%b,B=%b,C=%b",Y,A,B,C);
  end
endmodule

   
   
