module counter(clk, q);
  input clk;
  output reg [3:0]q;
  
  initial begin
    q = 1'b0;
  end
  
  always @ (posedge clk)
    begin
      if( q == 4'b1111 )
        q <= 1'b0;
      else
        q <= q + 1'b1;
    end
endmodule
