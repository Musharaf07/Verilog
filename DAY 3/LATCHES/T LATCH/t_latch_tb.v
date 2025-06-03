// T LATCH TB
module t_latch_tb();
  reg t;
  wire q,qb;
  
  t_latch dut(.t(t),.q(q),.qb(qb));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("T=%b Q=%b QB=%b",t,q,qb);
  end
  
  initial begin
    t=1; #10
    t=0; #10
    t=1; #10
    t=0; #10
    $finish;
  end 
endmodule
