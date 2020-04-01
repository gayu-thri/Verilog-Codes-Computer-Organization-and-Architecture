module tb_ripple;
   reg clk,rst;
 
   wire [3:0] count;
 
   counter g0(.clk(clk),.rst(rst),.count(count));
 
   always #5 clk = ~clk;
 
   initial begin
      rst = 0;
      clk = 0;

 repeat (4) @ (posedge clk);
      rst = 1;
       $monitor("count=%d",count);
      repeat (15) @ (posedge clk);
      $finish;
   end
endmodule
module dff (   input d,input clk,input rst,output reg q,output qn);
   always @ (posedge (clk) or negedge rst)
         if(!rst)
         q <= 0;
else
q <= d;
        assign qn = ~q;
endmodule
 
module counter ( input clk,input rst,output [3:0] count);
   wire  q0;
   wire  qn0;
   wire  q1;
   wire  qn1;
   wire  q2;
   wire  qn2;
   wire  q3;
   wire  qn3;
 
   dff   g1( .d (qn0),.clk (clk),.rst(rst),.q (q0),.qn (qn0));
   dff   g2( .d (qn1),.clk (q0),.rst(rst),.q (q1),.qn (qn1));
   dff   g3( .d (qn2),.clk (q1),.rst(rst),.q (q2),.qn (qn2));
   dff   g4( .d (qn3),.clk (q2),.rst(rst),.q (q3),.qn (qn3));
 
   assign count = {qn3, qn2, qn1, qn0};
 
endmodule

module DFF(clk,d,q,qn,reset);
    input clk,d,reset;
output q,qn;
reg q;
    always @(posedge(clk) or negedge reset)
   
        if(!reset)
 q <=0;
else
  q<=d;

    assign qn=~q;
   
endmodule