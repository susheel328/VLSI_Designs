module tb_multiplier_2bit();
  
    reg [1:0] a;  // 2-bit input a
    reg [1:0] b;  // 2-bit input b
    wire [3:0]q ; // 4-bit output q

    // Instantiate the 2-bit multiplier
   multip_2bit uut (.a(a),.b(b), .q(q));

    initial begin
        $monitor("Time = %0t, A = %b, B = %b", $time, a, b);

        a = 2'b00; b = 2'b00; #10;
        a = 2'b00; b = 2'b01; #10;
        a = 2'b00; b = 2'b10; #10;
        a = 2'b00; b = 2'b11; #10;
        a = 2'b01; b = 2'b00; #10;
        a = 2'b01; b = 2'b01; #10;
        a = 2'b01; b = 2'b10; #10;
        a = 2'b01; b = 2'b11; #10;
        a = 2'b10; b = 2'b00; #10;
        a = 2'b10; b = 2'b01; #10;
        a = 2'b10; b = 2'b10; #10;
        a = 2'b10; b = 2'b11; #10;
        a = 2'b11; b = 2'b00; #10;
        a = 2'b11; b = 2'b01; #10;
        a = 2'b11; b = 2'b10; #10;
        a = 2'b11; b = 2'b11; #10;

        $finish;
    end
endmodule
