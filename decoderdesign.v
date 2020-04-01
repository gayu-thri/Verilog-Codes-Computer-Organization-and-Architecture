module and3ip(a,b,c,y);
input a,b,c;
output y;
assign y=a&b&c;
endmodule

module notgate(a,y);
input a;
output y;
assign y=~a;
endmodule

