//4-bit Ripple Carry Adder
module fa(input a,b,ci, output s,c);
  assign s=a^b^ci;
  assign c=a&b|b&ci|ci&a;
endmodule

module ripple_carry_adder(input[3:0] a,b, input ci, output[3:0] s, output c );
  wire w1,w2,w3;
  fa fa1(a[0],b[0],ci,s[0],w1);
  fa fa2(a[1],b[1],w1,s[1],w2);
  fa fa3(a[2],b[2],w2,s[2],w3);
  fa fa4(a[3],b[3],w3,s[3],c);
endmodule
