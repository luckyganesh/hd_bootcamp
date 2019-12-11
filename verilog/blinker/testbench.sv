// Code your testbench here
// or browse Examples
module test;
  reg clk;
  wire out;
  
  blink blink1(clk,out);
  
  initial begin
    clk = 1;
    
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
  always #1 clk = ~clk;
  
  always #1 display;
  task display;
    $display("clk: %0h, out: %0h", clk, out);
  endtask
endmodule
