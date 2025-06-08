//T FF
module t_ff(input t, clk, output reg q, qb);
  initial q=0;
  always@(posedge clk)begin
    case(t)
      1'b0 : q= q ;
      1'b1 : q=~q ;
    endcase
    qb = ~q;
  end 
endmodule
