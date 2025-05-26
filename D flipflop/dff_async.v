module d_ff(input d , clk ,reset ,output reg q);

always @(posedge clk or posedge reset)
begin
q<=0;
if(reset == 1)
q<=0;
else
q<=d;
end
endmodule
