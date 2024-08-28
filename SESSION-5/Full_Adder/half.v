module half(
	input a,
	input b,
	output sout,
	output cout
	);

assign sout = a^b;
assign cout = a&b;

endmodule
	
