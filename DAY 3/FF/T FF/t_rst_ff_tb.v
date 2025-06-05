// T RST FF TB
module t_ff_tb();
  reg t,rst,clk;
  wire q,qb;
  
  t_ff dut(.t(t),.rst(rst),.clk(clk),.q(q),.qb(qb));
  
  initial begin
    clk = 1;
  forever #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #10 t=0; rst=1; rst=0; #15;
    $display($time,"t=%b,rst=%b,clk=%b,q=%b,qb=%b",t,rst,clk,q,qb);
    #20 t=1; #10;
    $display($time,"t=%b,rst=%b,clk=%b,q=%b,qb=%b",t,rst,clk,q,qb);
    #45;
    $finish;
  end
endmodule
