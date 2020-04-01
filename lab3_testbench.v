module universalgates_tb;
reg a,b,c,d;
wire f;
nand_gate2ip g1(c,d,f);
initial
begin
$monitor("a=%b , b =%b , c =%b, d=%b, Output: %b",a,b,c,d,f);
a=0;b=0;c=0;d=0;
#15 $finish;
end
always #8 a=~a;
always #4 b=~b;
always #2 c=~c;
always #1 d=~d; 
/*a=1'b0;
b=1'b0;
c=1'b0;
d=1'b0;

#5 a=1'b0;b=1'b0;c=1'b0;d=1'b1;
#5 a=1'b0;b=1'b0;c=1'b1;d=1'b0;
#5 a=1'b0;b=1'b0;c=1'b1;d=1'b1;
#5 a=1'b0;b=1'b1;c=1'b0;d=1'b0;
#5 a=1'b0;b=1'b1;c=1'b0;d=1'b1;
#5 a=1'b0;b=1'b1;c=1'b1;d=1'b0;
#5 a=1'b0;b=1'b1;c=1'b1;d=1'b1;
#5 a=1'b1;b=1'b0;c=1'b0;d=1'b0;
#5 a=1'b1;b=1'b0;c=1'b0;d=1'b1;
#5 a=1'b1;b=1'b0;c=1'b1;d=1'b0;
#5 a=1'b1;b=1'b0;c=1'b1;d=1'b1;
#5 a=1'b1;b=1'b1;c=1'b0;d=1'b0;
#5 a=1'b1;b=1'b1;c=1'b0;d=1'b1;
#5 a=1'b1;b=1'b1;c=1'b1;d=1'b0;
#5 a=1'b1;b=1'b1;c=1'b1;d=1'b1;*/

endmodule