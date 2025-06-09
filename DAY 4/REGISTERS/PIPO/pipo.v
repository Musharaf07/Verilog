// PIPO-right-shift
module pipo(output reg [3:0]pout,input [3:0]pin,input clk,rst);
  always@(posedge clk) begin
  if(rst) begin
    pout <=4'b0000;
  end
  else begin
   pout <= pin;  
  end
  end
endmodule
