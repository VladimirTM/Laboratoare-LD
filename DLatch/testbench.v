module testbench();
    reg d, en;
    wire q;
    integer i;

    latchD DUT(
        .d(d),
        .en(en),
        .q(q)
    );

    initial 
    begin
        d = 0;
        en = 1;
    end

    initial
    begin
        #50;
        d = 1;
        #50;
        en = 0;
        #50;
        d = 0;
        #50;
        en = 1;
        #50;
    end
endmodule