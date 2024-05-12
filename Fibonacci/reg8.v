module reg8(
    input [7:0] d,
    input clk,
    input rst,
    output reg [7:0] q
);

always @(posedge clk , posedge rst) 
begin
    if(rst)
        q <= 8'b00000001;
    else
        q <= d;    
end

endmodule