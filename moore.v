`timescale 10ns/1ns
module moore(flag, din, clk, rst);

    output reg flag;
    input din, clk, rst;

    parameter S0 = 9'b0_0000_0001;  
    parameter S1 = 9'b0_0000_0010;  
    parameter S2 = 9'b0_0000_0100;  
    parameter S3 = 9'b0_0000_1000;  
    parameter S4 = 9'b0_0001_0000;  
    parameter S5 = 9'b0_0010_0000;  
    parameter S6 = 9'b0_0100_0000;  
    parameter S7 = 9'b0_1000_0000;  
    parameter S8 = 9'b1_0000_0000;  

    reg [8:0] state;

    always @ ( posedge rst ) begin
        flag <= 1'b0;
        state <= S0;
    end

    always @ ( posedge clk ) begin
        flag <= (state == S8) ? 1'b1 : 1'b0;
        case (state)
            S0: state <= (din) ? S0 : S1;
            S1: state <= (din) ? S2 : S1;
            S2: state <= (din) ? S0 : S3;
            S3: state <= (din) ? S4 : S1;
            S4: state <= (din) ? S0 : S5;
            S5: state <= (din) ? S6 : S1;
            S6: state <= (din) ? S0 : S7;
            S7: state <= (din) ? S8 : S1;
            S8: state <= (din) ? S0 : S7;
            default: begin state <= S0; flag <= 1'b0; end
        endcase
    end

endmodule