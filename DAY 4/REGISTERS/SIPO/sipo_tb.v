// SIPO TB
module sipo_tb();
  reg clk,rst,si;
  wire [3:0] po;

  sipo dut(.clk(clk), .rst(rst), .si(si), .po(po));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("clk=%b rst=%b si=%b po=%b", clk, rst, si, po);
    clk=1;
    forever #5 clk=~clk;
  end

  initial begin
    rst = 1;
    #5 si=0;
    rst = 0;
    
    si = 1; #5;
    si = 0; #5;
    si = 0; #5;
    si = 1; #5;
    si = 1; #5;
    #200 $finish;
  end
endmodule
