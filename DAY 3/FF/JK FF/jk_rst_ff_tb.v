// JK RST FF
module jk_ff_tb();
  reg j,k,rst,clk,;
  wire q,qb;
  initial begin 
    clk = 0; 
  end
  
  jk_ff dut(.j(j),.k(k),.rst(rst),.clk(clk),.q(q),.qb(qb));
  
  always begin
    #5clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rst=%b clk=%b J=%b K=%b Q=%b Qb=%b",rst,clk,j,k,q,qb);
    rst=1;j=1;k=0;#10
    rst=0;j=0;k=0;#10
    rst=1;j=0;k=1;#10
    rst=0;j=0;k=0;#10
    rst=1;j=1;k=1;#10
    $finish;
  end
endmodule
