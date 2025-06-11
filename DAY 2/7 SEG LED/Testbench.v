//7-SEG LED TB
module led_7_led_tb();
  wire [6:0]out;
  reg [3:0]in;
  reg [6:0] check[9:0];
  initial begin
  check[0]=7'b1111110;
  check[1]=7'b0011000;
  check[2]=7'b0110111;
  check[3]=7'b0111101;
  check[4]=7'b1011000;
  check[5]=7'b1101101;
  check[6]=7'b1101111;
  check[7]=7'b0111000;
  check[8]=7'b1111111;
  check[9]=7'b1111001;
  end
  
  led_7_seg dut(.out(out),.in(in));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("in=%b =>out=%b",in,out);
  end
  
  initial begin
    
    for(integer i=0;i<16;i=i+1) begin
      in = i;#2
      if(i<=9 && out==check[i]) $write("pass");
      else if (i>=10 && out==7'b0000000)$write("pass");
      else $write("fail");
    end
  end
endmodule
