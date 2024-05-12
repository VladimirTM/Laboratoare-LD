`include "reg8.v"
`include "hex.v"
module fibo(
    input clk,
    input rst,
    output [6:0] out1,
    output [6:0] out2
);

localparam max = 233;

wire [7:0] wOut1, wOut2, wOut3;
reg reset;

always @(*) begin
    if(wOut1 > max)
        reset = 1;
    else
        reset = rst;
end

assign wOut3 = wOut1 + wOut2;

reg8 REG1(
    .d(wOut2),
    .clk(clk),
    .rst(reset),
    .q(wOut1)
);

reg8 REG2(
    .d(wOut3),
    .clk(clk),
    .rst(reset),
    .q(wOut2)
);

hex HEX1(
    .h({wOut1[3],wOut1[2],wOut1[1],wOut1[0]}),
    .d(out1)
);

hex HEX2(
    .h({wOut1[7],wOut1[6],wOut1[5],wOut1[4]}),
    .d(out2)
);

endmodule