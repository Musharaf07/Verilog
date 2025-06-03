// Code your testbench here
// or browse Examples
module t_demux1_2();
  reg t_i;
  reg t_s;
  wire t_d0;
  wire t_d1;
  
  demux1_2 dut(.i(t_i), .s(t_s), .d0(t_d0), .d1(t_d1));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("s=%b i=%b d0=%b d1=%b",t_s,t_i,t_d0,t_d1);
  end
  
  initial begin
    t_s=0;
    t_i=0;
    #5
    
    t_s=0;
    t_i=1;
    #5
    
    t_s=1;
    t_i=0;
    #5
    
    t_s=1;
    t_i=1;
    #5
    
    $finish();
  end
endmodule


