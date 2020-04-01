module andgate2ip_tb;   

reg t_a,t_b; 
wire t_y;

and_gate2ip a1(t_a,t_b,t_y);

initial
begin
   	$monitor("For time = %0t --- %b and %b = %b",$time,t_a,t_b,t_y);
/*t_a=1'b0;
t_b=1'b0;


	#2
	t_a=1'b0;
	t_b=1'b1;

        #3  
  	t_a=1'b1;
	t_b=1'b1;

	#1
        t_a=1'b1;
	t_b=1'b0;

#100 $finish;*/

end
endmodule
