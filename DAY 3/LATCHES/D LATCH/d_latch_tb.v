// D LATCH TB
module d_latch_tb();
  reg d;
  wire q,qb;
  
  d_latch dut(.d(d),.q(q),.qb(qb));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("D=%b Q=%b QB=%b",d,q,qb);
  end
  
  initial begin
    d=1; #10
    d=0; #10
    d=1; #10
    d=0; #10
    $finish;
  end 
endmodule
    
    
