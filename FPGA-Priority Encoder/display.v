
`timescale 1ns / 1ps

module segment_decoder (
    input  [3:0] digit,
    output reg [7:0] segments
    
);

    always @(*) begin
        case (digit)
            4'b0000:
            segments = 8'b01000000;  //a,b,c,d,e,f,g,dot (zero)
        4'b0001:
            segments = 8'b11111001;  //one
        4'b0010:
            segments = 8'b10100100;  //two
        4'b0011:
            segments = 8'b10110000;  //three
        4'b0100:
            segments = 8'b10011001;  //four
        4'b0101:
            segments = 8'b10010010;  //five
        4'b0110:
            segments = 8'b10000010;  //six
        4'b0111:
            segments = 8'b11111000;  //seven
        4'b1000:
            segments = 8'b10000000;  //eight
        4'b1001:
            segments = 8'b10010000;  //nine
//        4'b1010:
//           segments = 8'b10001000;  //A
//        4'b1011:
//            segments = 8'b10000011;  //b
//        4'b1100:
//            segments = 8'b11000110;  //C
//        4'b1101:
//            segments = 8'b10100001;  //d
//        4'b1110:
//            segments = 8'b10000110;  //E
//        4'b1111:
//            segments = 8'b10001110;  //F
            default: segments = 7'b11111111; // Blank
        endcase
    end

endmodule
