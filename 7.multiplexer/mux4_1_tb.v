module Mux_4x1_tb;
	reg a,b,c,d,s1,s2;
	wire op;

   Mux_4x1 dut(
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.s1(s1),
	.s2(s2),
	.op(op));

  initial begin
	$display("a b c d | s1 s2 | op");
	$display("--------------------");

 	a=0; b=0; c=0; d=0; s1=0; s2=0; #10 ; $display("%b %b %b %b | %b   %b | %b", a, b, c, d, s1, s2, op);
	a=1; b=0; c=0; d=0; s1=0; s2=0; #10 ; $display("%b %b %b %b | %b   %b | %b", a, b, c, d, s1, s2, op);	
	a=0; b=0; c=0; d=0; s1=0; s2=1; #10 ; $display("%b %b %b %b | %b   %b | %b", a, b, c, d, s1, s2, op);
	a=0; b=1; c=0; d=0; s1=0; s2=1; #10 ; $display("%b %b %b %b | %b   %b | %b", a, b, c, d, s1, s2, op);	
	a=0; b=0; c=0; d=0; s1=1; s2=0; #10 ; $display("%b %b %b %b | %b   %b | %b", a, b, c, d, s1, s2, op);
	a=0; b=0; c=1; d=0; s1=1; s2=0; #10 ; $display("%b %b %b %b | %b   %b | %b", a, b, c, d, s1, s2, op);
	a=0; b=0; c=0; d=0; s1=1; s2=1; #10 ; $display("%b %b %b %b | %b   %b | %b", a, b, c, d, s1, s2, op);
  	a=0; b=0; c=0; d=1; s1=1; s2=1; #10 ; $display("%b %b %b %b | %b   %b | %b", a, b, c, d, s1, s2, op);

	$finish;
   end
endmodule
