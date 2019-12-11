
module fulladder_testbench;
	reg a,b,c;
	wire sum,carry;

	full_adder uut (.sum(sum),.cout(carry),.in1(a),.in2(b),.cin(c));

	initial 
		begin
          
	    $dumpfile("dump.vcd");
    	$dumpvars(1);
          a = 0;b = 0;c = 0;
          #10
          a = 0;b = 0;c = 1;
          #10
          a = 0;b = 1;c = 0;
          #10
          a = 0;b = 1;c = 1;
          #10
          a = 1;b = 0;c = 0;
          #10
          a = 1;b = 0;c = 1;
          #10
          a = 1;b = 1;c = 0;
          #10
          a = 1;b = 1;c = 1;
        end
  
  task display;
    #1 $display("a: %0h, b: %0h, c: %0h, sum: %0h, carry: %0h",a,b,c,sum,carry);
  endtask

  
endmodule

