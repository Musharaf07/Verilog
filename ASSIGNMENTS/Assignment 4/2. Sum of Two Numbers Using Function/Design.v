//Sum of Two Numbers Using Function
module sum_function;
    reg [7:0] a, b;
    wire [7:0] result;
    assign result = add(a, b);
    function [7:0] add;
        input [7:0] x, y;
        begin
            add = x + y;
        end
    endfunction
  initial begin
        a = 8'd10;
        b = 8'd15;
        #10;
        $display("Sum of %d and %d is %d", a, b, result);
    end
endmodule
