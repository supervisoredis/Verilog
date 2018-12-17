`timescale 10ns/1ns
module sram(dout,din,addr,wr,rd,cs);
  output     [7:0]dout;
  input      [7:0]din;
  input      [7:0]addr;
  input           wr,rd,cs;
  reg        [7:0]store[0:255];
  reg        [7:0]d;
  
  assign dout = (cs&&!wr&&!rd) ? d: 8'bz;
  
  always @(cs or posedge wr)
  begin
    if(wr==1)
      begin
          store[addr]<=din;
      end
    end
    always @(cs or rd)
  begin
  if(!rd)
      begin
        if((cs==1)&&(wr==0))
          d<=store[addr];  
      end
    end
  endmodule
  
      
        
  
  