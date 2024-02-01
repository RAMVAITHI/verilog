module org(A,B,Y);
  input A,B;
  output reg Y;
  
  always @ (A or B) begin
    if (A == 1'b0 & B == 1'b0) begin
        Y = 1'b0;
    end
    else 
        Y = 1'b1; 
end
endmodule
