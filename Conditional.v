module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min
); 
    assign min = (a < b) ? 
                     ((c < d) ? 
                         ((c < a) ? c : a) : 
                         ((d < a) ? d : a)) : 
                     ((c < d) ? 
                         ((c < b) ? c : b) : 
                         ((d < b) ? d : b));

endmodule
