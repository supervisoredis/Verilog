`timescale 10ns/1ns
module shift_counter(count,clk,reset);
  output reg [7:0]count;
  input clk,reset;
  reg [4:0]alarm=0;
  
  always @(posedge clk)
  begin
if(alarm==5'b10011)
  alarm<=5'b00001;
else alarm<=alarm+1;
  if (!reset)
    count<=8'b0000_0001;
  else
    begin
      case (alarm)
        5'b00001 : count<=8'b0000_0001;
        5'b00010 : count<=8'b0000_0001;
        5'b00011 : count<=8'b0000_0001;
        5'b00100 : count<=8'b0000_0001;
        5'b00101 : count<=8'b0000_0010;
        5'b00110 : count<=8'b0000_0100;
        5'b00111 : count<=8'b0000_1000;
        5'b01000 : count<=8'b0001_0000;
        5'b01001 : count<=8'b0010_0000;
        5'b01010 : count<=8'b0100_0000;
        5'b01011 : count<=8'b1000_0000;
        5'b01100 : count<=8'b0100_0000;
        5'b01101 : count<=8'b0010_0000;
        5'b01110 : count<=8'b0001_0000;
        5'b01111 : count<=8'b0000_1000;
        5'b10000 : count<=8'b0000_0100;
        5'b10001 : count<=8'b0000_0010;
        5'b10010 : count<=8'b0000_0001;
        default  : count<=1;
      endcase
    end
  end
    endmodule