module flipflopD(
    input d,
    input clk,
    input rst,
    output reg q
);

always@(posedge clk, posedge rst)
begin
    if(rst)
        q <= 0;
    else
        q <= d; 
end

endmodule