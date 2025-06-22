// Code your testbench here
// or browse Examples
module t_demux1_4();
  reg t_i,t_s1,t_s0;
  wire t_d0,t_d1,t_d2,t_d3;

  demux1_4 dut(.i(t_i), .s1(t_s1), .s0(t_s0), .d0(t_d0), .d1(t_d1), .d2(t_d2), .d3(t_d3));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("i=%b s1=%b s0=%b d0=%b d1=%b d2=%b d3=%b",t_i,t_s1,t_s0,t_d0,t_d1,t_d2,t_d3);
  end
  
  initial begin
    t_i=1; t_s1=0; t_s0=0; #5
    t_i=1; t_s1=0; t_s0=1; #5
    t_i=1; t_s1=1; t_s0=0; #5
    t_i=1; t_s1=1; t_s0=1; #5
   
    
    $finish();
  end
endmodule
