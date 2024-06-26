module reg4(
    input [3:0]d,
    input clk,
    input rst,
    output reg [3:0]q
);

always @(posedge clk, posedge rst) 
begin
    if(rst)
        q <= 4'b0000;
    else
        q <= d;    
end

endmodule