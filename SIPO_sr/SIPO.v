module SIPO(input d,clk,output reg [3:0]q);
 reg [3:0] a;

 initial begin q=0;a=0; end

 always@(posedge clk)
  begin 
    a <= {a[2:0],d};
    q=a;
 end
 
  
   
  endmodule
