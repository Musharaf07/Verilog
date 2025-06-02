// LOGIC GATES TB
module t_logic_gates();
  reg t_a,t_b;
  wire t_and,t_or,t_not,t_nand,t_nor,t_xor,t_xnor;
  
  logic_gates dut(.a(t_a), .b(t_b), .y_and(t_and), .y_or(t_or), .y_not(t_not), .y_nand(t_nand), .y_nor(t_nor), .y_xor(t_xor), .y_xnor(t_xnor));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    $monitor("a=%b b=%b y_and=%b y_or=%b y_not=%b y_nand=%b y_nor=%b y_xor=%b y_xnor=%b",t_a,t_b,t_and,t_or,t_not,t_nand,t_nor,t_xor,t_xnor);
  end
  
  initial begin
    t_a=0; t_b=0; #5
    t_a=0; t_b=1; #5
    t_a=1; t_b=0; #5
    t_a=1; t_b=1; #5
    
    $finish();
  end
endmodule
