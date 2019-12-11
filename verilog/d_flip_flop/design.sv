// Code your design here
module dff(i_d,i_clk,o_q);
  input i_d,i_clk;
  output o_q;
  
  reg o_q;
  
  always @ (posedge i_clk)
    begin
    	o_q = i_d;
    end
endmodule
