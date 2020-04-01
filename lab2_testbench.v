module logicgates_tb;
reg A,B,C,D;
wire M,N,O,P,Q,F;

		not_gate g1(C,M);
		xor_gate g2(B,D,N);
		and_gate2ip g3(M,N,P);
		not_gate g4(A,O);
		and_gate g5(O,B,C,Q);
		or_gate2ip g6(P,Q,F);
initial 
begin
 $monitor("--- a = %b , b = %b , c = %b , d = %b --- f = %b" ,A,B,C,D,F);

A=1'b0;
B=1'b0;
C=1'b0;
D=1'b0;

 #2 A=1'b0 ;B=1'b0 ;C=1'b0 ;D=1'b1 ;
 #2 A=1'b0 ;B=1'b0 ;C=1'b1 ;D=1'b0 ;
 #2 A=1'b0 ;B=1'b0 ;C=1'b1 ;D=1'b1 ;
 #2 A=1'b0 ;B=1'b1 ;C=1'b0 ;D=1'b0 ;
 #2 A=1'b0 ;B=1'b1 ;C=1'b0 ;D=1'b1 ;
 #2 A=1'b0 ;B=1'b1 ;C=1'b1 ;D=1'b0 ;
 #2 A=1'b1 ;B=1'b1 ;C=1'b1 ;D=1'b1 ;
 #2 A=1'b1 ;B=1'b0 ;C=1'b0 ;D=1'b0 ;
 #2 A=1'b1 ;B=1'b0 ;C=1'b0 ;D=1'b1 ;
 #2 A=1'b1 ;B=1'b0 ;C=1'b1 ;D=1'b0 ;
 #2 A=1'b1 ;B=1'b0 ;C=1'b1 ;D=1'b1 ;
 #2 A=1'b1 ;B=1'b1 ;C=1'b0 ;D=1'b0 ;
 #2 A=1'b1 ;B=1'b1 ;C=1'b0 ;D=1'b1 ;
 #2 A=1'b1 ;B=1'b1 ;C=1'b1 ;D=1'b0 ;
 #2 A=1'b1 ;B=1'b1 ;C=1'b1 ;D=1'b1 ;

end
endmodule
	


			