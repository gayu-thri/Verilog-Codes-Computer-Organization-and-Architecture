
module xnor_gate(a,b,c,y);
input a,b;
output y;

assign y= ~(a^b^c);

endmodule