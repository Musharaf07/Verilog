// PISO TB
module piso_tb();
  reg clk, load;
  reg [3:0] pi;
  wire so;

  piso dut(.clk(clk), .pi(pi), .so(so), .load(load));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, piso_tb);
    $monitor("clk=%b load=%b pi=%b so=%b", clk, load, pi, so);
  end

  initial begin
    clk = 0;
    pi = 4'b1010; load = 1; #10;
    load = 0;               #40;

    pi = 4'b0101; load = 1; #10;
    load = 0;               #40;

    $finish;
  end

  always #5 clk = ~clk;
endmodule      
