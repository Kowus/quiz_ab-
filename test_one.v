module test_one(
  A,B,Y
);
  input A, B;
	output Y;
  
  assign Y = A & ~B;
endmodule

