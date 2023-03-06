module notg_tb;
reg A; 
wire Y; 
notg notgate(.A(A),.Y(Y));
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(1);
 A =1'b0;
 #10 A =1'b1; 
 #10
$finish;
 end 
always @(Y)
 $display( "time =%0t \tINPUT VALUES: \t A=%b output value Y =%b",$time,A,Y);
Endmodule

// Code your design here
module notg(A,Y);
  input A;
  output reg Y;
  
   always @ (A) begin
   if (A == 1'b0) begin
       Y = 1'b1;
   end
  else if (A == 1'b1) begin
       Y = 1'b0;
end    
  end
endmodule
