// Code your testbench here
// or browse Examples
module t_decoder3_8();
  reg t_a,t_b,t_c;
  wire t_d0,t_d1,t_d2,t_d3,t_d4,t_d5,t_d6,t_d7;
 
  
  decoder3_8 dut(.a(t_a), .b(t_b), .c(t_c), .d0(t_d0), .d1(t_d1), .d2(t_d2), .d3(t_d3), .d4(t_d4), .d5(t_d5), .d6(t_d6), .d7(t_d7));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("a=%b b=%b c=%b d0=%b d1=%b d2=%b d3=%b d4=%b d5=%b d6=%b d7=%b",t_a,t_b,t_c,t_d0,t_d1,t_d2,t_d3,t_d4,t_d5,t_d6,t_d7);
  end
  
  initial begin
    t_a=0; t_b=0; t_c=0; #5
    t_a=0; t_b=0; t_c=1; #5
    t_a=0; t_b=1; t_c=0; #5
    t_a=0; t_b=1; t_c=1; #5
    t_a=1; t_b=0; t_c=0; #5
    t_a=1; t_b=0; t_c=1; #5
    t_a=1; t_b=1; t_c=0;#5
    t_a=1; t_b=1; t_c=1; #5
 
    $finish();
  end
endmodule
