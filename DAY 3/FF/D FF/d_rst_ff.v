// D RST FF 
module d_ff(input d,rst,clk, output reg q,qb);
  always@(posedge clk)begin
    if(rst) q=0;
    case(d)
      1'b0 : q=0;
      1'b1 : q=1;
    endcase
    qb = ~q;
  end 
endmodule
