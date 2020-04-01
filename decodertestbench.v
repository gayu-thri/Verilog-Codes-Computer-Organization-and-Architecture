module decodertb;
reg [0:2]i;
wire d0,d1,d2,d3,d4,d5,d6,d7;

not n1(i[0],~a);
not n2(i[1],~b);
not n3(i[2],~c);
and3ip and1(~a,~b,~c,d0);
and3ip and2(~a,~b,i[2]);
and3ip and3(~a,i[1],~c);
and3ip and4(~a,i[1],i[2]);
and3ip and5(i[0],~b,~c);
and3ip and6(i[0],~b,i[2]);
and3ip and7(i[0],i[1],~c);
and3ip and8(i[0],i[1],i[2]);
initial begin
$monitor(" INPUT: i= %b OUTPUT: d0 = %b d1= %b d2= %b d3= %b d4= %b d5= %b d6= %b d7= %b" 
, i,d0,d1,d2,d3,d4,d5,d6,d7);
i=3'b000;
i=3'b001;
i=3'b010;
i=3'b011;
i=3'b100;
i=3'b101;
i=3'b110;
i=3'b111;
end 
endmodule