module multi(input [3:0] a,b,output [7:0]p);

wire [3:0] w1,w2,w3,w4,w6,a1;
wire [5:0] w5,w7,a2,a3;

multip_2bit m1(.a(a[1:0]),.b(b[1:0]),.q(w1));
//assign p[1:0]= w1[1:0];
assign w2={2'b00,w1[3:2]};

multip_2bit m2(.a(a[3:2]),.b(b[1:0]),.q(w3));
assign a1=w2+w3;

multip_2bit m3(.a(a[1:0]),.b(b[3:2]),.q(w4));
assign w5={2'b00,w4[3:0]};

multip_2bit m4(.a(a[3:2]),.b(b[3:2]),.q(w6));
assign w7={w6[3:0],2'b00};

assign a2=w5+w7;

assign a3=a1+a2;

assign p={a3,w1[1:0]};

endmodule
