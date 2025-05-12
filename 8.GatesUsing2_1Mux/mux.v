module mux(input i0,i1,s,output y);

assign y=(~s&i0)|(s&i1);

endmodule
//------------------------------------------------------------------------
module and_mux(input a,b,output x1);

mux mux1(.i0(0),.i1(b),.s(a),.y(x1));

endmodule

//----------------------------------------------------------------------
module or_mux(input a,b,output x2);

mux mux2(.i0(b),.i1(1),.s(a),.y(x2));

endmodule

//-------------------------------------------------------------------
module nand_mux(input a,b,output x3);

mux mux3(.i0(1),.i1(~b),.s(a),.y(x3));

endmodule

//-----------------------------------------------------------------
module nor_mux(input a,b,output x4);

mux mux4(.i0(~b),.i1(0),.s(a),.y(x4));

endmodule

//-----------------------------------------------------------------

module xor_mux(input a,b,output x5);

mux mux5(.i0(b),.i1(~b),.s(a),.y(x5));

//-----------------------------------------------------------------
endmodule

module not_mux(input a,output x6);

mux mux6(.i0(1),.i1(0),.s(a),.y(x6));

endmodule
//-------------------------------------------------------------------

module xnor_mux(input a,b,output x7);

mux mux7(.i0(~b),.i1(b),.s(a),.y(x7));

endmodule

