module up_counter(input clk, reset, output[3:0] counter,output reg [3:0] anodes = 4'b1110 ,output [7:0]segments
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

always @(posedge clk_divided or posedge reset)
begin
if(reset==1 || counter_up==4'd9)
 counter_up <= 4'd0;
else
 counter_up <= counter_up + 4'd1;
end 
assign counter = counter_up;

segment_decoder uut(.digit(counter),.segments(segments));
endmodule
