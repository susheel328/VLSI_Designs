module fsub(input a,b,c ,output d,l);

assign d = a^b^c;
assign l= ~a&b|~a&c|b&c;

endmodule
