module RISCVprocessor (clk, rst, out);

	input clk, rst;
	
	output [31:0] out;
	
	
	wire PCsrc, ALUsrc, MemRW, WB, RegRW;
	wire [1:0] immSel;
	wire [2:0] ALUop;
	wire [3:0] status;
	wire [31:0] inst;
	
	controlUnit d0 (inst, status, immSel, ALUsrc, ALUop, MemRW, WB, PCsrc, RegRW);
	
	Datapath d1 (clk, rst, PCsrc, ALUsrc, MemRW, WB, RegRW, immSel, ALUop, status, inst, out);

endmodule
