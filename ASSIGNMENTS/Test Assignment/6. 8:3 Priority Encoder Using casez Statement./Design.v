// 8:3 Priority Encoder Using casez Statement
module priority_encoder_8_3 (input [7:0] d, output reg [2:0] y, output reg z);
  always@(*) begin
    z = 1'b1;
    casez(d)
      8'b10000000: y = 3'b111;
      8'b01000000: y = 3'b110;
      8'b00100000: y = 3'b101;
      8'b00010000: y = 3'b100;
      8'b00001000: y = 3'b011;
      8'b00000100: y = 3'b010;
      8'b00000010: y = 3'b001;
      8'b00000001: y = 3'b000;
      default: begin
        y = 3'b000;
        z = 1'b0;
      end
    endcase
  end
endmodule
