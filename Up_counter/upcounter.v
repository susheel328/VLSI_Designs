module up_counter(input clk, rst, output[3:0] counter
    );
reg [3:0] counter_up;

// up counter
always @(posedge clk or posedge rst)
begin
if(rst)
 counter_up <= 4'd0;
else
 counter_up <= counter_up + 4'd1;
end 
assign counter = counter_up;
endmodule
