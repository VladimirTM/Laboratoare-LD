module hex(
input [3:0]h,
output [6:0]d
);

assign d[0] = (~h[3]&~h[2]&~h[1]&h[0]) | (~h[3]&h[2]&~h[1]&~h[0]) | (h[3]&h[2]&~h[1]&h[0]) | (h[3]&~h[2]&h[1]&h[0]);
assign d[1] = (h[2]&h[1]&~h[0]) | (h[3]&h[1]&h[0]) | (h[3]&h[2]&~h[0]) | (~h[3]&h[2]&~h[1]&h[0]);
assign d[2] = (h[3]&h[2]&~h[0]) | (h[3]&h[2]&h[1]) | (~h[3]&~h[2]&h[1]&~h[0]);
assign d[3] = (~h[3]&~h[2]&~h[1]&h[0]) | (~h[3]&h[2]&~h[1]&~h[0]) | (h[2]&h[1]&h[0]) | (h[3]&~h[2]&h[1]&~h[0]);
assign d[4] = (~h[3]&h[0]) | (~h[3]&h[2]&~h[1]) | (~h[2]&~h[1]&h[0]);
assign d[5] = (~h[3]&~h[2]&h[0]) | (~h[3]&~h[2]&h[1]) | (~h[3]&h[1]&h[0]) | (h[3]&h[2]&~h[1]&h[0]);
assign d[6] = (h[3]&h[2]&~h[1]&~h[0]) | (~h[3]&h[2]&h[1]&h[0]) | (~h[3]&~h[2]&~h[1]);

endmodule
