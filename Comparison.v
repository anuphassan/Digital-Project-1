module comparison(a,b, sw, f);
input [3:0]a;
input [3:0]b;
input [1:0]sw;
output [7:0]f;

wire [7:0]A;
wire [7:0]B;
wire [7:0]C;
wire [7:0]D;

Equal eqtest(a, b, A);
Greater Grtest(a, b, B);
Less letest(a,b,C);
Maximum maxtest(a,b, D);

mux4to1 muxC(sw, f, A, B, C, D);

endmodule





module Equal( input [3:0]x, input [3:0]y, output reg [3:0]sol);
always@(x,y)
begin
if(x == y)
sol = 1;
else
sol = 0;
end
endmodule


module Greater( input [3:0]x, input [3:0]y, output reg [7:0]sol);
always@(x,y)
begin
if(x > y)
sol = 1;
else
sol = 0;
end
endmodule

module Less( input [3:0]x, input [3:0]y, output reg [7:0]sol);
always@(x,y)
begin
if(x < y)
sol = 1;
else
sol = 0;
end
endmodule

module Maximum( input [3:0]x, input [3:0]y, output reg [7:0]sol);
always@(x,y)
begin
if(x > y)
sol = x;
else if(x==y)
sol = 0;
else
sol = y;
end
endmodule
