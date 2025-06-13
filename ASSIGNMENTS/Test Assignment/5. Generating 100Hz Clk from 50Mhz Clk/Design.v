// Generating 100Hz Clk from 50Mhz Clk
module clk_generation_100Hz (input clk_50MHz,input rst,output reg clk_100Hz);
    reg [17:0] counter;
  always @(posedge clk_50MHz or posedge rst) begin
    if (rst) begin
            counter <= 0;
            clk_100Hz <= 0;
        end
        else begin
            if (counter == 249999) begin 
                counter <= 0;
                clk_100Hz <= ~clk_100Hz; 
            end
            else begin
                counter <= counter + 1;
            end
        end
    end
endmodule
