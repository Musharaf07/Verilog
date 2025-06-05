// Code your testbench here
// or browse Examples
module t_half_subtractor();
  reg t_a;
  reg t_b;
  wire t_c;
  wire t_d;
  
  half_subtractor dut(.a(t_a), .b(t_b), .c(t_c), .d(t_d));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial begin
    t_a=0;
    t_b=0;
    #5
    
    t_a=0;
    t_b=1;
    #5
    
    t_a=1;
    t_b=0;
    #5
    
    t_a=1;
    t_b=1;
    #5
    $finish();
  end
endmodule



