
`timescale 10ns/1ns
module wavegen;
  reg x;
  initial 
    begin
      #0 x=0;
      #2 x=1;
      #1 x=0;
      #9 x=1;
      #10 x=0;
      #2 x=1;
      #3 x=0;
      #5 x=1;
    end
    
  initial
    begin
      $monitor("time1:%tns,",$time,"<--->x=%b",x);
    end
  endmodule
  