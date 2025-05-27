
module vedic_multip_2bit(input [1:0]a,b ,output [3:0]q,output [7:0] segments,output reg [3:0] anodes = 4'b1110);
wire w1,w2,w3,w4;

//assign q[0] = a[0]&b[0];
//assign w1 =a[1]&b[0]; 
//assign w2 = a[0]&b[1];
//assign w3 = a[1]&b[1]; 

//assign q[1] = w1^w2;
//assign w4 = w1&w2;
//assign q[2] = w4^w3;
//assign q[3] = w4&w3;


and (q[0], a[0], b[0]);          // q[0] = a[0] & b[0]
    and (w1, a[1], b[0]);            // w1 = a[1] & b[0]
    and (w2, a[0], b[1]);            // w2 = a[0] & b[1]
    and (w3, a[1], b[1]);            // w3 = a[1] & b[1]

    xor (q[1], w1, w2);              // q[1] = w1 ^ w2
    and (w4, w1, w2);                // w4 = w1 & w2
    xor (q[2], w4, w3);              // q[2] = w4 ^ w3
    and (q[3], w4, w3);              // q[3] = w4 ^ w3
    
    segment_decoder s(.digit(q),.segments(segments));

endmodule
