// Arithmetic Operation Using Different Task
module arithmetic_task;
  reg [7:0] a,b;
  reg [7:0] z;
  
  task addition_task;
    input [7:0] x,y;
    output[7:0] z;
    begin
      z=x+y;
    end
  endtask
  
  task subtraction_task;
    input [7:0] x,y;
    output[7:0] z;
    begin
      z=x-y;
    end
  endtask
  
  task multiplication_task;
    input [7:0] x,y;
    output [7:0] z;
    begin
      z=x*y;
    end
  endtask
  
  task division_task;
    input [7:0] x,y;
    output [7:0] z;
    begin
      z=x/y;
    end
  endtask
  
  initial begin
    a = 8'd24;
    b = 8'd6;
    addition_task(a, b, z);
    $display(" Addition: %d + %d = %d",a,b,z);
    subtraction_task(a, b, z);
    $display(" Subtraction: %d - %d = %d",a,b,z);
    multiplication_task(a, b, z);
    $display(" Multiplication: %d * %d = %d",a,b,z);
    division_task(a, b, z);
    $display(" Subtraction: %d / %d = %d",a,b,z);
  end
endmodule
