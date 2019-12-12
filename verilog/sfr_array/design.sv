// Code your design here
module sfr(i_d,i_clk, q);
  input i_d,i_clk;
  output reg [3:0] q;
  
  initial begin
    q = 1'b0;
  end
  
  always @ (posedge i_clk)
    begin
      q[0] <= i_d;
      q[1] <= q[0];
      q[2] <= q[1];
      q[3] <= q[2];
    end
endmodule
