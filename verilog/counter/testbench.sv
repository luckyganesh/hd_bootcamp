// Code your testbench here
// or browse Examples
module test;
  reg clk,q0,q1,q2,q3;

  counter counter1(clk,q0,q1,q2,q3);

  initial begin
    clk = 1;

    $dumpfile("dump.vcd");
    $dumpvars(1);
  end

  always #1 clk = ~clk;

  always #1 display;
  task display;
    $display("clk:%0h, q0:%0h, q1:%0h, q2:%0h, q3:%0h",clk,q0,q1,q2,q3);
  endtask
endmodule
