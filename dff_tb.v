module testbench;
reg clock;
reg D;
wire Q;
wire Qn;
integer i;

d_ff m(clock,D,Rst,Q,Qn);
initial begin
D=0;
#10 D=1;
#10 D=0;
#10 D=0;
#10 D=1;
#10 D=0;
#10 D=1;
#40;
end

initial begin
clock = 0;
for(i=0;i<=10;i=i+1)
#10 
clock = ~clock;
end 

initial begin
$monitor("clock = %d, D=%d, Q=%d ,Qn=%d \n",clock,D,Q,Qn);
end
endmodule