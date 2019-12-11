// Code your testbench here
// or browse Examples
module test;
  reg [1:0]a,b,c,d;
  reg [1:0]cs;
  wire [1:0]out;
  
  multiplexer multiplexer1(a,b,c,d,cs,out);
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars;
    
    #1
    a = 0;
    b = 1;
    c = 2;
    d = 3;
    cs = 0;
    display;
    
    #1
    cs = 1;
    display;
    
    #1
    cs = 2;
    display;
    
    #1
    cs = 3;
    display;
    
  end
  task display;
    #1 $display("a: %0h, b: %0h, c: %0h, d:%0h, cs: %0h, out: %0h",a,b,c,d,cs,out);
  endtask
endmodule 
