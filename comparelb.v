`timescale 10ns/1ns
module comparelb(output y,
               input a,b);
               assign y=(a==b)?1:0;
             endmodule
               