// Code your design here
// ENCODER 4:2
module encoder4_2(input d0,d1,d2,d3, output a,b);
  assign a = d2|d3  ;
  assign b = d1|d3  ;
endmodule
