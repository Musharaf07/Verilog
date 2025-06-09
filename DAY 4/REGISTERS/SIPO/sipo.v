//SIPO
module sipo(output reg [3:0]po,input clk,rst,si);
  reg [3:0] q;
  assign po = q;
  always @(posedge clk) begin
    if (rst==1)
      q <= 4'b0000;
    else begin
      q <= {si,q[3:1]};
    end 
  end
endmodule
