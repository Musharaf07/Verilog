// Full Adder Using Parameter Construct TB
module full_adder_tb;
parameter B = 8;
reg [B-1:0]a;
reg [B-1:0]b;
reg ca;
wire [B-1:0]s;
wire co;

full_adder #(B) dut(a,b,ca,s,co);
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  $monitor("time=%0t a=%b b=%b ca=%b s=%b co=%b",$time,a,b,ca,s,co);
  
  a=8'b01010111; b=8'b00110011; ca=1'b0; #10;
  a=8'b01111001; b=8'b10000011; ca=1'b0; #10;
  a=8'b01101111; b=8'b10101111; ca=1'b0; #10;
  a=8'b01111011; b=8'b10111011; ca=1'b0; #10;
end
endmodule
