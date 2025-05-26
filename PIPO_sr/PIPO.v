module PIPO(input [3:0]d,clk,output reg [3:0]q);
initial q=0;
always@(posedge clk)
begin 

q<=d;

end

endmodule
