module updown_counter(input clk,reset,ud, output reg [3:0]out);

initial out=4'b0000;

always@(posedge clk)
begin 

if(reset) begin
out=4'b0000; end

else if(ud) begin  //count up
out = out+1; end
else begin 	   //count down
out = out-1; end  

end

endmodule
