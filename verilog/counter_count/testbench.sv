// Code your testbench here
// or browse Examples
module test;
  reg clk;
  reg [3:0] q;
  counter counter1(clk,q);

  initial begin
    clk = 1;

    $dumpfile("dump.vcd");
    $dumpvars(1);
  end

  always #1 clk = ~clk;

  always #1 display;
  task display;
    $display("clk:%0h, q: %0h",clk,q);
  endtask
endmodule
