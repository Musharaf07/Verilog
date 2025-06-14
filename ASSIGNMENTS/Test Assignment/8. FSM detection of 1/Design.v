//FSM detection of 1
module detection_1(input clk,rst,in, output out);
  parameter a=3'd1;
  parameter b=3'd2;
  parameter c=3'd3;
  reg [2:0] st,nxt_st;
  
  always@(posedge clk or negedge rst)begin
    if(rst)
      st <= a ;
    else
      st <= nxt_st;
  end
  
  always@(*)begin
    case(in)
    a : nxt_st = out ? b:a;
    b : nxt_st = out ? c:a;
    c : nxt_st = out ? a:a;
    default :nxt_st = a;
    endcase
  end
  assign out = (st==a)&&(in==1);
endmodule
