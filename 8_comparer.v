`timescale 10ns/1ns
module 8_comparer(y,a,b)
  output [1:0]y;
  input [7:0]a,[7:0]b;
  assign y=(a[7])
