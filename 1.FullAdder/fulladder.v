module fulladder(
 input wire x,
 input wire y,
 input wire cin,
 output reg s,
 output reg c);

always @(*) begin
 s=0; c=0;
 
 if ( x==0 && y==0 && cin==0 ) begin
    s=0;
    c=0;
 end
 
 if ( x==0 && y==0 && cin==1 ) begin
    s=1;
    c=0;
 end

 if ( x==0 && y==1 && cin==0 ) begin
    s=1;
    c=0;
 end

 if ( x==0 && y==1 && cin==1 ) begin
    s=0;
    c=1;
 end

 if ( x==1 && y==0 && cin==0 ) begin
    s=1;
    c=0;
 end

 if ( x==1 && y==0 && cin==1 ) begin
    s=0;
    c=1;
 end

 if ( x==1 && y==1 && cin==0 ) begin
    s=0;
    c=1;
 end

 if ( x==1 && y==1 && cin==1 ) begin
    s=1;
    c=1;
 end
end 
endmodule
