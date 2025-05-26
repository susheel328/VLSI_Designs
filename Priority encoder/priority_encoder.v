`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 11:32:45
// Design Name: 
// Module Name: priority_encoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module priority_encoder(dout, din);
output [2:0] dout;
input [7:0] din ;
assign dout = (din[7] ==1'b1 ) ? 3'b111:
(din[6] ==1'b1 ) ? 3'b110:
(din[5] ==1'b1 ) ? 3'b101:
(din[4] ==1'b1) ? 3'b100:
(din[3] ==1'b1) ? 3'b011:
(din[2] ==1'b1) ? 3'b010:
(din[1] ==1'b1) ? 3'b001:
(din[0] ==1'b1) ? 3'b000: 3'bxxx;
endmodule
