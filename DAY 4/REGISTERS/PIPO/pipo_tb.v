//   PIPO-right-shift TB
module pipo_tb();
  reg clk, rst;
  reg [3:0] pin;
  wire [3:0] pout;

  pipo dut(.pin(pin), .clk(clk), .rst(rst), .pout(pout));

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("Time=%0t | rst=%b clk=%b pin=%b => pout=%b", $time, rst, clk, pin, pout);
    
    rst = 1; pin = 4'b0000; @(posedge clk);
    rst = 0; pin = 4'b1111; @(posedge clk);
    rst = 1; pin = 4'b0011; @(posedge clk);
    @(posedge clk);
    $finish;
  end
endmodule
