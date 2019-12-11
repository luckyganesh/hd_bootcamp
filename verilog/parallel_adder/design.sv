// Code your design here
module HalfAdder(A,B,sum,cout);
  input A,B;
  output sum, cout;
  
  assign sum = A ^ B;
  assign cout = A & B;
endmodule

module FullAdder(A,B,Cin,sum,Cout);
  input A,B,Cin;
  output sum,Cout;
  
  wire first_adder_sum, first_adder_carry;
  wire second_adder_carry;
  
  HalfAdder h1(
    .A(A),
    .B(B),
    .sum(first_adder_sum),
    .cout(first_adder_carry)
  );
  
  HalfAdder h2(
    .A(first_adder_sum),
    .B(Cin),
    .sum(sum),
    .cout(second_adder_carry)
  );
  
  assign Cout = first_adder_carry | second_adder_carry;
endmodule

module parallel_adder(
  a0,a1,
  b0,b1,
  sum0,sum1,sum2
);
  input a0,a1;
  input b0,b1;
  output sum0,sum1,sum2;
  
  wire c1,c2,c3,c4,c5,c6,c7;
  
  FullAdder f0(
    .A(a0),
    .B(b0),
    .Cin(0),
    .sum(sum0),
    .Cout(c1)
  );
  
  FullAdder f1(
    .A(a1),
    .B(b1),
    .Cin(c1),
    .sum(sum1),
    .Cout(sum2)
  );
endmodule
