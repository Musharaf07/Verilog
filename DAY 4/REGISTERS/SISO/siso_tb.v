// SISO - Serial-In Serial-Out (Left shift) TB
module siso_tb();
  reg clk, rst, s;
  wire out;

  siso dut(.s(s), .clk(clk), .rst(rst), .out(out));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("Time=%0t | rst=%b clk=%b s=%b => out=%b", $time, rst, clk, s, out);
    rst = 1; s = 0; #10;
    rst = 0; s = 1; #10;
    s = 1; #10;
    s = 1; #10;
    s = 0; #10;
    s = 1'bx; #10;
    s = 1'bx; #10;
    s = 1'bx; #10;
    s = 1'bx; #10;
    $finish;
  end
endmodule
