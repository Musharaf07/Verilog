// ODD PARITY GENERATOR
module odd_parity_generator(input a,b,c, output p);
  assign p = ~(a^b^c);
endmodule
