// Code your design here
module blink(clk, out);
  input clk;
  output reg out;
  
  initial begin
    out = 0;
  end
  
  always @ (posedge clk)
    begin
      out = ~out;
    end
endmodule
