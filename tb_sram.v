`timescale 10ns/1ns
`include "sram.v"
module tb_sram;
  wire [7:0]dout;
  reg  [7:0]din;
  reg  [7:0]addr;
  reg       wr,rd,cs;
  
  sram m_sram(dout,din,addr,wr,rd,cs);
  
initial 
begin 
  cs=0;wr=0;rd=1;din=0;addr=0;
  #5 cs=1;wr=1;rd=1;din=8'b0000_0001;addr=8'b0000_0001;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0000_0001;
  
  #5 cs=1;wr=1;rd=1;din=8'b0000_0100;addr=8'b0000_0010;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0000_0010;
  
  #5 cs=1;wr=1;rd=1;din=8'b0001_0000;addr=8'b0000_0100;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0000_0100;
  
  #5 cs=1;wr=1;rd=1;din=8'b0010_0001;addr=8'b0000_0101;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0000_0101;
  
  #5 cs=1;wr=1;rd=1;din=8'b1000_0001;addr=8'b0000_1001;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0000_1001;
  
  #5 cs=1;wr=1;rd=1;din=8'b0110_0001;addr=8'b0000_0001;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0000_0001;
  
  #5 cs=1;wr=1;rd=1;din=8'b0000_1111;addr=8'b0010_0001;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0010_0001;
  
  #5 cs=1;wr=1;rd=1;din=8'b0110_0101;addr=8'b1000_0001;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b1000_0001;
  
  #5 cs=1;wr=1;rd=1;din=8'b1010_1001;addr=8'b0110_0001;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0110_0001;
  
  #5 cs=1;wr=1;rd=1;din=8'b1010_0101;addr=8'b0010_1001;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0010_1001;
  
  #5 cs=1;wr=1;rd=1;din=8'b0101_0101;addr=8'b0110_0101;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0110_0101;
  
  #5 cs=1;wr=1;rd=1;din=8'b1111_0101;addr=8'b0010_1111;
  #5 cs=1;wr=0;rd=0;din=8'b0000_0001;addr=8'b0010_1111;
  #5 $stop;
  
end
initial
  begin
    $monitor("time14:%tns,",$time,"<--->dout=%b,din=%b,addr=%b,wr=%b,rd=%b,cs=%b",dout,din,addr,wr,rd,cs);
  end
endmodule

  