// Code your design here
module multiplexer(a, b, cs, o);
  input a,b,cs;
  output o;
  
  wire s1,s2;
  
  assign s1 = a & (~cs);
  assign s2 = b & cs;
  
  assign o = s1 | s2;
endmodule
  
