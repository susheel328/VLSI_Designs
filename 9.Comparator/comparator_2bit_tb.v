module comparator_2bit_tb();

reg a1,a2,b1,b2;
wire agb,aeb,alb;

comparator_2bit uut(.a1(a1),.a2(a2),.b1(b1),.b2(b2),.agb(agb),.alb(alb),.aeb(aeb));

integer i;
initial begin
	for(i=0;i<16;i=i+1)
	begin
	 {a1,a2,b1,b2}=i;
	 #10;
	end
end
initial
	$monitor("%b  %b  %b  %b | %b  %b  %b",a1,a2,b1,b2,agb,aeb,alb);

endmodule
