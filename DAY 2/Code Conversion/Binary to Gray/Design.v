// Binary to Gray COnversion
module binary_to_gray(output [2:0]a,input [2:0]b);
  
  assign a[2] = b[2];
  assign a[1] = b[2]^b[1];
  assign a[0] = b[1]^b[0];
  
endmodule
