module fulladder_g(
	input a,
	input b,
	input cin,
	output sum,
	output cout
	);
wire w1,w2,w3;
   // always @(*) begin
	xor x1(sum,a,b,cin);
	and a1(w1,a,b);
	and a2(w2,a,cin);
	and a3(w3,b,cin);
	or o1(cout,w1,w2,w3);
   //end
endmodule
