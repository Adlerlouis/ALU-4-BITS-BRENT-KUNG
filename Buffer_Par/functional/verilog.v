//Verilog HDL for "SumadorBrentKung", "Buffer" "functional"


module Buffer_Par ( 
	input wire in,
	output wire out
);

assign out = ~(~in);
endmodule
