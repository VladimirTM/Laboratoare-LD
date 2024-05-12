`include "hex.v"

module fsm(
    input in,
    input clk,
    input rst,
    output [6:0]o2,
    output [6:0]o1,
    output [1:0]o
);

parameter S0 = 0;
parameter S1 = 1;
parameter S2 = 2;
parameter S3 = 3;

reg [1:0] q, q_next, out;

always@(posedge clk) begin
    case(q)
    S0:
    begin
        if(in)
        begin
            out = 1;
            q_next = S1;
        end
        else
        begin
            out = 0;
            q_next = S0;
        end
    end
    S1:
    begin
        if(in)
        begin
            out = 2;
            q_next = S3;
        end
        else
        begin
            out = 0;
            q_next = S2;
        end
    end
    S2:
    begin
        if(in)
        begin
            out = 0;
            q_next = S3;
        end
        else
        begin
            out = 1;
            q_next = S2;
        end
    end
    S3:
    begin
        if(in)
        begin
            out = 0;
            q_next = S0;
        end
        else
        begin
            out = 1;
            q_next = S1;
        end
    end
    endcase
end

always@(posedge clk or negedge rst) begin
  if(rst == 0)
    q <= S0;
  else
    q <= q_next;
end

assign o = out;

hex HEX1(
    .h(5),
    .d(o2)
);

hex HEX0(
    .h(q),
    .d(o1)
);

endmodule