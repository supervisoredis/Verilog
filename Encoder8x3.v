module Encoder8x3(output reg [2:0]code,input [7:0]data);
  always @(*)
  begin
  case  (data)
    8'b0000_0001 : code <= 3'b000 ;
    8'b0000_0010 : code <= 3'b001 ;
    8'b0000_0100 : code <= 3'b010 ;
    8'b0000_1000 : code <= 3'b011 ;
    8'b0001_0000 : code <= 3'b100 ;
    8'b0010_0000 : code <= 3'b101 ;
    8'b0100_0000 : code <= 3'b110 ;
    8'b1000_0000 : code <= 3'b111 ;
    default : code <= 3'bx ;
  endcase
  end
endmodule