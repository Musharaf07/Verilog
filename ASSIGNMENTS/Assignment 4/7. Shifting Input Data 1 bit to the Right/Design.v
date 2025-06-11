// Shifting Input Data 1 bit to the Right.
module shift_right;
  reg [7:0] input_data;
  reg [7:0] shifted_data;
  
  function [7:0] shift_right;
    input [7:0] data;
    begin
      shift_right = data >> 1;
    end
  endfunction
  
  initial begin
    input_data = 8'b10101111;
    shifted_data = shift_right(input_data);
    $display("Shifted Data: %b",shifted_data);
  end
endmodule
