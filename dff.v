module d_ff(input wire clock, input wire D,input Rst,output reg Q,output reg Qn);

always @(negedge Rst or posedge clock)
begin
if(!Rst)
Q=0;
else
Q=D;
Qn=~Q;
end
endmodule