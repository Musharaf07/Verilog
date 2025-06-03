// Code your design here
// DEMUX 1:2
module demux1_2(input i,s, output d0,d1);
  assign d0 = i&~s ;
  assign d1 = i&s ;
  
endmodule
