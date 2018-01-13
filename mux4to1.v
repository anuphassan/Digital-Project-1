module mux4to1(sw, f, A, B, C, D);
input [1:0]sw;
input [7:0]A;
input [7:0]B;
input [7:0]C;
input [7:0]D;

output [7:0]f;

assign f[0] = (~sw[0]&~sw[1]&A[0] | sw[1]&~sw[0]&B[0] | ~sw[1]&sw[0]&C[0] | sw[1]&sw[0]&D[0]);
assign f[1] = (~sw[0]&~sw[1]&A[1] | sw[1]&~sw[0]&B[1] | ~sw[1]&sw[0]&C[1] | sw[1]&sw[0]&D[1]);
assign f[2] = (~sw[0]&~sw[1]&A[2] | sw[1]&~sw[0]&B[2] | ~sw[1]&sw[0]&C[2] | sw[1]&sw[0]&D[2]);
assign f[3] = (~sw[0]&~sw[1]&A[3] | sw[1]&~sw[0]&B[3] | ~sw[1]&sw[0]&C[3] | sw[1]&sw[0]&D[3]);
assign f[4] = (~sw[0]&~sw[1]&A[4] | sw[1]&~sw[0]&B[4] | ~sw[1]&sw[0]&C[4] | sw[1]&sw[0]&D[4]);
assign f[5] = (~sw[0]&~sw[1]&A[5] | sw[1]&~sw[0]&B[5] | ~sw[1]&sw[0]&C[5] | sw[1]&sw[0]&D[5]);
assign f[6] = (~sw[0]&~sw[1]&A[6] | sw[1]&~sw[0]&B[6] | ~sw[1]&sw[0]&C[6] | sw[1]&sw[0]&D[6]);
assign f[7] = (~sw[0]&~sw[1]&A[7] | sw[1]&~sw[0]&B[7] | ~sw[1]&sw[0]&C[7] | sw[1]&sw[0]&D[7]);

endmodule