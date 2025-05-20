// Code your testbench here
// or browse Examples
module t_full_adder();
  reg t_a;
  reg t_b;
  reg t_cin;
  wire t_s;
  wire t_cout;
  
  full_adder dut(.a(t_a), .b(t_b), .cin(t_cin), .s(t_s), .cout(t_cout));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial begin
    t_a=0;
    t_b=0;
    t_cin=0;
    #5
    
    t_a=0;
    t_b=0;
    t_cin=1;
    #5
    
    t_a=0;
    t_b=1;
    t_cin=0;
    #5
    
    t_a=0;
    t_b=1;
    t_cin=1;
    #5
    
    t_a=1;
    t_b=0;
    t_cin=0;
    #5
    
    t_a=1;
    t_b=0;
    t_cin=1;
    #5
    
    t_a=1;
    t_b=1;
    t_cin=0;
    #5
    
    t_a=1;
    t_b=1;
    t_cin=1;
    #5
    $finish();
  end
endmodule



