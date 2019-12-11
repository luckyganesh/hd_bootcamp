// Code your design here
module multiplexer(a, b, c, d, cs, out);
  input [1:0] a,b,c,d;
  input [1:0] cs;
  output reg [1:0]out;
  
  initial begin
    out = 0;
  end
  
  always @(a,b,c,d,cs) begin
    if(cs == 2'b00)
      out = a;
    else if(cs == 2'b01)
      out = b;
    else if(cs == 2'b10)
      out = c;
    else
      out = d;
  end
endmodule
