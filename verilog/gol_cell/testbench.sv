// Code your testbench here
// or browse Examples
module test;
  reg clk,initialState;
  reg [7:0]neighbouringCells;
  wire out;
    
  initial begin
    clk = 0;
    initialState = 1;
    neighbouringCells = 0;
    
    $dumpfile("dump.vcd"); 
    $dumpvars;
    
    #2 neighbouringCells = 8'b11;
    #2 neighbouringCells = 8'b10;
    #2 neighbouringCells = 8'b10101;
  end
  Cell cell1(out, clk, neighbouringCells, 1);

  always #1 clk = ~clk;
endmodule
