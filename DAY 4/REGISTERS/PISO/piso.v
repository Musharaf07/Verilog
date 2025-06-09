//PISO
module piso(output reg so,input [3:0] pi, input clk,load );
  reg [3:0] q;
  
  always @(posedge clk) begin
    if (load)
      q <= pi;
    else
      q <= {q[2:0], 1'b0};
  end

  always @(*) begin
    so = q[3];
  end
endmodule
