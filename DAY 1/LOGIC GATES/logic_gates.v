// LOGIC GATES
module logic_gates(input a,b, output y_and, y_or, y_not, y_nand, y_nor, y_xor, y_xnor);
  assign y_and  = a&b	 ;
  assign y_or   = a|b	 ;
  assign y_not  = ~a	 ;
  assign y_nand = ~(a&b) ; 
  assign y_nor  = ~(a|b) ;
  assign y_xor  = a^b	 ;
  assign y_xnor = ~(a^b) ;
  
endmodule
