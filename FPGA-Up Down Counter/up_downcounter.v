module updown_counter(input clk, reset,ud, output reg[3:0] out,output reg [3:0] anodes = 4'b1110 ,output [7:0]segments
    );
reg [3:0] counter_up;

// up counter
reg clk_divided;
integer count;
localparam div_value = 49999999;   //div_value = ((clk freq)/(2*required freq))-1  , for 1Hz, div_value = 4999999

always@(posedge clk) begin
	if (count == div_value) begin 
	 count=0;
	 clk_divided <= ~clk_divided;end
	else 
	begin
	count = count +1;end
	
end

//4 bit up-down counter (sync)
 

initial out=4'b0000;

always@(posedge clk_divided)
begin 

if(reset) begin
out=4'b0000; end

else if(ud) begin  //count up
out = out+1; end
else begin 	   //count down
out = out-1; end  

end


segment_decoder uut(.digit(out),.segments(segments));
endmodule
