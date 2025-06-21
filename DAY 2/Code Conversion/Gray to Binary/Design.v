// Gray to Binary
module gray_to_binary(output [3:0]b,input [3:0]a);
  
  assign b[3] = a[3];
  assign b[2] = a[2]^b[3];
  assign b[1] = a[1]^b[2];
  assign b[0] = a[0]^b[1];

endmodule
