// D FF
module d_ff(input d,clk,output reg q, qb);
  always@(posedge clk)begin
    case(d)
      1'b0 : q=0;
      1'b1 : q=1;
    endcase
    qb = ~q;
  end 
endmodule
