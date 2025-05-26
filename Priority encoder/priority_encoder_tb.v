`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2025 11:34:58
// Design Name: 
// Module Name: priority_encoder_tb
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


module priority_encoder_tb();
reg [7:0] din;
wire[2:0] dout;
priority_encoder dut (.dout(dout), .din(din) );
initial
begin
din=8'b11001100; #10;
din=8'b01100110; #10;
din=8'b00110011; #10;
din=8'b00010010; #10;
din=8'b00001001; #10;
din=8'b00000100; #10;
din=8'b00000011; #10;
din=8'b00000001; #10;
din=8'b00000000; # 10;
$stop;
end
endmodule
