//Generate Odd or Even Numbers using a Function.
module generate_numbers;
  function [15:0] x;
    input [7:0] y;
    input z;
    begin
      x = (y*2) + z;
    end
  endfunction
  
  integer i;
  
  initial begin
    $display("Generating Even Numbers :");
    for(i = 0; i < 50; i = i + 1)
      $display("even[%0d] = %0d",i,x(i,0));
    
    $display("\nGenerating Odd numbers :");
    for(i = 0; i < 50; i = i + 1)
      $display("odd[%0d] = %0d",i,x(i,1));
  end
endmodule
