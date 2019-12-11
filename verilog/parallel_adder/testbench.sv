// Code your testbench here
// or browse Examples
module test;
  
  reg a1,a0,b1,b0,sum2,sum1,sum0;
  
  parallel_adder p1(
    .a0(a0),
    .a1(a1),
    .b0(b0),
    .b1(b1),
    .sum0(sum0),
    .sum1(sum1),
    .sum2(sum2)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    // first a = 0;
    a1 = 0; a0 = 0;
    b1 = 0; b0 = 0; 
    display;
    
    #5
    a1 = 0; a0 = 0;
    b1 = 0; b0 = 1; 
    display;
    
    #5
    a1 = 0; a0 = 0;
    b1 = 1; b0 = 0; 
    display;
    
    #5
    a1 = 0; a0 = 0;
    b1 = 1; b0 = 1;
    //----
    
    #5
    a1 = 0; a0 = 1;
    b1 = 0; b0 = 0; 
    display;
    
    #5
    a1 = 0; a0 = 1;
    b1 = 0; b0 = 1; 
    display;
    
    #5
    a1 = 0; a0 = 1;
    b1 = 1; b0 = 0; 
    display;
    
    #5
    a1 = 0; a0 = 1;
    b1 = 1; b0 = 1;
    //-----
    
    #5
    a1 = 1; a0 = 0;
    b1 = 0; b0 = 0; 
    display;
    
    #5
    a1 = 1; a0 = 0;
    b1 = 0; b0 = 1; 
    display;
    
    #5
    a1 = 1; a0 = 0;
    b1 = 1; b0 = 0; 
    display;
    
    #5
    a1 = 1; a0 = 0;
    b1 = 1; b0 = 1;
    //----
    #5
    a1 = 1; a0 = 1;
    b1 = 0; b0 = 0; 
    display;
    
    #5
    a1 = 1; a0 = 1;
    b1 = 0; b0 = 1; 
    display;
    
    #5
    a1 = 1; a0 = 1;
    b1 = 1; b0 = 0; 
    display;
    
    #5
    a1 = 1; a0 = 1;
    b1 = 1; b0 = 1;
  end
    
  task display;
    #1 $display("a0 : %0h, a1: %0h, b0: %0h, b1: %0h, sum0: %0h, sum1: %0h, sum2: %0h",a0,a1,b0,b1,sum0,sum1,sum2);
  endtask
endmodule
  
