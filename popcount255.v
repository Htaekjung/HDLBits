module top_module( 
    input [254:0] in,
    output reg [7:0] out );
    integer i;
    wire count;
    assign count = 1;
    always@(*) begin
        out = 0;
        for (i=0;i<255;i++)
            if (in[i] ==1)
                out = out + count ;
    end
endmodule
