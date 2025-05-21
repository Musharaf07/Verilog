// Code your testbench here
// or browse Examples
module t_encoder8_3();
  reg t_d0,t_d1,t_d2,t_d3,t_d4,t_d5,t_d6,t_d7;
  wire t_a,t_b,t_c;

  
  encoder8_3 dut(.d0(t_d0), .d1(t_d1), .d2(t_d2), .d3(t_d3), .d4(t_d4), .d5(t_d5), .d6(t_d6), .d7(t_d7), .a(t_a), .b(t_b), .c(t_c));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("d0=%b d1=%b d2=%b d3=%b d4=%b d5=%b d6=%b d7=%b a=%b b=%b c=%b ",t_d0,t_d1,t_d2,t_d3,t_d4,t_d5,t_d6,t_d7,t_a,t_b,t_c);
  end
  
  initial begin
    t_d0=1; t_d1=0; t_d2=0; t_d3=0; t_d4=0; t_d5=0; t_d6=0; t_d7=0; #5
    t_d0=0; t_d1=1; t_d2=0; t_d3=0; t_d4=0; t_d5=0; t_d6=0; t_d7=0; #5
    t_d0=0; t_d1=0; t_d2=1; t_d3=0; t_d4=0; t_d5=0; t_d6=0; t_d7=0; #5
    t_d0=0; t_d1=0; t_d2=0; t_d3=1; t_d4=0; t_d5=0; t_d6=0; t_d7=0; #5
    t_d0=0; t_d1=0; t_d2=0; t_d3=0; t_d4=1; t_d5=0; t_d6=0; t_d7=0; #5
    t_d0=0; t_d1=0; t_d2=0; t_d3=0; t_d4=0; t_d5=1; t_d6=0; t_d7=0; #5
    t_d0=0; t_d1=0; t_d2=0; t_d3=0; t_d4=0; t_d5=0; t_d6=1; t_d7=0; #5
    t_d0=0; t_d1=0; t_d2=0; t_d3=0; t_d4=0; t_d5=0; t_d6=0; t_d7=1; #5
    
    $finish();
  end
endmodule
