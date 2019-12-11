// Code your testbench here
// or browse Examples
module test;
  reg a,b,cs;
  wire o;
  
  multiplexer m1(a,b,cs,o);
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars;
    
    a = 0;
    b = 0;
    cs = 0;
    display;
    
    #1 
    a = 1;
    b = 0;
    cs = 0;
    display;
    
    #1 
    a = 1;
    b = 0;
    cs = 1;
    display;
    
    #1 
    a = 0;
    b = 1;
    cs = 1;
    display;
  end
  
  task display;
   $display("a: %0h, b: %0h, cs: %0h, o: %0h",a,b,cs,o);
  endtask
endmodule
