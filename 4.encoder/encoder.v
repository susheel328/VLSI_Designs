module encoder( input i0,i1,i2,i3,output a,b);
	assign a =i1|i3;
	assign b= i2|i3;

endmodule 
