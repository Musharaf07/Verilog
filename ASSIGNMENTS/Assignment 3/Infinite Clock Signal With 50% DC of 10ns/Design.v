// INFINITE CLOCK SIGNAL
module infinite_clk_signal(output reg clk);
  initial begin
    clk = 0;
    forever begin 
      #10 clk=~clk;
    end
  end
endmodule
