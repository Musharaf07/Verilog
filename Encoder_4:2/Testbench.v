// Code your testbench here
// or browse Examples
module t_encoder4_2();
  reg t_d0,t_d1,t_d2,t_d3;
  wire t_a,t_b;

  
  encoder4_2 dut(.d0(t_d0), .d1(t_d1), .d2(t_d2), .d3(t_d3), .a(t_a), .b(t_b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("d0=%b d1=%b d2=%b d3=%b a=%b b=%b ",t_d0,t_d1,t_d2,t_d3,t_a,t_b);
  end
  
  initial begin
    t_d0=1;t_d1=0;t_d2=0;t_d3=0;#5
    t_d0=0;t_d1=1;t_d2=0;t_d3=0;#5
    t_d0=0;t_d1=0;t_d2=1;t_d3=0;#5
    t_d0=0;t_d1=0;t_d2=0;t_d3=1;#5
    
    $finish();
  end
endmodule


