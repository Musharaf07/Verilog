// EVEN PARITY GENERATOR
module even_parity_generator(input a,b,c, output p);
  assign p = (a^b^c);
endmodule
