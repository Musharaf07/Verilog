// Sequence detector for 111
module sequence_detector (input in,input clk,input rst, output reg out);
  parameter a = 4'd0, b = 4'd1, c = 4'd2, d = 4'd3;
  reg [3:0] st, nxt_st;
  always @(posedge clk or posedge rst) begin
    if (rst)
      st <= a;
    else
      st <= nxt_st;
  end

  always @(*) begin
    case (st)
      a: nxt_st = in ? b : a;
      b: nxt_st = in ? c : a;
      c: nxt_st = in ? d : a;
      d: nxt_st = in ? b : a;
      default: nxt_st = a;
    endcase
  end

  always @(*) begin
    out = (st == d);
  end
endmodule
