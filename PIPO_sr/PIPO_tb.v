module PIPO_tb;
	reg [3:0]d,clk;
	wire [3:0]q;
PIPO dut(.d(d),.clk(clk),.q(q));
	initial begin clk=0;
	repeat(20) #5 clk=~clk; end
	
	
	initial begin 
	d=4'b1101;
	end
	
endmodule
	
