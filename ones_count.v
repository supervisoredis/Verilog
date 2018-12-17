`timescale 10ns/1ns
module ones_count(count,dat_in);
  output [3:0]count;
  input [7:0]dat_in;
  reg [3:0]a;
  reg [3:0]b;
always@(dat_in) 
begin
  b=4'b0000;
  for(a=0;a<8;a=a+1)
  if(dat_in[a]) b=b+1'b1;
  end
  assign count=b;
endmodule