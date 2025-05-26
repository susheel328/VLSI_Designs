module SISO(input d ,clk,output reg q);
 reg [3:0] a;

 initial begin q=0;a=0; end

 always@(posedge clk)
  begin 
    a <= {a[2:0],d};
    q=a[3];
    end  
  
   
  endmodule
