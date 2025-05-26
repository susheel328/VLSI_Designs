module jkff_tb();

reg j,k,clk;
wire q;


jkff uut(.j(j),.k(k),.clk(clk),.q(q));

initial begin
clk=0;
forever #2 clk =~clk;
end


initial begin

j=0;k=0;#10;
j=0;k=1;#10;
j=1;k=0;#10;
j=1;k=1;#10;

$finish;
end

initial
begin
$display("clk	j	k	q");
$monitor("  %b	%b	%b	%b",clk,j,k,q);
end

endmodule
