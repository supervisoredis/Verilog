`timescale 10ns/1ns
module ALU(c_out,sum,oper,a,b,c_in);
  output reg c_out;
  output reg [7:0]sum;
  input [8*15:1]oper;
  input [7:0]a;
  input [7:0]b;
  input c_in;
  
  always@(*)
  begin 
    case (oper)
      "and"        : {c_out,sum}=a+b+c_in;
      "subtract"   : {c_out,sum}=b+~a+c_in;
      "subtract_a" : {c_out,sum}=a+~b+~c_in;
      "or_ab"      : {c_out,sum}={1'b0,a|b};
      "and_ab"     : {c_out,sum}={1'b0,a&b};
      "not_ab"     : {c_out,sum}={1'b0,(~a)&b};
      "exor"       : {c_out,sum}={1'b0,a^b};
      "exnor"      : {c_out,sum}={1'b0,a~^b};
      default      : {c_out,sum}=9'bx;
    endcase
  end
endmodule
        
