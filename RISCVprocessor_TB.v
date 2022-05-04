module RISCVprocessor_TB ();

	reg clk, rst;
	
	wire [31:0] out;
	
	RISCVprocessor dut (clk, rst, out);
	
	initial begin 
		clk = 0;
		rst = 1;
	end
	
	always #10 clk <= ~clk;
	
	always begin
		#15 rst = 0;
		#100 rst = 1;
	end
	
	initial #300 $stop;
	
endmodule
