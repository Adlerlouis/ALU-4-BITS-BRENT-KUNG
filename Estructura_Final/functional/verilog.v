//Verilog HDL for "SumadorBrentKung", "Estructura_Final" "functional"


module Estructura_Final ( 
	input wire [7:0] a,
	input wire [7:0] b,
	output wire [7:0] sum
);

	assign sum = a ^ b;
endmodule