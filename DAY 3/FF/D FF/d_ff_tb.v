// D FF TB
module d_ff_tb();
  reg d,clk;
  wire q,qb;
  
  initial begin
    clk = 0;
  end
  
  d_ff dut(.d(d),.q(q),.qb(qb),.clk(clk));
  
  always begin
    #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("clk=%b D=%b Q=%b QB=%b",clk,d,q,qb);
  end
  
  initial begin
    d=1; #10
    d=0; #10
    $finish;
  end 
endmodule
