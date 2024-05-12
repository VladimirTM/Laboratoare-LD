module testbench;

reg t, clk, rst;
wire q;
integer i;

flipflopT DUT(
    .t(t),
    .clk(clk),
    .rst(rst),
    .q(q)
);

initial 
begin
    for(i = 0; i < 100; i = i + 1)
    begin
        clk = ~clk;
        #10;
        clk = ~clk;
        #10;
    end
end

initial 
begin
    clk = 0;
    rst = 1;
    #10;
    rst = 0;
    #10;
end

initial 
begin
    t = 0;
    #30;
    t = 1;
    #30;
    t = 0;
    #30;
    t = 1;    
end

endmodule