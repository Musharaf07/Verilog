// D LATCH WITH ENABLE TB
module d_latch_tb();
  reg en,d;
  wire q,qb;
  
  d_latch dut(.en(en),.d(d),.q(q),.qb(qb));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("en=%b D=%b Q=%b QB=%b",en,d,q,qb);
  end
  
  initial begin
    en=1; d=1; #10
    en=0; d=0; #10
    en=0; d=1; #10
    en=1; d=0; #10

    $finish;
  end 
endmodule
