//FSM detection of 1 tb
module detection_1_tb;
  reg clk,rst,in;
  wire out;
  
  detection_1 dut(clk,rst,in,out);
  initial clk=0;
  always #5 clk=~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t clk=%d rst=%b in=%b out=%b",$time,clk,rst,in,out);
  end
  initial begin
    rst=0;
    #10 in=0;
    rst=1;
    #10; in=1;
    #10; in=1;
    #10; in=1;
    #10; in=0;
    #10; in=1;
    #10; in=0;
    #10; in=1;
    #10; in=1;
    #10; in=1;
    #200
    $finish;
  end
endmodule
