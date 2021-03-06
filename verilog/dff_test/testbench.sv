// Code your testbench here
// or browse Examples
module test;

  reg i_d,i_clk,o_q;
  
  // Instantiate design under test
  dff DFF(.i_d(i_d), .i_clk(i_clk), .o_q(o_q));
          
  initial begin
    i_clk = 0;
    i_d = 0;
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  always #1 i_clk = ~i_clk;
  always #2 i_d = ~i_d;
  always #1 display;
  
  task display;
    $display("i_d:%0h, i_clk:%0h, o_q:%0h",
      i_d,i_clk,o_q);
  endtask

endmodule
