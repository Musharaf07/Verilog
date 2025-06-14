//Generate Random Numbers Between -100 to 100
module random_generator;
  integer random_num;
  integer i;
  initial begin
    $display("Random Numbers between -100 and 100:");
    for (i = 0; i < 20; i = i + 1) begin
      random_num = ($urandom % 201) - 100;  
      $display("Random[%0d] = %0d", i, random_num);
    end
  end
endmodule
