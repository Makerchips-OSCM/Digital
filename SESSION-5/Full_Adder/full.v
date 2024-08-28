module full(
	input a,
	input b,
	input ci,
	output s,
	output co
	);
	
wire s1,k,c;

half ha1(.sout(s1),.cout(k),.a(a),.b(b));
half ha2(.sout(s),.cout(c),.a(s1),.b(ci));

or a1(co,c,k);

endmodule
