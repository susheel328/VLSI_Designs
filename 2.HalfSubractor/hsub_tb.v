`timescale 1ns / 1ps

module hsub_tb();
reg a,b;
wire d,e;
 hsub uut(.a(a),.b(b),.d(d),.e(e));
 initial
  begin 
   a=0;b=0;#10;
   a=0;b=1;#10;
   a=1;b=0;#10;
   a=1;b=1;#10;
   end
endmodule
