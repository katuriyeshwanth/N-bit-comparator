module comparator(a,b,gt,lt,eq);
parameter n=16;
input [n-1:0]a,b;
output reg gt,lt,eq;
always @(*)
begin
gt=0; lt=0; eq=0;
if (a>b) gt=1;
else if (a<b) lt=1;
else eq=1;
end
endmodule 
