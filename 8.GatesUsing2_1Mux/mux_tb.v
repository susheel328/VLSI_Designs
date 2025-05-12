module mux_tb();

reg a,b;
wire x1,x2,x3,x4,x5,x6,x7;

and_mux uut1(.a(a),.b(b),.x1(x1));
or_mux uut2(.a(a),.b(b),.x2(x2));
nand_mux uut3(.a(a),.b(b),.x3(x3));
nor_mux uut4(.a(a),.b(b),.x4(x4));
xor_mux uut5(.a(a),.b(b),.x5(x5));
not_mux uut6(.a(a),.x6(x6));
xnor_mux uut7(.a(a),.b(b),.x7(x7));

integer i;
initial 
  begin
   for (i=0;i<4;i=i+1)
     begin
       {a,b}=i;
	#10;
     end
end
initial
$monitor(" %b  %b ",a,b); 
endmodule

