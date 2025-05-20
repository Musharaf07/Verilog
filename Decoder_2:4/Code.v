// Code your design here
// DECODER 2:4
module decoder2_4(input a,b, output d0,d1,d2,d3);
  assign d0 = ~a&~b  ;
  assign d1 = ~a&b   ;
  assign d2 =  a&~b  ;
  assign d3 =  a&b   ;
  
endmodule
