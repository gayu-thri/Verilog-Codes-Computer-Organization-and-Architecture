module logicgates(a,b,c,d,m,n,o,p,q,f);
input a,b,c,d;
output m,n,o,p,q,f;

	assign m = ~c;
    assign n = b ^ d;
	assign p = m & n;
	assign o = ~a;
	assign q = o & b & c;
	assign f = p | q;

endmodule

