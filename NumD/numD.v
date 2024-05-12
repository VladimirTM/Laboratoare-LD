`include "reg4.v"
`include "hex.v"

module numD(
    input en,
    input clk,
    input rst,
    output [6:0] out
);

localparam modulo = 5;

wire [3:0] wIn, wOut;
reg reset;

always @(*) begin
    if(wOut == modulo)
        reset = 1;
    else
        reset = rst;
end

assign wIn = en + wOut;

reg4 REG(
    .d(wIn),
    .clk(clk),
    .rst(reset),
    .q(wOut)
);

hex HEX(
    .h(wOut),
    .d(out)
);

endmodule