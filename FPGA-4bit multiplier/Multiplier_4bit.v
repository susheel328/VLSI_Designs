
`timescale 1ns / 1ps
module Multiplier_4bit (
    input  wire        clk,
    input [3:0]a,input [3:0] b,
    input  wire        rst,load,reset,
    output reg an2,an3,
    output reg [3:0] din1, din2,// din3, din4, 
    output reg [6:0]   segments, // Seven segment outputs
    output reg [1:0]   anodes    // Anode control signals
);

    reg [3:0] digits [1:0];    // Array of digits to display
    reg digit_select;    // Current digit select
    reg [14:0] refresh_counter; // Refresh rate counter
   // reg [7:0]op
   initial begin
   an2=1;an3=1;end


// multiplier 

always@(posedge clk) begin

if(reset) begin
  {din2,din1}=0; end
  
else begin
  if(load) begin
    {din2,din1}=a*b; end
    end
    
end


    // Initialize digits to display (1234 in this example)
    always @(din1 or din2 ) begin
        digits[0] = din1;
        digits[1] = din2;
       /* digits[2] = din3;
        digits[3] = din4;*/
    end

    // Segment decoder instance
    wire [6:0] decoded_segments;
    segment_decoder seg_dec (
        .digit(digits[digit_select]),
        .segments(decoded_segments)
    );

    // Refresh rate control
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            refresh_counter <= 0;
            digit_select <= 0;
        end else begin
            refresh_counter <= refresh_counter + 1;
            if (refresh_counter == 25000) begin // Adjusted for 0.25 ms refresh rate
                refresh_counter <= 0;
                digit_select <= digit_select + 1;
                if (digit_select == 1)
                    digit_select <= 0;
            end
        end
    end

    // Update segments and anodes
    always @(*) begin
        segments = decoded_segments;
        anodes = 2'b11;
        anodes[digit_select] = 1'b0; // Enable current digit's anode
    end

endmodule
