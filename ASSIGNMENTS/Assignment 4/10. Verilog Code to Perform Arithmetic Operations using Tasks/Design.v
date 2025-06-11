// Perform Arithmetic Operations Using Tasks

module task_arithmetic;
  
  task add(input [15:0] a,b, output [15:0] r);
    r = a + b;
  endtask
  
  task sub(input [15:0] a,b, output [15:0] r);
    r = a - b;
  endtask
  
  task mul(input [15:0] a,b, output [31:0] r);
    r = a * b;
  endtask
  
  task div(input [15:0] a,b, output [15:0] r);
    r = a / b;
  endtask
  
  reg [7:0] ra, rs, rd;
  reg [15:0] rm;
  
  initial begin
    #10 add(52,64,ra);
    #10 sub(89,38,rs);
    #10 mul(54,7,rm);
    #10 div(104,8,rd);
    $display("Add=%0d Sub=%0d Mul=%0d Div=%0d",ra,rs,rm,rd);
  end
endmodule
