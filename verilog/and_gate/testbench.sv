// Code your testbench here
// or browse Examples
module test;

  reg  in_1,in_2,out;
  
  // Instantiate design under test
  and_gate and1(.in_1(in_1), .in_2(in_2), .out(out));
  
          
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    $display("0,0");
    in_1 = 0;
    in_2 = 0;
    display;
    
    $display("0,1");
	in_2 = 1;
    display;
    
    $display("1,0");
	in_1 = 1;
	in_2 = 0;
    display;
        
    $display("1,1");
	in_2 = 1;
    display;
             
  end
  
  task display;
    #1 $display("in_1:%0h, in_2:%0h, out:%0h",
      in_1,in_2,out);
  endtask

endmodule
