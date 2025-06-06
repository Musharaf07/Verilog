// MUX 8:1 using for loop
module mux8_1(input [7:0] in, input [2:0] s, output reg out);
  integer i;
  always@(*)begin
    out = 0;
    for (i=0; i<8; i=i+1)begin
      if(s ==i)
        out = in[i];
    end 
  end 
endmodule
