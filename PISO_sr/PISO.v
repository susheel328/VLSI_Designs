module PISO(input [3:0]d,input clk,load, output reg q);
reg [3:0] a;
initial q=0;

always@(posedge clk)
begin
	 if(load) begin
	 a=d; end
	 
	 else begin
	 q = a[0];
	    a = {1'b0,a[3:1]};
	    
	    end
	    
	end
endmodule
