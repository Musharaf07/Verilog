//ODD PARITY GENERATOR TB
module t_odd_parity_generator();
  reg t_a,t_b,t_c;
  wire t_p;
  
  odd_parity_generator dut(.a(t_a),.b(t_b),.c(t_c),.p(t_p));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("a=%b b=%b c=%b p=%b ",t_a,t_b,t_c,t_p);
  end
  
  initial begin
    t_a = 0; t_b = 0; t_c = 0; #5
    t_a = 0; t_b = 0; t_c = 1; #5
    t_a = 0; t_b = 1; t_c = 0; #5
    t_a = 0; t_b = 1; t_c = 1; #5
    t_a = 1; t_b = 0; t_c = 0; #5
    t_a = 1; t_b = 0; t_c = 1; #5
    t_a = 1; t_b = 1; t_c = 0; #5
    t_a = 1; t_b = 1; t_c = 1; #5
     $finish();
  end
endmodule
