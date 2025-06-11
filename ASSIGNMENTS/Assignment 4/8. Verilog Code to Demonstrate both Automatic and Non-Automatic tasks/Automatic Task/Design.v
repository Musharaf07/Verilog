//With Automatic Tasks
module with_auto_task;
  reg a;
  initial begin
    with_auto(1);
    with_auto(2);
    with_auto(3);
  end
  task automatic with_auto(input integer a);
    integer temp = 0;
    begin
      temp = temp+a;
      $display("with_auto : temp=%0d",temp);
    end
  endtask
endmodule
