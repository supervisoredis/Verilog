`timescale 10ns/1ns
module counter8b_updown(count,clk,reset,dir);
  output reg [7:0]count;
  input clk,reset,dir;

always @(posedge clk)
  begin
    if (reset)
        count<=0;
    else
      begin
        if(dir)
           count<=count+1;
        else 
           count<=count-1;
      end
  end
endmodule
  