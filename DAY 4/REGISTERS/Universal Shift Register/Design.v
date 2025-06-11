// UNIVERSAL SHIFT REGISTER
module universal_register(output reg [3:0]out,output reg rout,lout,input [3:0]in,input [1:0] s,input clk,rst,rin,lin);
  
always @(posedge clk) begin
  if (rst) begin
    out  <= 4'b0000;
    rout <= 1'b0;
    lout <= 1'b0;
  end else begin
    case (s)
      2'b01: begin
        rout <= out[0];
        out  <= {rin, out[3:1]};
      end
      2'b10: begin
        lout <= out[3];
        out  <= {out[2:0], lin};
      end
      2'b11: out <= in;
      default: out <= out;
    endcase
  end
end
endmodule
