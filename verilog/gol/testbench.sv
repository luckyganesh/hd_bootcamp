// Code your testbench here
// or browse Examples
module test;
  reg clk,initialise;
  reg [2:0][2:0] in;
  wire [2:0][2:0] out;
  
  initial begin
    clk = 0;
    in[0][0] = 0;
    in[0][1] = 1;
    in[0][2] = 0;
    in[1][0] = 0;
    in[1][1] = 1;
    in[1][2] = 0;
    in[2][0] = 0;
    in[2][1] = 1;
    in[2][2] = 0;
    initialise = 1;
    $dumpfile("dump.vcd"); 
    $dumpvars;
    #2 initialise = 0;
  end
  
  gol gol1(out, in, initialise,clk);
  always #1 clk = ~clk;
  always #2 display;
  
  task display;
    begin
      $display("---------------------------------------");
      $display("| %0h | %0h | %0h |",out[0][0],out[0][1],out[0][2]);
      $display("-------------");
      $display("| %0h | %0h | %0h |",out[1][0],out[1][1],out[1][2]);
      $display("-------------");
      $display("| %0h | %0h | %0h |",out[2][0],out[2][1],out[2][2]);
      $display("---------------------------------------");
      
    end
  endtask
endmodule
