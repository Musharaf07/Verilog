// Code your design here
// MUX 2:1
module mux2_1(input s,a,b, output y);
  assign y = (~s&a) | (s&b);
  
endmodule
