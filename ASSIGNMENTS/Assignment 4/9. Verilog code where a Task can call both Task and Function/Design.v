//Task calling both Task and Function
module task_func;
  reg [31:0] a,b,result;
  
  function [31:0] mul_func;
    input [31:0] x,y;
    begin
      mul_func = x*y;
    end
  endfunction
  
  task print_result_task;
    input [31:0] val;
    begin
      $display("print_result_task : Value = %0d", val);
    end
  endtask
  
  task top_task;
    input [31:0] val1, val2;
    begin
      result = mul_func(val1, val2);
      print_result_task(result);
      $display("top_task : Computed result = %0d", result);
    end
  endtask
  
  initial begin
    a = 8;
    b = 7;
    $display("Initial values: a = %0d, b = %0d", a,b);
    top_task(a,b);
  end
endmodule
