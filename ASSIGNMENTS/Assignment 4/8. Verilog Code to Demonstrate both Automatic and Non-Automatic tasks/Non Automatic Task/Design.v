//Non Automatic Tasks
module non_auto_task;
  reg a;
  initial begin
    non_auto(1);
    non_auto(2);
    non_auto(3);
  end
  task non_auto(input integer a);
    integer temp = 0;
    begin
      temp = temp+a;
      $display("non_auto : temp=%0d",temp);
    end
  endtask
endmodule
