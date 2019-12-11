// Code your design here
module sfr(i_d,i_clk, o_q0, o_q1, o_q2, o_q3);
  input i_d,i_clk;
  output o_q0,o_q1,o_q2,o_q3;
  
  wire w_d1,w_d2,w_d3;
  
  assign w_d1 = o_q0;
  assign w_d2 = o_q1;
  assign w_d3 = o_q2;
  
  reg o_q0;
  reg o_q1;
  reg o_q2;
  reg o_q3;
  
  initial begin
    o_q0 = 1'b0;
    o_q1 = 1'b0;
    o_q2 = 1'b0;
    o_q3 = 1'b0;
  end
  
  always @ (posedge i_clk)
    begin
	  o_q3 = o_q2;
      o_q2 = o_q1;
      o_q1 = o_q0;
      o_q0 = i_d;
    end
endmodule
