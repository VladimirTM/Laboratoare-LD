`include "flipflopD.v"
module flipflopT(
    input t,
    input clk,
    input rst,
    output q
);

wire w;

flipflopD FFD(
    .d(t ^ w),
    .clk(clk),
    .rst(rst),
    .q(w)
);

assign q = w;

endmodule