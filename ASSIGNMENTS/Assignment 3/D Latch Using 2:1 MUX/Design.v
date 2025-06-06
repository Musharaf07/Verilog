// D LATCH USING 2:1 MUX
module d_latch_using_mux (input d,sel, output reg y);
  always@(*)begin
    if (sel)
      y = d;
    else
      y = y;
  end
endmodule
