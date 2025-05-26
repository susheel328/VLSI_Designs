module d_ff_tb();

reg d ;
reg clk;
reg reset;
wire q;

d_ff uut(.d(d),.clk(clk),.reset(reset),.q(q));

initial begin
clk=0;
forever #10 clk =~clk;
end

initial
begin
reset=1;d=0;#10;
reset=0;
d=0;#10;
d=1;#10;
d=0;#10;
d=1;#10;
d=1;#10;
$monitor("%b  %b  | %b",reset,d, clk ); 
end
endmodule
