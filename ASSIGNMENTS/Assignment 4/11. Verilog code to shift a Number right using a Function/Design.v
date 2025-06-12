//Shift a Number Right using a Function
module shift_right;
  reg [15:0] input_data;
  reg [15:0] shifted_data;
  
  function [15:0] shift_right;
    input [15:0] data;
    begin
      shift_right = data >> 4;
    end
  endfunction
  
  initial begin
    input_data = 16'b1010110110001010;
    shifted_data = shift_right(input_data);
    $display("shifted Data: %b",shifted_data);
  end
endmodule
