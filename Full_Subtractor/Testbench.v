// Code your testbench here
// or browse Examples
module t_full_subtractor();
  reg t_a;
  reg t_b;
  reg t_bin;
  wire t_d;
  wire t_bout;
  
  full_subtractor dut(.a(t_a), .b(t_b), .bin(t_bin), .d(t_d), .bout(t_bout));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial begin
    t_a=0;
    t_b=0;
    t_bin=0;
    #5
    
    t_a=0;
    t_b=0;
    t_bin=1;
    #5
    
    t_a=0;
    t_b=1;
    t_bin=0;
    #5
    
    t_a=0;
    t_b=1;
    t_bin=1;
    #5
    
    t_a=1;
    t_b=0;
    t_bin=0;
    #5
    
    t_a=1;
    t_b=0;
    t_bin=1;
    #5
    
    t_a=1;
    t_b=1;
    t_bin=0;
    #5
    
    t_a=1;
    t_b=1;
    t_bin=1;
    #5
    $finish();
  end
endmodule



