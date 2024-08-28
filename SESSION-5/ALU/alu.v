module alu(
    input [7:0] A,
    input [7:0] B,
    input [2:0] op,
    output reg [7:0] result
);

always @(*) begin
    case (op)
        3'b000: result = A + B; 
        3'b001: result = A - B; 
        3'b010: result = ~(A & B); 
        3'b011: result = A ^ B; 
	3'b100: result = ~(A | B); 
	3'b101: result = ~(A ^ B); 
		  
        default: result = 8'b00000000; 
    endcase
end

endmodule
