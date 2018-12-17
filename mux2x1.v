`timescale 10ns/1ns
module mux2x1(dout, sel, din);
    output dout;
    input sel;
    input [1:0] din;

    bufif0 f1(dout, din[0], sel);
    bufif1 f2(dout, din[1], sel);

endmodule