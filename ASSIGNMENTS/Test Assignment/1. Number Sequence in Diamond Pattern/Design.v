//Number Sequence in Diamond Pattern
module seq_shape;
  integer i ,j ,n;
  
  initial begin
    n = 5;
    
    for (i = 1; i <= n; i = i + 1)
      begin
      for (j = 1; j <= n - i; j = j + 1)
        $write(" ");
      for (j = 1; j <= i; j = j + 1)
        $write("%0d ", i);
      $display("");
    end
    
  for (i = n - 1; i >= 1; i = i - 1) 
    begin
    for (j = 1; j <= n - i; j = j + 1)
        $write(" ");
    for (j = 1; j <= i; j = j + 1)
        $write("%0d ", i);
    $display("");
  end
  end
endmodule
