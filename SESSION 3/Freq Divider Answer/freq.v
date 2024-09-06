module freq(
input clk,
input rst,
input tin,
output reg q=0
);

always @(posedge clk)
begin
	if (rst)
		q<=0;
	else
	begin
	if(tin)
		q<=~q;
	else
		q<=q;
	end
end
endmodule
