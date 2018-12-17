`timescale 10ns/1ns
`include "ones_count.v"
module tb_ones_count;
  wire [3:0]count;
  reg [7:0]dat_in;
  
  ones_count m_ones_count(count,dat_in);
  
  initial 
  begin
    dat_in=8'b0000_0000;
    #10  dat_in=8'b0000_0001;
    #10  dat_in=8'b0000_0011;
    #10  dat_in=8'b0000_0111;
    #10  dat_in=8'b0000_1111;
    #10  dat_in=8'b0001_1111;
    #10  dat_in=8'b0011_1111;
    #10  dat_in=8'b0111_1111;
    #10  dat_in=8'b1111_1111;
    #10  dat_in=8'b0110_0000;
    #10  dat_in=8'b0000_1110;
    #10  dat_in=8'b0100_0101;
    #10  dat_in=8'b0000_0000;
    #10  dat_in=8'b1110_1100;
    #10  dat_in=8'b0110_0101;
    #10  dat_in=8'b1100_1110;
    #10  dat_in=8'b0110_1111;
    #10  dat_in=8'b0110_0010;
    #10 $stop;
  end
  
  initial
  begin
    $monitor("time5:%tns,",$time,"<--->count=%b,dat_in=%b",count,dat_in);
  end
endmodule

    