module encodertb;
reg [0:7]e;
wire a,b,c;
encoder g1(.e0(e[0]),.e1(e[1]),.e2(e[2]),.e3(e[3]),.e4(e[4]),.e5(e[5]),.e6(e[6]),.e7(e[7]),
.a(a),.b(b),.c(c));
initial 
begin 
e=8'b10000000;
$monitor(" INPUT: e = %b OUTPUT: a =%b b=%b c=%b",e,a,b,c);
#1 e=8'b01000000;
#2 e=8'b00100000;
#3 e=8'b00010000;
#4 e=8'b00001000;
#5 e=8'b00000100;
#6 e=8'b00000010;
#7 e=8'b00000001;
end
endmodule
/*e0= %b e1= %b  e2= %b e3= %b  e4= %b e5= %b  e6= %b  e7= %b ~~~ a = %b b= %b c= %b',
e[0],e[1],e[2],e[3],e[4],e[5],e[6],e[7]*/