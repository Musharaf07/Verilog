// Code your testbench here
// or browse Examples
module t_decoder2_4();
  reg t_a;
  reg t_b;
  wire t_d0;
  wire t_d1;
  wire t_d2;
  wire t_d3;
  
  decoder2_4 dut(.a(t_a), .b(t_b), .d0(t_d0), .d1(t_d1), .d2(t_d2), .d3(t_d3));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("a=%b b=%b d0=%b d1=%b d2=%b d3=%b",t_a,t_b,t_d0,t_d1,t_d2,t_d3);
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


