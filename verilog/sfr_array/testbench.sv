// Code your testbench here
// or browse Examples
module test;
  reg d;
  reg clk;
  
  wire [3:0] q;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
  	clk = 1'b0;
  	d = 1'b0;
  end
  
  sfr SFR(.i_d(d), .i_clk(clk), .q(q));
  initial begin
	forever begin
      #1 clk = ~clk;
    end
  end
  
  initial begin
    forever begin
      #5 d = ~d;
    end
  end
  
  initial begin
    forever begin
      #(1) display;
    end
  end
  
  task display;
    #1 $display("clk:%0h, d:%0h, q%0h",
                clk,d,q);
  endtask

endmodule
