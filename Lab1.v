module Lab1(sw, led, but,
 segmentout1 , segmentout2
);
input [9:0]sw;
input [1:0]but;

reg[1:0]x = 2'b00;
always@(posedge but[0]) begin
x <= x + 1;
end


output [9:0]led;

output [6:0]segmentout1;
output [6:0]segmentout2;
wire [7:0]Mo;
wire [7:0]Lo;
wire [7:0]Co;
wire [7:0]Do;
wire [7:0]seg1;
wire coutA;
//wire [7:0]seg2;
//wire [3:0]o7;






logical log(sw[7:4], sw[3:0], sw[7:0], sw[9:8], Lo);

Arithmetic Atest(sw[7:4], sw[3:0], sw[9:8], coutA, Mo);


assign led[9] = coutA;





comparison comp(sw[7:4], sw[3:0], sw[9:8], Co);


NbitMUX cat(Mo, Lo, Co, Do, x[1:0], seg1[7:0]);



sevensegment display(seg1[3:0], segmentout1);
sevensegment display2(seg1[7:4], segmentout2);

endmodule


module onebitMUX(M,L,C,D,s,Z);
input M;
input L;
input C;
input D;
input [0:1]s;
output Z;


assign Z = (~s[0]&~s[1]&M | s[1]&~s[0]&L | ~s[1]&s[0]&C | s[1]&s[0]&D);
endmodule

module NbitMUX( input [n-1:0]M, input [n-1:0]L, input [n-1:0]C, input [n-1:0]D, input [0:1]s, output [n-1:0]Z);
parameter n = 8;
genvar i;
generate
for(i=0; i<n;i = i + 1)
begin: bitchMuffin
onebitMUX run(M[i], L[i], C[i], D[i], s, Z[i]);
end
endgenerate
endmodule






