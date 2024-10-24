//Ternary operator
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
	
    assign out_assign = (!sel_b1) ?  a : (sel_b2) ? b : a;
    
    always@(*)
        out_always = (!sel_b1) ?  a : (sel_b2) ? b : a;
endmodule