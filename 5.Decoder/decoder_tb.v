module decoder_tb();
reg a,b;
wire d0,d1,d2,d3;
decoder uut(.a(a),.b(b),.d0(d0),.d1(d1),.d2(d2),.d3(d3));
integer i;
 initial 
  begin
   for(i=0;i<4;i=i+1)
    begin
     {a,b}=i;
     #10;
    end
   $monitor("%b  %b  | %b  %b  %b  %b",a,b,d0,d1,d2,d3);
   end
   
endmodule
