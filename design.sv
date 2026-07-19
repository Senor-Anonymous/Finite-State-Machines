// Code your design here
module bitcheck(
  input wire inp,
  input wire clk,
  output reg [1:0] state,
  output reg out
);
  parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
  always @(negedge clk)
    begin
      case({state,inp})
         3'b000:begin state<=S1; out<=0; end
         3'b001:begin state<=S0; out<=0; end
         3'b010:begin state<=S1; out<=0; end
         3'b011:begin state<=S2; out<=0; end
         3'b100:begin state<=S3; out<=1; end
         3'b101:begin state<=S0; out<=0; end
         3'b110:begin state<=S1; out<=0; end
         3'b111:begin state<=S2; out<=0; end
        default:begin state<=S0; out<=0; end
      endcase
    end
endmodule