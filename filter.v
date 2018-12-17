`timescale 10ns/1ns
module filter(sig_out,clock,reset,sig_in);
  output reg sig_out;
  input  clock;
  input  reset;
  input  sig_in;
  reg   [3:0]D;
  wire   a1,a2,a3,a4,a5;
  
   always @(posedge clock)
   begin 
     if(reset)
     D<=4'b0;
   else 
   begin 
   D[0] <= sig_in;
   D[1] <= D[0];
   D[2] <= D[1];
   D[3] <= D[2];
 end
 end
 
 not n1(a1,D[1]);
 not n2(a2,D[2]);
 not n3(a3,D[3]);
 and and1(a4,D[1],D[2],D[3]);
 and and2(a5,a1,a2,a3);
 
 always @(posedge clock)
  begin 
    if (reset)
     sig_out<=0;
    else 
    begin
      case ({a4,a5})
        2'b00 : sig_out <= sig_out;
        2'b01 : sig_out <= 0;
        2'b10 : sig_out <= 1;
        default : sig_out <= ~sig_out;
      endcase
    end
  end
endmodule
    
  
 
   
   
       
