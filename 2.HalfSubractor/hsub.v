`timescale 1ns / 1ps

module hsub(input a,b,output d,e);

 assign d= a^b;
 assign e= ~a&b;
 
endmodule
