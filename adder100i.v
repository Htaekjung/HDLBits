module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    // First bit addition, including the carry-in
    assign {cout[0], sum[0]} = a[0] + b[0] + cin;
    // Ripple carry adder: chain the carry out to the next bit's addition
    genvar i;
    generate
        for (i = 1; i < 100; i = i + 1) begin : ripple_carry
            assign {cout[i], sum[i]} = a[i] + b[i] + cout[i-1];
        end
    endgenerate
endmodule
