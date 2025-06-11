//7-SEG LED
module led_7_seg(output reg [6:0]out,input [3:0]in);
  always@(in) begin
  case (in)
    4'b0000 : out = 7'b1111110;
    4'b0001 : out = 7'b0011000;
    4'b0010 : out = 7'b0110111;
    4'b0011 : out = 7'b0111101;
    4'b0100 : out = 7'b1011000;
    4'b0101 : out = 7'b1101101;
    4'b0110 : out = 7'b1101111;
    4'b0111 : out = 7'b0111000;
    4'b1000 : out = 7'b1111111;
    4'b1001 : out = 7'b1111001;
    default : out = 7'b0000000;
  endcase
  end
endmodule
