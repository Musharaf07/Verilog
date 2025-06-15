// Comparitor TB
module comparitor_tb();
  reg a,b;
  wire out;
  
  comparitor dut(.out(out),.a(a),.b(b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("a=%b b=%b => out=%b",a,b,out);
  end
  initial begin
    a=0;b=0; #10
    a=0;b=1; #10
    a=1;b=0; #10
    a=1;b=1; #10
    $finish;
  end
endmodule
