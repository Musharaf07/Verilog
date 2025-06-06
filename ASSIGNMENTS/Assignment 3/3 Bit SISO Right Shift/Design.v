// SISO 3 bit Right Shift
module siso(input clk,rst,si, output reg so);
  reg [2:0] sr;
  assign so=sr[0];
  always@(posedge clk)begin
    if(rst)
      sr <=3'b000;
    else begin
      sr <= {sr[1:0],si};
    end 
  end 
endmodule
