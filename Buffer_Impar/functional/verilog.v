//Verilog HDL for "SumadorBrentKung", "Buffer" "functional"


module Buffer_Impar ( 
	input wire in,
	output wire out
);

assign out = ~(in);
endmodule