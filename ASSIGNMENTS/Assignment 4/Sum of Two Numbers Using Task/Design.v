// Sum of two numbers using a task
module task_sum;
  reg [7:0]a,b;
  reg [7:0] sum;
  task calculate_sum;
  input [7:0] x,y;
  output [7:0] total;
  begin
    total = x+y;
  end
  endtask
  initial begin
    a = 7;
    b = 15;
    calculate_sum(a,b,sum);
    $display("sum :%d", sum);
    end
  endmodule
