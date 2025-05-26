module SIPO_tb;
  reg d,clk;
  wire [3:0]q;
  
  SIPO dut(.d(d),.clk(clk),.q(q));
  
   initial begin clk=0;
   repeat(4) #5 clk=~clk;
  end
  
  //input = 1111
  initial begin
  d=1;#10;
  d=0;#10;
  d=1;#10;
  d=0;#10;
  end
  
  endmodule
