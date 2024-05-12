module flipflopT(
    input t,
    input clk,
    input rst,
    output reg q,
    output notq
);

always @(posedge clk, posedge rst) 
begin
    if(rst)
        q <= 0;
    else
        if(t)
            q <= ~q;
end

assign notq = ~q;

endmodule