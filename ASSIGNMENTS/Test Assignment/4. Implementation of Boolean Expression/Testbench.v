//Implementation of given boolean Expression Tb
module gates_tb;
  reg a,b,c,d,e;
  wire y;
  
  gates duv(a,b,c,d,e,y);
  initial begin
    $monitor("time=%0t a=%b b=%b c=%b d=%b  e=%b y=%b",$time,a,b,c,d,e,y);
    a=0;b=1;c=0;d=1;e=0; #10;
    a=0;b=1;c=0;d=1;e=0; #10;
    a=1;b=0;c=1;d=0;e=1; #10;
    a=0;b=0;c=0;d=0;e=1; #10;
    a=1;b=0;c=1;d=1;e=0; #10;
    a=0;b=1;c=0;d=0;e=0; #10;
    #50; $finish;
  end
endmodule
