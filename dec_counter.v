`timescale 10ns/1ns
module dec_counter(count,clk,reset);
  output reg [3:0]count;
  input clk,reset;
  initial
  begin
   count<=4'b0000;
 end
  always@(posedge clk)
 
  begin
  if(reset)
    count<=4'b0000;
else
  begin
    if(count==4'b1010)
     count<=4'b0000;
   else count<=count+1'b1;
    end
  end
endmodule
      
    
    
