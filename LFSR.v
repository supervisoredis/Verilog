`timescale 10ns/1ns
module LFSR(q,clk,rst_n,load,din);
  output reg [1:26]q;
  input            clk;
  input            rst_n;
  input            load;
  input      [1:26]din;
    
  always @(posedge clk)
begin
  if(~rst_n)
          q<=26'b0;
  else if(load)
          q<=din;
  else
  begin
    q[1]  <= q[26];
    q[2]  <= q[1]  ^  q[26];
    q[3]  <= q[2];
    q[4]  <= q[3];
    q[5]  <= q[4];
    q[6]  <= q[5];
    q[7]  <= q[6];
    q[8]  <= q[7]  ^  q[26];
    q[9]  <= q[8]  ^  q[26];
    q[10] <= q[9];
    q[11] <= q[10];
    q[12] <= q[11];
    q[13] <= q[12];
    q[14] <= q[13];
    q[15] <= q[14];
    q[16] <= q[15];
    q[17] <= q[16];
    q[18] <= q[17];
    q[19] <= q[18];
    q[20] <= q[19];
    q[21] <= q[20];
    q[22] <= q[21];
    q[23] <= q[22];
    q[24] <= q[23];
    q[25] <= q[24];
    q[26] <= q[25];
  end
end
endmodule 
    
    
