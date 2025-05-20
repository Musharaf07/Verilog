// Code your design here
module half_subtractor(input a,b, output d,c);
  assign d = a^b;
  assign c = ~a&b;
  
endmodule
