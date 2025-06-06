// SISO 3 bit Right Shift TB
module siso_tb();
  reg clk,rst,si;
  wire so;
  siso dut(clk,rst,si,so);
  initial clk=0;
  always #5 clk=~clk;
  initial begin
    $dumpfile("siso.vcd");
    $dumpvars;
    $monitor("time=%0t clk=%b rst=%b si=%b so=%b",$time,clk,rst,si,so);
    rst = 1;
    #5 si=0;
    rst = 0;
    si=1;#5
    si=1;#5
    si=1;#5
    si=1;#5
    si=0;#5
    si=0;#5
    si=0;#5
    si=1;#5
    #100
    $finish;
  end
endmodule
