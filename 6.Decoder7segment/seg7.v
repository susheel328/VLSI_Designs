module seg7(input a,b,c,d,output d1,d2,d3,d4,d5,d6,d7);

assign d1 = a|c|(b&d)|(~(b)&~(d));
assign d2 = ~b|(~(c)&~(d))|(c&d);
assign d3 = b|~c|d;
assign d4 = (~(b)&~(d))|(c&~d)|(b&~c&d)|(~b&c)|a;
assign d5 = (~(b)&~(d))|(c&~d);
assign d6 = a|(c&~d)|(b&~c)|(b&~(d));
assign d7 = a|(~b&c)|(b&~c)|(c&~d);

endmodule
