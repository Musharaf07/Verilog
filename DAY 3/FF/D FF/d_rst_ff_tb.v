//D RST FF TB
module d_ff_tb();
  reg d,rst,clk;
  wire q,qb;
   
  initial begin
    clk = 0;
  end
  
  d_ff dut(.d(d),.rst(rst),.clk(clk),.q(q),.qb(qb));
  
  always begin
    #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("D=%b RST=%b CLK=%b Q=%b QB=%b",d,rst,clk,q,qb);
    
    rst=0; d=1;#10
    rst=1; d=0;#10
    rst=1; d=1;#10
    rst=0; d=0;#10
    $finish;
  end
endmodule
