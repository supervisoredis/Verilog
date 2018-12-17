`timescale 10ns/1ns
module seq_detect(flag,din,clk,rst_n);
  output reg flag;
  input din,clk,rst_n;
  reg [2:0]prefix;
  
  always @(negedge clk)
  begin
    if(!rst_n)
      begin
        flag<=0;
        prefix<=3'bx;
      end
    else 
      begin
        if(({prefix,din}==4'b1101)||({prefix,din}==4'b0110))
          flag<=1;
        else flag<=0;
      
         prefix={prefix[1:0],din};
      end
  end
endmodule
    