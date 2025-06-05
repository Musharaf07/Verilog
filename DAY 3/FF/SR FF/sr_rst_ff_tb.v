// SR RST FF TB
module sr_ff_tb();
  reg s,r,rst,clk;
  wire q,qb;
  
  initial begin
    clk = 0;
  end
  
  sr_ff dut(.s(s),.r(r),.rst(rst),.clk(clk),.q(q),.qb(qb));
  
  always begin
    #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("S=%b R=%b RST=%b CLK=%b Q=%b QB=%b",s,r,rst,clk,q,qb);
    rst=0; s=1; r=0;#10 rst=1; s=1; r=0;#10
    rst=0; s=0; r=0;#10 rst=1; s=0; r=0;#10
    rst=0; s=0; r=1;#10 rst=1; s=0; r=1;#10
    rst=0; s=0; r=0;#10 rst=1; s=0; r=0;#10
    rst=0; s=1; r=1;#10 rst=1; s=1; r=1;#10
    $finish;
  end
endmodule
