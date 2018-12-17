`timescale 10ns/1ns
`include "mux2x1.v"
module mux4x1(dout, sel, din);
    output dout;
    input [1:0] sel;
    input [3:0] din;
    wire ta, tb;
    mux2x1 a(ta, sel[0], din[1:0]),
           b(tb, sel[0], din[3:2]),
           c(dout, sel[1], {ta, tb});
endmodule