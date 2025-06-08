//T FF TB
module t_ff_tb();
  reg t,clk;
  wire q,qb;
  
  initial begin
    clk = 0;
  end
  t_ff dut(.t(t),.q(q),.qb(qb),.clk(clk));
           
  always begin
    #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("clk=%b T=%b Q=%b QB=%b",clk,t,q,qb);
    t=0; #5
    t=0; #5
    t=1; #5
    t=1; #5
    $finish;
  end
endmodule
