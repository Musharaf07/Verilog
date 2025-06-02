// ODD PARITY CHECKER
module odd_parity_checker(input a,b,c,p, output e);
  assign e = ~(a^b^c^p);
endmodule
