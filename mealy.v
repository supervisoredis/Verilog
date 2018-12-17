`timescale 10ns/1ns
module mealy(flag, din, clk, rst);

    output reg flag;
    input din, clk, rst;

    parameter S0 = 8'b0000_0001;  
    parameter S1 = 8'b0000_0010;  
    parameter S2 = 8'b0000_0100;  
    parameter S3 = 8'b0000_1000;  
    parameter S4 = 8'b0001_0000;  
    parameter S5 = 8'b0010_0000;  
    parameter S6 = 8'b0100_0000;  
    parameter S7 = 8'b1000_0000;  

    reg [8:0] state;

    always @ ( posedge rst ) begin
        flag <= 1'b0;
        state <= S0;
    end

    always @ ( posedge clk ) begin
        case (state)
            S0: if (din) begin state <= S0; flag <= 1'b0; end
                else begin state <= S1; flag <= 1'b0; end
            S1: if (din) begin state <= S2; flag <= 1'b0; end
                else begin state <= S1; flag <= 1'b0; end
            S2: if (din) begin state <= S0; flag <= 1'b0; end
                else begin state <= S3; flag <= 1'b0; end
            S3: if (din) begin state <= S4; flag <= 1'b0; end
                else begin state <= S1; flag <= 1'b0; end
            S4: if (din) begin state <= S0; flag <= 1'b0; end
                else begin state <= S5; flag <= 1'b0; end
            S5: if (din) begin state <= S6; flag <= 1'b0; end
                else begin state <= S1; flag <= 1'b0; end
            S6: if (din) begin state <= S0; flag <= 1'b0; end
                else begin state <= S7; flag <= 1'b0; end
            S7: if (din) begin state <= S6; flag <= 1'b1; end
                else begin state <= S1; flag <= 1'b0; end
            default: begin state <= S0; flag <= 1'b0; end
        endcase
    end

endmodule