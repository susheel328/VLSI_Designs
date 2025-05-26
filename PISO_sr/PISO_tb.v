module PISO_tb;
	reg [3:0]d;
	reg clk,load;
	wire q;
	
PISO dut(.d(d),.clk(clk),.load(load),.q(q));

initial begin
clk=0;
repeat(20) #5 clk=~clk;
end

initial begin
load=1;d=4'b1101;#10;
load=0;

end
endmodule
