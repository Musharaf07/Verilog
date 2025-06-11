// UNIVERSAL SHIFT REGISTER TB
module universal_register_tb();
  reg clk,rst,rin,lin;
  reg [3:0] in;
  reg [1:0] s;
  wire [3:0]out;
  wire rout,lout;
  initial clk=1;
  
  universal_register dut(.s(s),.clk(clk),.rst(rst),.out(out),.rin(rin),.rout(rout),.lin(lin),.lout(lout),.in(in));
  
  always begin
      #5clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("rst=%b s=%b in=%b rin=%b lin=%b => out=%b rout=%b lout=%b",rst,s,in,rin,lin,out,rout,lout);
  rst = 1; s = 2'b00; in = 4'b0000; rin = 0; lin = 0;
  #10;
  rst = 0;
  s = 2'b11; in = 4'b1010;
  #10;
  s = 2'b01; rin = 1'b1;
  #10;
  s = 2'b10; lin = 1'b0;
  #10;
  
  $finish;
end
endmodule
