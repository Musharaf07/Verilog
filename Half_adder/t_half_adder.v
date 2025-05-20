// Code your testbench here
// or browse Examples
module t_half_adder();
  reg t_a;
  reg t_b;
  wire t_c;
  wire t_s;
  
  half_adder dut(.a(t_a), .b(t_b), .c(t_c), .s(t_s));
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



