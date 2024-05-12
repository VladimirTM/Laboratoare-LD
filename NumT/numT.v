`include "flipflopT.v"
`include "hex.v"

module numT(
    input en,
    input clk,
    input rst,
    output [6:0] out
);

localparam modulo = 5;

wire [3:0] o, w;
reg reset;

always @(*) begin
    if(o == modulo)
        reset = 1;
    else
        reset = rst;
end

flipflopT T0(
    .t(en),
    .clk(clk),
    .rst(reset),
    .q(o[0]),
    .notq(w[0])
);

flipflopT T1(
    .t(en),
    .clk(w[0]),
    .rst(reset),
    .q(o[1]),
    .notq(w[1])
);

flipflopT T2(
    .t(en),
    .clk(w[1]),
    .rst(reset),
    .q(o[2]),
    .notq(w[2])
);

flipflopT T3(
    .t(en),
    .clk(w[2]),
    .rst(reset),
    .q(o[3]),
    .notq(w[3])
);

hex HEX(
    .h(o),
    .d(out)
);

endmodule