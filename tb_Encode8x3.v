`timescale 10ns/1ns
`include "Encoder8x3.v"
module tb_Encoder8x3;
  wire [2:0]tb_code; //connect output dport
  reg  [7:0]tb_data; //connect input dport
  
  Encoder8x3 m_Encoder8x3(.code(tb_code),.data(tb_data));
  initial
  begin 
    tb_data=8'b0;
    #10 tb_data=8'b0000_0100;
    #10 tb_data=8'b0000_1000;
    #10 tb_data=8'b1000_0000;
    #10 tb_data=8'b0010_0000;
    #10 tb_data=8'b0000_0010;
    #10 tb_data=8'b0000_1000;
    #10 tb_data=8'b0100_0000;
    #10 tb_data=8'b0001_0000;
    #10 tb_data=8'b0000_0100;
    #10 tb_data=8'b0000_0001;
    #10 tb_data=8'b1000_0000;
    #10 $stop;
  end
  initial
  begin
    $monitor("time2:%tns,",$time,"<----> tb_code=%b,tb_data=%b",tb_code,tb_data);
  end
endmodule
