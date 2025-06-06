// D LATCH USING 2:1 MUX TB
module d_latch_using_mux_tb();
  reg d,sel;
  wire y;
  d_latch_using_mux dut(d,sel,y);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    $monitor("time=%0t d=%b sel=%b y=%b",$time,d,sel,y);
    sel=0; d=0; #10
    sel=1; d=0; #10
    sel=1; d=1; #10
    sel=0; d=1; #10
    $finish;
  end
endmodule
