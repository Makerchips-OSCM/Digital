module alu_tb;

reg [1:0] A, B;
reg [2:0] op;
wire [1:0] result;

alu dut (
    .A(A),
    .B(B),
    .op(op),
    .result(result)
);
initial begin
$dumpfile("test_alu.vcd");
$dumpvars(0,alu_tb);
    A = 8'b10000000;
    B = 8'b00000001;
    op = 3'b000; 
    #10;
    op = 3'b001; 
    #10;
    op = 3'b010; 
    #10;
    op = 3'b011; 
    #10;
    op = 3'b100; 
    #10;
    op = 3'b101; 
    #10;
    op = 3'b110; 
    #10;
    op = 3'b111; 
    #10;


    #10 $finish;
end

endmodule
