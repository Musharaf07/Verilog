// JK LATCH TB
module jk_latch_tb();
  reg j,k;
  wire q,qb;
  
  jk_latch dut(.j(j),.k(k),.q(q),.qb(qb));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("J=%b K=%b Q=%b QB=%b",j,k,q,qb);
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
    
    
