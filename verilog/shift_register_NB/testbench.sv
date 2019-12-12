// Code your testbench here
// or browse Examples
module test;
  reg d;
  reg q0;
  reg q1;
  reg q2;
  reg q3;
  reg clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
  	clk = 1'b0;
  	d = 1'b0;
  end
  
  sfr SFR(.i_d(d), .i_clk(clk), .o_q0(q0), .o_q1(q1), .o_q2(q2), .o_q3(q3));
  initial begin
	forever begin
      #1 clk = ~clk;
    end
  end
  
  initial begin
    forever begin
      #2 d = ~d;
    end
  end
  
  initial begin
    forever begin
      #(1) display;
    end
  end
  
  task display;
    #1 $display("clk:%0h, d:%0h, q0:%0h, q1:%0h, q2:%0h, q3:%0h",
      clk,d,q0,q1,q2,q3);
  endtask

endmodule
