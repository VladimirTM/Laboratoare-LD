module mux2(
    input a,
    input b,
    input sel,
    output reg out
);

always @(*) 
begin
    if(sel)
        out = a;
    else
        out = b;    
end

endmodule