module And(input [3:0]a,input [3:0]b,output f1);
assign f1=a[0]&b[0];
assign f1=a[1]&b[1];
assign f1=a[2]&b[2];
assign f1=a[3]&b[3];
endmodule

module Or(input [3:0]a,input [3:0]b,output f2);
assign f2=a[0]|b[0];
assign f2=a[1]|b[1];
assign f2=a[2]|b[2];
assign f2=a[3]|b[3];
endmodule

module Exor(input [3:0]a,input [3:0]b,output f3);
assign f3=a[0]^b[0];
assign f3=a[1]^b[1];
assign f3=a[2]^b[2];
assign f3=a[3]^b[3];

endmodule

module Not(input [7:0]c,output f4);
assign f4=~c[0];
assign f4=~c[1];
assign f4=~c[2];
assign f4=~c[3];
assign f4=~c[4];
assign f4=~c[5];
assign f4=~c[6];
assign f4=~c[7];

endmodule

