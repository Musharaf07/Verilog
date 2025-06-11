// Function Code for Multiplication & Division
module function_mul_div;
  reg [15:0] a,b;
  wire [15:0] mul_rs;
  wire [15:0] div_rs;
  assign mul_rs = mul(a,b);
  assign div_rs = div(a,b);
  function [15:0] mul;
    input [15:0] x,y;
    begin
      mul = x*y;
    end
  endfunction
  function [15:0] div;
    input [15:0] x,y;
    begin
      div = x/y;
    end
  endfunction
  initial begin
    a = 8'd42;
    b = 8'd6;
    #10;
    $display("a=%d b=%d mul=%d div=%d",a,b,mul_rs,div_rs);
  end 
endmodule
