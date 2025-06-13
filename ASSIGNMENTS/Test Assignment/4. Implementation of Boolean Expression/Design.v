//Implementation of given boolean Expression
module gates(input a,b,c,d,e, output y);
  wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
  not #4 g1(w1,b);
  not #4 g2(w2,c);
  not #4 g3(w3,d);
  and #3 g4(w4,a,w1);
  and #3 g5(w9,w4,w2);
  and #3 g6(w6,a,b);
  and #3 g7(w10,w6,e);
  and #3 g8(w7,w1,c);
  and #3 g9(w8,c,w3);
  or #2 g10(w11,w9,w10);
  or #2 g11(w12,w7,w8);
  or #2 g12(y,w11,w12);
endmodule
