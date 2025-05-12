module encoder_tb();
	reg i0,i1,i2,i3;
	wire a,b;
	 
	encoder dut(.a(a),.b(b),.i1(i1),.i2(i2),.i3(i3),.i0(i0));
	initial begin
	 i0=1;i1=0;i2=0;i3=0;#10;
	 i0=0;i1=1;i2=0;i3=0;#10;
	 i0=0;i1=0;i2=1;i3=0;#10;
	 i0=0;i1=0;i2=0;i3=1;#10;
	$monitor(" %b  %b   %b  %b | %b  %b",i0,i1,i2,i3,a,b);
end
endmodule
