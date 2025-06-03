// SR LATCH WITH ENABLE TB
module sr_latch_tb();
  reg s,r,en;
  wire q,qb;
  
  sr_latch dut(.s(s),.r(r),.q(q),.qb(qb),.en(en));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("en=%b S=%b R=%b Q=%b QB=%b",en,s,r,q,qb);
  end
  
  initial begin
    en=1; s=1; r=0; #10
    en=0; s=0; r=0; #10
    en=1; s=0; r=1; #10
    en=1; s=0; r=0; #10
    en=0; s=1; r=1; #10
    $finish;
  end 
endmodule
