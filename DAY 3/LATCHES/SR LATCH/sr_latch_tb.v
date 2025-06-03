// SR LATCH TB
module sr_latch_tb();
  reg s,r;
  wire q,qb;
  
  sr_latch dut(.s(s),.r(r),.q(q),.qb(qb));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("S=%b R=%b Q=%b QB=%b",s,r,q,qb);
  end
  
  initial begin
    s=1; r=0; #10
    s=0; r=0; #10
    s=0; r=1; #10
    s=0; r=0; #10
    s=1; r=1; #10
    $finish;
  end 
endmodule
