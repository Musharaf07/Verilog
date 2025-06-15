//4-bit Ripple Carry Adder TB
module ripple_carry_adder_tb;
  reg [3:0] a,b;
  reg ci;
  wire [3:0] s;
  wire c;
  ripple_carry_adder dut(.*);
  initial
    begin
     #10; a=4'b1110; b=4'b0100; ci=0; 
     #10; a=4'b1011; b=4'b1010; ci=0; 
    end
  initial
    begin
      $monitor("time=%0t, a=%b b=%b ci=%b s=%b c=%b",$time,a,b,ci,s,c);
    end
endmodule
