// Code your design here
module full_adder(sum,cout,in1, in2, cin);
	input in1,in2,cin;
	output sum,cout;
    
  	wire in1,in2,cin,sum,cout;
  
  	wire w1,w2,w3;

  xor(sum,in1,in2,cin);
  and(w1,in1,in2);
  and(w2,in2,cin);
  and(w3,in1,cin);
  or(cout,w1,w2,w3);

endmodule
