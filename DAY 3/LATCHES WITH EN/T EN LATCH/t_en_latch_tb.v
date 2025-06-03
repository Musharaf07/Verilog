// T LATCH WITH ENABLE TB
module t_latch_tb();
  reg en,t;
  wire q,qb;
  
  t_latch dut(.en(en),.t(t),.q(q),.qb(qb));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("en=%b T=%b Q=%b QB=%b",en,t,q,qb);
  end
  
  initial begin
    en=1; t=1; #10
    en=1; t=0; #10
    en=0; t=1; #10
    
    $finish;
  end 
endmodule
