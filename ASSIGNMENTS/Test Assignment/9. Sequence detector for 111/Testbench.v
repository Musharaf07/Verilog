// Sequence detector for 111 TB
module sequence_detector_tb;
  reg in, clk, rst;
  wire out;

  sequence_detector dut (.in(in),.clk(clk),.rst(rst),.out(out));
  
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("test.vcd");
    $dumpvars(0, sequence_detector_tb);
    $monitor("time=%0t in=%b clk=%b rst=%b out=%b", $time, in, clk, rst, out);

    rst = 1;
    in = 0;
    #10 rst = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 1;
    #50 $finish;
  end
endmodule
