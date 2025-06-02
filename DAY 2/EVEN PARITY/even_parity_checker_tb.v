//EVEN PARITY CHECKER TB
module t_even_parity_checker();
  reg t_a,t_b,t_c,t_p;
  wire t_e;
  
  even_parity_checker dut(.a(t_a),.b(t_b),.c(t_c),.p(t_p),.e(t_e));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("a=%b b=%b c=%b p=%b e=%b",t_a,t_b,t_c,t_p,t_e);
  end
  
  initial begin
    t_a = 0; t_b = 0; t_c = 0; t_p = 0; #5
    t_a = 0; t_b = 0; t_c = 0; t_p = 1; #5
    t_a = 0; t_b = 0; t_c = 1; t_p = 0; #5
    t_a = 0; t_b = 0; t_c = 1; t_p = 1; #5
    t_a = 0; t_b = 1; t_c = 0; t_p = 0; #5
    t_a = 0; t_b = 1; t_c = 0; t_p = 1; #5
    t_a = 0; t_b = 1; t_c = 1; t_p = 0; #5
    t_a = 0; t_b = 1; t_c = 1; t_p = 1; #5
    t_a = 1; t_b = 0; t_c = 0; t_p = 0; #5
    t_a = 1; t_b = 0; t_c = 0; t_p = 1; #5
    t_a = 1; t_b = 0; t_c = 1; t_p = 0; #5
    t_a = 1; t_b = 0; t_c = 1; t_p = 1; #5
    t_a = 1; t_b = 1; t_c = 0; t_p = 0; #5
    t_a = 1; t_b = 1; t_c = 0; t_p = 1; #5
    t_a = 1; t_b = 1; t_c = 1; t_p = 0; #5
    t_a = 1; t_b = 1; t_c = 1; t_p = 1; #5
     $finish();
  end
endmodule
  

    
    
  
  
    
    
  

