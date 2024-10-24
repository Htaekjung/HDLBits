// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
	
    always @(*) begin
        casez (in)
            4'b1000 : pos = 2'b11;
            4'bz100 : pos = 2'b10;
            4'bzz10 : pos = 2'b01;
            4'bzzz1 : pos = 2'b00;
            default : pos = 2'b00;
        endcase
    end
endmodule