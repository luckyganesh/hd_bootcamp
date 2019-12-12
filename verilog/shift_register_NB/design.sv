// Code your design here
module sfr(i_d,i_clk, o_q0, o_q1, o_q2, o_q3);
  input i_d,i_clk;
  output o_q0,o_q1,o_q2,o_q3;
  
  reg o_q0;
  reg o_q1;
  reg o_q2;
  reg o_q3;
  
  initial begin
    o_q0 <= 1'b0;
    o_q1 <= 1'b0;
    o_q2 <= 1'b0;
    o_q3 <= 1'b0;
  end
  
  always @ (posedge i_clk)
    begin
      o_q0 <= i_d;
      o_q1 <= o_q0;
      o_q2 <= o_q1;
      o_q3 <= o_q2;
    end
endmodule
