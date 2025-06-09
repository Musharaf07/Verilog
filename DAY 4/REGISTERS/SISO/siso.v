// SISO - Serial-In Serial-Out (Left shift)
module siso(output reg out, input s, clk, rst);
  reg [3:0] so;
  always @(posedge clk) begin
    if (rst) begin
      so <= 4'b0000;
      out <= 1'b0;
    end else begin
      so <= {so[2:0], s};
      out <= so[3];
    end
  end
endmodule
