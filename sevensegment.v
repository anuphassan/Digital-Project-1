module sevensegment(b[3:0], s[6:0]);
output b[3:0];
output reg s[6:0];
always@(b) 
begin
case (b)
4'h0:s=7'b1000000;
4'h1:s=7'b1111001;
4'h2:s=7'b0100100;
4'h3:s=7'b0110000;
4'h4:s=7'b0011001;
4'h5:s=7'b0010010;
4'h6:s=7'b0000010;
4'h8:s=7'b0000000;
4'h9:s=7'b0011000;
4'ha:s=7'b0001000;
4'hb:s=7'b0000011;
4'hc:s=7'b1000110;
4'hd:s=7'b0100001;
4'he:s=7'b0000110;
4'hf:s=7'b0001110;
default:s=00;
endcase
end
endmodule 