module or4ip(y,a,b,c,d);
input a,b,c,d;
output y;
assign y=a|b|c|d;
endmodule

module encoder(e0,e1,e2,e3,e4,e5,e6,e7,a,b,c);
input e0,e1,e2,e3,e4,e5,e6,e7;
output a,b,c;
or4ip or1(a,e4,e5,e6,e7);
or4ip or2(b,e2,e3,e6,e7);
or4ip or3(c,e1,e3,e5,e7);
endmodule


