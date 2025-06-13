//Ripple Carry Adder Tb
module test_ripple_carry;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;

    ripple_carry_adder #(4) rca(a, b, cin, sum, cout);

    initial begin
        $dumpfile("ripple.vcd");
        $dumpvars(0, test_ripple_carry);

        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        $display("0 + 0 + 0 = %b (cout=%b)", sum, cout);

        a = 4'b1110; b = 4'b0010; cin = 0; #10;
      $display("14 + 2 + 0 = %b (cout=%b)", sum, cout);

        a = 4'b1011; b = 4'b0100; cin = 1; #10;
      $display("11 + 4 + 1 = %b (cout=%b)", sum, cout);

        $finish;
    end
endmodule
