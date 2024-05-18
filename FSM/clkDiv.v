module clkDiv(
  input clk_in,
  output reg clk_out
);
  
parameter division = 50000000;
  
integer count = 1;
  
  always@(posedge clk_in) begin
    if(count == division)
    begin
      clk_out = 1;
      count = 1;
    end
  else
    begin
      clk_out = 0;
      count = count + 1;
    end
end

endmodule