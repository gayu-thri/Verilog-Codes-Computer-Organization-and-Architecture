module gates(a,b,c,nand,nor,xor,not,xnor);
input a,b;
output nand;
output nor;
output xor;
output not;
output xnor;
assign nand=~(a&b);
assing nor=~(a|b);
assign not=~a;
assign xor=a^b;
assign xnor=~(a^b);
endmodule