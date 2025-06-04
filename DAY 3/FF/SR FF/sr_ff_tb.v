// SR FF TB
module sr_ff_tb();
  reg s,r,clk;
  wire q,qb;
  
  initial begin
    clk = 0;
  end
  
  sr_ff dut(.s(s),.r(r),.q(q),.qb(qb),.clk(clk));
  
  always begin
    #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("clk=%b S=%b R=%b Q=%b QB=%b",clk,s,r,q,qb);
  end
  
  initial begin
    s=1; r=0; #10
    s=0; r=0; #10
    s=0; r=1; #10
    s=0; r=0; #10
    s=1; r=1; #10
    $finish;
  end
endmodule
