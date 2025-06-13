// 8:3 Priority Encoder Using casez Statement tb
module priority_encoder_8_3_tb;
  reg [7:0] d;
  wire [2:0] y;
  wire z;
  
  priority_encoder_8_3 dut(.d(d), .y(y), .z(z));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, priority_encoder_8_3_tb);
    $monitor("d=%b y=%b z=%b", d, y, z);
    
    d = 8'b00000001; #10;
    d = 8'b00000010; #10;
    d = 8'b00000100; #10;
    d = 8'b00001000; #10;
    d = 8'b00010000; #10;
    d = 8'b00100000; #10;
    d = 8'b01000000; #10;
    d = 8'b10000000; #10;
    d = 8'b00000000; #10;  
    d = 8'b00100100; #10;  
    $finish;
  end
endmodule
