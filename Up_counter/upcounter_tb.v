module upcounter_tb();
reg clk, rst;
wire [3:0] counter;

up_counter dut(clk, rst, counter);
initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
rst=1;
#20;
rst=0;
end
endmodule
