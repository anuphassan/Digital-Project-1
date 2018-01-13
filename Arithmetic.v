module Arithmetic(a,b, sw, cout, f);
input [3:0]a;
input [3:0]b;
wire [7:0]c;
assign c[7:4] = a;
assign c[3:0] = b;

input [1:0]sw;
output cout;
wire cout1 , cout2 , cout3 , cout4 ;
output [7:0]f;

wire [7:0]A;
wire [7:0]B;
wire [7:0]C;
wire [7:0]D;

Fulladder add(a, b, A, cout1);
Subtract subtracttest(a, b, B, cout2);
Multiply multtest( c, C, cout3);
Divide divtest(c, D, cout4);

mux4to1 muxA(sw, f, A, B, C, D);

mux4to1 muxcout(sw, cout, cout1, cout2, cout3, cout4);

endmodule











module Fulladder(input [3:0]x, input [3:0]y, output wire [7:0]s, output cout);
parameter cin = 0;
genvar i;
wire c[4:0];
generate
for(i=0; i<=3; i=i+1)begin: stages
add stage(x[i], y[i], c[i], s[i], c[i+1]);
end
endgenerate
assign c[0] = cin;
assign cout = c[4];
//assign s[7:4] = 4'b0000;
endmodule

module add(x,y,cin, s, cout);
input cin,x,y;
output reg s;
output reg cout;
always@(x, y, cin)
begin 
cout = (x&y)|(y&cin)|(x&cin);
s = x^y^cin;
end
endmodule


module Subtract(input [3:0]x, input [3:0]y, output wire [7:0]d, output cout);
parameter cin = 0;
genvar i;
wire c[4:0];
generate
for(i=3; i>=0; i=i-1)begin: stages
sub stage(x[i], y[i], c[i], d[i], c[i+1]);
end
endgenerate
assign c[0] = cin;
assign cout = c[4];
//assign d[7:4] = 4'b0000;
endmodule

module sub(x,y,cin, d, cout);
input cin,x,y;
output reg d;
output reg cout;
always@(x, y, cin)
begin 
cout = (~x&cin)|(~x&y)|(y&cin);
d = x^y^cin;
end
endmodule

module Multiply(input [7:0]i, output [7:0]s1, output cout);
assign cout = i[7];
assign s1[0] = 0;
assign s1[7] = i[6];
assign s1[6] = i[5];
assign s1[5] = i[4];
assign s1[4] = i[3];
assign s1[3] = i[2];
assign s1[2] = i[1];
assign s1[1] = i[0];
endmodule

module Divide(input [7:0]i, output [7:0]s1, output cout);
assign cout = i[0];
assign s1[0] = i[1];
assign s1[1] = i[2];
assign s1[2] = i[3];
assign s1[3] = i[4];
assign s1[4] = i[5];
assign s1[5] = i[6];
assign s1[6] = i[7];
assign s1[7] = 0;
endmodule

