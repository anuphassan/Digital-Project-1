module logical(a,b,c, sw, f);
input [3:0]a;
input [3:0]b;
input [7:0]c;
input [1:0]sw;
output [7:0]f;

wire [7:0]A;
wire [7:0]B;
wire [7:0]C;
wire [7:0]D;

Andd andtest(a, b, A);
Orr ortest(a, b, B);
Exorr exortest(a,b,C);
Nott nottest(c,D);

mux4to1 muxL(sw, f, A, B, C, D);

endmodule


module Andd(input [3:0]a,input [3:0]b,output [7:0]f);
assign f[0]=a[0]&b[0];
assign f[1]=a[1]&b[1];
assign f[2]=a[2]&b[2];
assign f[3]=a[3]&b[3];
assign f[7:4] = 4'b0000;
endmodule

module Orr(input [3:0]a,input [3:0]b,output [7:0]f);
assign f[0]=a[0]|b[0];
assign f[1]=a[1]|b[1];
assign f[2]=a[2]|b[2];
assign f[3]=a[3]|b[3];
assign f[7:4] = 4'b0000;
endmodule

module Exorr(input [3:0]a,input [3:0]b,output [7:0]f);
assign f[0]=a[0]^b[0];
assign f[1]=a[1]^b[1];
assign f[2]=a[2]^b[2];
assign f[3]=a[3]^b[3];
assign f[7:4] = 4'b0000;
endmodule

module Nott(input [7:0]c,output [7:0]f);
assign f[0]=~c[0];
assign f[1]=~c[1];
assign f[2]=~c[2];
assign f[3]=~c[3];
assign f[4]=~c[4];
assign f[5]=~c[5];
assign f[6]=~c[6];
assign f[7]=~c[7];
endmodule




