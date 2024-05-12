`include "clkDiv.v"

module fsmDiv(
    input in,
    input clk,
    input rst,
    output reg [1:0]out
);

parameter S0 = 0;
parameter S1 = 1;
parameter S2 = 2;
parameter S3 = 3;

reg [1:0] q, q_next;
wire clk_synthetic;
  
  clkDiv DIV(
    .clk_in(clk),
    .clk_out(clk_synthetic)
  );

  always@(posedge clk_synthetic) begin
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

always@(posedge clk_synthetic or negedge rst) begin
  if(rst == 0)
        q <= S0;
  else if(clk_synthetic)
        q <= q_next;
end

endmodule