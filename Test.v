module test;
reg [15:0] a,b;
wire gt,lt,eq;
comparator dut(a,b,gt,lt,eq);
initial
begin
$monitor($time,"a=%h,b=%h,gt=%b,lt=%b,eq=%b",a,b,gt,lt,eq);
a=16'hffff;b=16'h5555;#5
a=16'h5555;b=16'hffff;#5
a=16'h2222;b=16'h2222;#5
$stop;
end
endmodule
