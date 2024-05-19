module testbench;

reg in, clk, rst;

wire [1:0]out;

fsm DUT(
    .in(in),
    .clk(clk),
    .rst(rst),
    .out(out)
);

integer j;

initial begin
  	clk = 0;
  	in = 0;
  	rst = 1;
  	for(j = 0; j < 8; j = j + 1)
    	begin
        #10;
        rst = 0;
    	  #5;
    	  rst = 1;
  		  #5;
      	in = j[2];
        #5;
        clk = 1;
      	#5;
        clk = 0;
        #5;
      	in = j[1];
        #5;
        clk = 1;
      	#5;
        clk = 0;
        #5;
      	in = j[0];
        #5;
        clk = 1;
      	#5;
        clk = 0;
        #5;
        clk = 1;
      	#5;
        clk = 0;
        #10;
    end
end
endmodule
