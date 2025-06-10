//Generate 20 even Numbers Using Function
module generate_numbers;
  function [7:0] get_even;
    input [4:0] index;
    begin
      get_even = index*2;
    end
  endfunction
  
  integer i;
  initial begin
    for (i=0; i<20; i=i+1)
      $display("even[%0d] = %0d",i,get_even(i));
  end
endmodule
