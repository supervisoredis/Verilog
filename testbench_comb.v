`timescale 10ns/1ns
`include "comb_str.v"
`include "comb_dataflow.v"
`include "comb_prim.v"
`include "comb_behaviour.v"
module testbench_comb;
  wire t_Y1,t_Y2,t_Y3,t_Y4;
  reg t_A,t_B,t_C,t_D;
  
  comb_str m_comb_str(.Y(t_Y1),.A(t_A),.B(t_B),.C(t_C),.D(t_D));
  comb_dataflow m_comb_dataflow(.Y(t_Y2),.A(t_A),.B(t_B),.C(t_C),.D(t_D));
  comb_prim m_comb_prim(t_Y3,t_A,t_B,t_C,t_D);
  comb_behaviour m_comb_behaviour(.Y(t_Y4),.A(t_A),.B(t_B),.C(t_C),.D(t_D));
    
initial
begin 
  t_A=0;t_B=0;t_C=0;t_D=0;
  #10 t_A=0;t_B=0;t_C=0;t_D=0;
  #10 t_A=0;t_B=0;t_C=0;t_D=1;
  #10 t_A=0;t_B=0;t_C=1;t_D=0;
  #10 t_A=0;t_B=1;t_C=0;t_D=0;
  #10 t_A=1;t_B=0;t_C=0;t_D=0;
  #10 t_A=0;t_B=0;t_C=1;t_D=1;
  #10 t_A=0;t_B=1;t_C=0;t_D=1;
  #10 t_A=1;t_B=0;t_C=0;t_D=1;
  #10 t_A=0;t_B=1;t_C=1;t_D=0;
  #10 t_A=1;t_B=1;t_C=0;t_D=0;
  #10 t_A=1;t_B=0;t_C=1;t_D=0;
  #10 t_A=0;t_B=1;t_C=1;t_D=1;
  #10 t_A=1;t_B=0;t_C=1;t_D=1;
  #10 t_A=1;t_B=1;t_C=0;t_D=1;
  #10 t_A=1;t_B=1;t_C=1;t_D=0;
  #10 t_A=1;t_B=1;t_C=1;t_D=1;
  #10 $stop;
 end
 
 initial
 begin
   $monitor("time3:%tns,",$time,"<----> t_Y1=%b,t_Y2=%b,t_Y3=%b,t_Y4=%b,t_A=%b,t_B=%b,t_C=%b,t_D=%b",t_Y1,t_Y2,t_Y3,t_Y4,t_A,t_B,t_C,t_D);
 end
 endmodule
 
 
  