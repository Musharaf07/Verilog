// T LATCH WITH ENABLE
module t_latch(output reg q, qb, input en,t);
  initial q=0;
  always@(*)begin
    if(en)begin
      case(t)
      1'b0 : q=q;
      1'b1 : q=~q;
    endcase
    qb = ~q;
    end
  end 
endmodule
