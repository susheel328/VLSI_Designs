module Mux_4x1(	
	input a,b,c,d,s1,s2,
        output op);

 assign op = (~s1 & ~s2 & a) | (~s1 & s2 & b) | (s1 & ~s2 & c) | (s1 & s2 & d);

endmodule 
