// Code your testbench here
// or browse Examples
module t_mux2_1();
  reg t_a;
  reg t_b;
  reg t_s;
  wire t_y;

  mux2_1 dut(.a(t_a), .b(t_b), .s(t_s), .y(t_y));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("a=%b b=%b s=%b y=%b",t_a,t_b,t_s,t_y);
  end
  
  initial begin
    t_s=0;
    t_a=0;
    t_b=0;
    #5
    
    t_s=0;
    t_a=0;
    t_b=1;
    #5
    
    t_s=0;
    t_a=1;
    t_b=0;
    #5
    
    t_s=0;
    t_a=1;
    t_b=1;
    #5
    
    t_s=1;
    t_a=0;
    t_b=0;
    #5
    
    t_s=1;
    t_a=0;
    t_b=1;
    #5
    
    t_s=1;
    t_a=1;
    t_b=0;
    #5
    
    t_s=1;
    t_a=1;
    t_b=1;
    #5
    $finish();
  end
endmodule


