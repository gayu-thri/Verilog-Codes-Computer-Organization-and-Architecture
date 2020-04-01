module notgate_tb;   

reg t_a; 
wire t_y;

not_gate a1(t_a,t_y);

initial
begin
   	$monitor("For time = %0t --- not %b = %b",$time,t_a,t_y);
/* t_a=1'b0;

	#2
	t_a=1'b1;
	
        #3  
  	t_a=1'b1;
	
	#1
        t_a=1'b0;
	
#100 $finish; */

end


endmodule