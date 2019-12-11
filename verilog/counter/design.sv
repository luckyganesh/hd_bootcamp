// Code your design here
module dff(clk, d, q);
  input clk,d;
  output reg q;
  
  initial begin
    q = 0;
  end
  
  always @ (posedge clk)
    begin
      q = d;
    end
endmodule

module counter(clk, q0,q1,q2,q3);
  input clk;
  output reg q0,q1,q2,q3;
  
  dff d0(clk, ~q0, q0);
  dff d1(~q0, ~q1, q1);
  dff d2(~q1, ~q2, q2);
  dff d3(~q2, ~q3, q3);
endmodule
