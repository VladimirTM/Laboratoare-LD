module srlatch(
    input s,
    input r,
    output q
);

wire w;

assign w = ~(~s | q);

assign q = ~(~r | w);

endmodule