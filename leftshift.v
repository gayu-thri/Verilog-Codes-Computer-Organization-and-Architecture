module test;

reg[3:0] x;

initial 
begin 

	x=4'b1100;
	$display ("x before split = %4b",x);

	x = x<<2;
	$display("x after split = %4b",x);
	
end
endmodule	