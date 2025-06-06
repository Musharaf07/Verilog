// INFINITE CLOCK SIGNAL TB
module infinite_clk_signal_tb();
  wire clk;
  infinite_clk_signal dut(clk);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #300;
    $finish;
  end 
endmodule
