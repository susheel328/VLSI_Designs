module SISO_tb;
  reg d,clk;
  wire q;
  
  SISO dut(.d(d),.clk(clk),.q(q));
  
   initial begin clk=0;
   repeat(20) #5 clk=~clk;
  end
  
  //input = 1111
  initial begin
  d=1;#10;
  d=0;#10;
  d=1;#10;
  d=0;#10;
  end
  
  endmodule
