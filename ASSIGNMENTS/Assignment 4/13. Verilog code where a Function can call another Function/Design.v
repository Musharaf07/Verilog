// Gray Code Converter Using function calling Another function 
module gray_code_converter;
  function xor_bit;
    input a,b;
    begin
      xor_bit = a ^ b;
    end
  endfunction
  
  function [3:0] binary_to_gray;
    input [3:0] binary;
    begin
      binary_to_gray[3] = binary[3];
      binary_to_gray[2] = xor_bit(binary[3], binary[2]);
      binary_to_gray[1] = xor_bit(binary[2], binary[1]);
      binary_to_gray[0] = xor_bit(binary[1], binary[0]);
    end
  endfunction
  
  reg [3:0] bin;
  reg [3:0] gray;
  integer i;
  
  initial begin
    $display("Binary | Gray");
    for (i = 0; i < 16; i = i + 1) begin
      bin = i[3:0];
      gray = binary_to_gray(bin);
      $display(" %b | %b", bin, gray);
    end
  end
endmodule
      
