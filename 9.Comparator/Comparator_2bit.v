module comparator_2bit(input a1,a2,b1,b2,output agb,alb,aeb);

assign agb = (a1&~b1)|(a1&a2&~b2)|(a2&~b1&b2);
assign aeb = (a1&a2&b1&b2)|(~a1&a2&~b1&b2)|(a1&~a2&b1&~b2)|(~a1&~a2&~b1&~b2);
assign alb = (~a1&b1)|(~a1&~a2&b2)|(~a2&b1&b2);

endmodule
