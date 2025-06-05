// SR RST FF
module sr_ff(input s,r,rst,clk, output reg q,qb);
  always@(posedge clk)begin
    if(rst) q<=0;
    case({s,r})
      2'b00 : q<=q    ;
      2'b01 : q<=0    ; 
      2'b10 : q<=1    ;
      2'b11 : q<=1'bx ;
    endcase
      qb <= ~q;
  end
endmodule
      
