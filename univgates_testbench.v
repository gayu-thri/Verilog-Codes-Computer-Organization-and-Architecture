module andgate_tb;   

reg A,B; 
wire NAND,NOR,NOT,XNOR,XOR;

gates g1(A,B,NAND,NOR,NOT,XNOR,XOR);

initial
begin
   	$monitor("For time = %0t --- %b and %b and %b = %b",$time,A,B,NAND,NOR,NOT,XNOR,XOR);
t_a=1'b0;
t_b=1'b0;
t_c=1'b0;

	#2
	t_a=1'b0;
	t_b=1'b1;
	t_c=1'b1;
        #3  
  	t_a=1'b1;
	t_b=1'b1;
	t_c=1'b1;
	#1
        t_a=1'b1;
	t_b=1'b0;
	t_c=1'b1;
#100 $finish;

end

endmodule
