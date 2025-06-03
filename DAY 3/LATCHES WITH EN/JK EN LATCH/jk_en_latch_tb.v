// JK LATCH WITH ENABLE TB
module jk_latch_tb();
  reg j,k,en;
  wire q,qb;
  
  jk_latch dut(.j(j),.k(k),.q(q),.qb(qb),.en(en));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("en=%b J=%b K=%b Q=%b QB=%b",en,j,k,q,qb);
  end
  
  initial begin
    en=1; j=1; k=0; #10
    en=0; j=0; k=0; #10
    en=1; j=0; k=1; #10
    en=0; j=0; k=0; #10
    en=1; j=1; k=1; #10
    $finish;
  end 
endmodule
    
    
