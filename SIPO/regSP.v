`include "mux2.v"
`include "reg4.v"
`include "hex.v"

module regSP(
    input sIn,
    input shift,
    input clk,
    input rst,
    output [6:0] out1,
    output [6:0] out2,
    output [6:0] out3,
    output [6:0] out4
);

wire [3:0] wIn, wOut;

mux2 MUX3(
    .a(sIn),
    .b(wOut[3]),
    .sel(shift),
    .out(wIn[3])
);

mux2 MUX2(
    .a(wOut[3]),
    .b(wOut[2]),
    .sel(shift),
    .out(wIn[2])
);

mux2 MUX1(
    .a(wOut[2]),
    .b(wOut[1]),
    .sel(shift),
    .out(wIn[1])
);

mux2 MUX0(
    .a(wOut[1]),
    .b(wOut[0]),
    .sel(shift),
    .out(wIn[0])
);

reg4 REG(
    .d(wIn),
    .clk(clk),
    .rst(rst),
    .q(wOut)
);

hex HEX1(
    .h(wOut[0]),
    .d(out1)
);

hex HEX2(
    .h(wOut[1]),
    .d(out2)
);

hex HEX3(
    .h(wOut[2]),
    .d(out3)
);

hex HEX4(
    .h(wOut[3]),
    .d(out4)
);

endmodule