`timescale 10ns/1ns
`include "ALU.v"
module tb_ALU;
  wire c_out;
  wire [7:0]sum;
  reg [8*15:1]oper;
  reg [7:0]a;
  reg [7:0]b;
  reg c_in;
 
  
  ALU m_ALU(c_out,sum,oper,a,b,c_in);
  
  initial 
  begin 
      a=8'b0000_0000;
      b=8'b0000_0000;
      c_in=0;
      oper="and";
   #5 a=8'b0000_1100;
      b=8'b0010_0000;
      c_in=1;
      oper="subtract";
   #5 a=8'b1010_0100;
      b=8'b0010_1010;
      c_in=0;
      oper="subtract_a";
   #5 a=8'b1110_1100;
      b=8'b1010_0110;
      c_in=0;
      oper="or_ab";
   #5 a=8'b0010_1111;
      b=8'b0110_1010;
      c_in=0;
      oper="and_ab";
   #5 a=8'b0110_0110;
      b=8'b0000_0010;
      c_in=0;
      oper="not_ab";
   #5 a=8'b0100_1011;
      b=8'b1111_0111;
      c_in=0;
      oper="exor";
   #5 a=8'b0110_1100;
      b=8'b0010_1111;
      c_in=0;
      oper="exnor"; 
    end
    
    
 initial  
   begin
    $monitor("time10:%tns,",$time,"<----> oper=%s,{c_out,sum}=%b,a=%b,b=%b,c_in=%b",oper,{c_out,sum},a,b,c_in);
  end
endmodule      
   
