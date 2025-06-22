// Code your design here
// DEMUX 1:4
module demux1_4(input i,s1,s0, output d0,d1,d2,d3);
  assign d0 = i&~s1&~s0 ;
  assign d1 = i&~s1&s0  ;
  assign d2 = i&s1&~s0  ;
  assign d3 = i&s1&s0   ;
  
endmodule
