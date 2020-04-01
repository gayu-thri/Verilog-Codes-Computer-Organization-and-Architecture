module xnorgate_tb;   

reg t_a,t_b,t_c; 
wire t_y;

xnor_gate a1(t_a,t_b,t_c,t_y);

initial
begin
   	$monitor("For time = %0t --- %b xnor %b xnor %b = %b",$time,t_a,t_b,t_c,t_y);
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
