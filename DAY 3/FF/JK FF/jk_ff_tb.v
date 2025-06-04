// JK FF TB
module jk_ff_tb();
  reg j,k,clk;
  wire q,qb;
  
  initial begin
    clk = 0;
  end
  
  jk_ff dut(.j(j),.k(k),.q(q),.qb(qb),.clk(clk));
  
  always begin
    #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("clk=%b J=%b K=%b Q=%b QB =%b",clk,j,k,q,qb);
  end
  
  initial begin
    j=1; k=0; #10
    j=0; k=0; #10
    j=0; k=1; #10
    j=0; k=0; #10
    j=1; k=1; #10
    $finish;
  end
endmodule
