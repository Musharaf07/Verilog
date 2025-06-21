// Binary to Gray Tb
module binary_to_gray_tb();
  
  reg [2:0] b;
  wire [2:0] a;
  
  binary_to_gray dut(.a(a),.b(b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("B=%b => A=%b",b,a);
  end
  
  initial begin
    b=111;#5
    b=101;#5
    b=001;#5
    b=110;#5
    b=010;#5
	$finish;  
  end
endmodule
