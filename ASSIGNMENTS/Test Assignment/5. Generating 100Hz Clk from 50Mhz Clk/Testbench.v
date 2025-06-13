// Generating 100Hz Clk from 50Mhz Clk Tb
module clk_generation_100Hz_tb ;
    reg clk_50MHz;
    reg rst;
    wire clk_100Hz;
 clk_generation_100Hz dut (.*);
  
    initial begin
        clk_50MHz = 0;
        forever #10 clk_50MHz = ~clk_50MHz;
    end
  
    initial begin
        rst = 1;
        #100 rst = 0;
        $monitor("Time = %0t ns: clk_100Hz = %b", $time, clk_100Hz);
        #10000000 $finish;
    end
endmodule
