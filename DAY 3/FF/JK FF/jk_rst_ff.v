//JK FF
module jk_ff(input j,k,rst,clk,output reg q,qb);
  always@(posedge clk)begin
    if(rst) q=0;
    case({j,k})
      2'b00 : q=q;
      2'b01 : q=0;
      2'b10 : q=1;
      2'b11 : q=~q;
    endcase
       qb = ~q;
  end
endmodule
