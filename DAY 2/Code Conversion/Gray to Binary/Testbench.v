// Gray to binary Tb
module gray_to_binary_tb();
  wire [3:0]b;
  reg [3:0]a;
  
  gray_to_binary dut(.a(a),.b(b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  initial begin
    $monitor("a=%b => b=%b",a,b);
    a = 0101;#10
    a = 0110;#10
    a = 1011;#10
    a = 1101;#10
    $finish;
  end
endmodule
