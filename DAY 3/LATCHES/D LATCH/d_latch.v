// D LATCH
module d_latch(output reg q, qb, input d);
  always@(*)begin
    case(d)
      1'b0 : q=0;
      1'b1 : q=1;
    endcase
    qb = ~q;
  end 
endmodule
