// Code your testbench here
// or browse Examples
module t_mux4_1();
  reg t_s0,t_s1,t_d0,t_d1,t_d2,t_d3;
  wire t_y;

  mux4_1 dut(.s0(t_s0), .s1(t_s1), .d0(t_d0), .d1(t_d1), .d2(t_d2), .d3(t_d3), .y(t_y));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("s0=%b s1=%b d0=%b d1=%b d2=%b d3=%b y=%b",t_s0,t_s1,t_d0,t_d1,t_d2,t_d3,t_y);
  end
  
  initial begin
    t_s0=0; t_s1=0; t_d0=1; t_d1=0; t_d2=0; t_d3=0; #5
    t_s0=0; t_s1=1; t_d0=0; t_d1=1; t_d2=0; t_d3=0; #5
    t_s0=1; t_s1=0; t_d0=0; t_d1=0; t_d2=1; t_d3=0; #5
    t_s0=1; t_s1=1; t_d0=0; t_d1=0; t_d2=0; t_d3=1; #5
    
    $finish();
  end
endmodule
