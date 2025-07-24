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

module test;
reg a1,a0,b1,b0;
wire lt,gt,eq;
comparator dut(a1,a0,b1,b0,lt,gt,eq);
initial
begin
a1=1;a0=1; b1=1;b0=1; #5
$stop;
end
endmodule
