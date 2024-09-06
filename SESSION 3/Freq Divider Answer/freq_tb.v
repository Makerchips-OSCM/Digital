module freq_tb();
reg tin,clk,rst;
wire q;

freq freq_dut(.clk(clk), .rst(rst), .tin(tin), .q(q));
initial
begin
$dumpfile("test_freq.vcd");
$dumpvars(0,freq_tb);
	clk=1'b0;
	rst=1'b0;
	forever #5 clk=~clk;
end

initial begin
	#5 tin=1'b0;
	
	//@(negedge clk)
	//rst=1'b1;
	//@(negedge clk)
	//rst=1'b0;
	
	
	#5 tin=1'b1;
#100 $finish;
end
endmodule
