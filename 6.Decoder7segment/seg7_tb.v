module seg7_tb();
 reg a,b,c,d;
 wire d1,d2,d3,d4,d5,d6,d7;

seg7 dut(.a(a),.b(b),.c(c),.d(d),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7));

   integer i;
  initial 
     begin
   	$display(" a , b , c , d | d1,d2,d3,d4,d5,d6,d7 ");
   	  for(i=0;i<10;i=i+1)
		begin
	  	  {a,b,c,d}=i;
	  		 #10;
	 	end
     end
initial 
$monitor (" %b , %b , %b  %b | %b ,%b , %b , %b %b , %b , %b",a,b,c,d,d1,d2,d3,d4,d5,d6,d7);
endmodule
