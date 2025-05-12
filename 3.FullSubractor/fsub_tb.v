module fsub_tb();
reg a,b,c;
wire d,l;

fsub uut(.a(a),.b(b),.c(c),.d(d),.l(l));
initial
 begin
  a=0;b=0;c=0;#10;
  a=0;b=0;c=1;#10;
  a=0;b=1;c=0;#10;
  a=0;b=1;c=1;#10; 
  a=1;b=0;c=0;#10;
  a=1;b=0;c=1;#10;
  a=1;b=1;c=0;#10;
  a=1;b=1;c=1;#10;
 end
endmodule
