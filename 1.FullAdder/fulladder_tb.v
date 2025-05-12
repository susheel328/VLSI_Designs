module fulladder_tb;
 reg a,b,c;
 wire Sum,C;

fa_ha dut(.a(a),.b(b),.c(c),.Sum(Sum),.C(C));

   integer i;
  initial 
     begin
   	$display(" a , b , cin | sum cout ");
   	  for(i=0;i<8;i=i+1)
		begin
	  	  {a,b,c}=i;
	  		 #10;
	 	end
     end
initial 
$monitor (" %b , %b , %b | %b , %b",a,b,c,Sum,C);
endmodule
