// Full Adder Using Parameter Construct
module full_adder 
  #(parameter B=8)
  (input [B-1:0]a, input [B-1:0]b, input ca, output [B-1:0] s, output co);
  assign s = a ^ b ^ ca;
  assign co = (a&b) | (b&ca) | (ca&a);
endmodule
