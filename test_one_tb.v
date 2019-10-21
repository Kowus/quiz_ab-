module testbench_test_one;

	wire Y;
	reg A, B;
	
	test_one testO(A,B,Y);

	
	initial
	begin
    $dumpfile("testOne.vcd");
    $dumpvars(0,testO);
    $display("_________________________________________________");
    $display("|\tA\t|\tB\t|\tY\t|");
		A = 1'b0; B = 1'b0;
    $display("-------------------------------------------------");
		$monitor("|\t%b\t|\t%b\t|\t%b\t|", A, B, Y);
		#10 A = 1'b0; B = 1'b1;
		$monitor("|\t%b\t|\t%b\t|\t%b\t|", A, B, Y);
		#10 A = 1'b1; B = 1'b0;
		$monitor("|\t%b\t|\t%b\t|\t%b\t|", A, B, Y);
		#10 A = 1'b1; B = 1'b1;
		$monitor("|\t%b\t|\t%b\t|\t%b\t|", A, B, Y);
		#100 $finish;
	end
	
endmodule


