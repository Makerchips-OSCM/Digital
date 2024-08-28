module full_tb();

reg a,b,ci;
wire s,co;

full dut(
	.a(a),
	.b(b),
	.ci(ci),
	.s(s),
	.co(co)
	);
	
initial begin
$dumpfile("test_full.vcd");
$dumpvars(0,full_tb);
ci=0;
#5 a=1;
#5 b=1;

#10 $finish;
end

endmodule

