// T RST FF
module t_ff(input t,rst,clk, output reg q,qb);
  always@(posedge clk)begin
    if(rst) begin
      q<=1;
    end
    else  
    case(t)
      1'b0 : q<=1'b0  ;
      1'b1 : q<=1'b1  ;
    endcase
    qb <= ~q;
  end 
endmodule
