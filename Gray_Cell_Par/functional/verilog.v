//Verilog HDL for "SumadorBrentKung", "Gray_Cell" "functional"


module Gray_Cell_Par ( 
	input wire Gi_j, Pi_j, Gi_k,
	output wire Gout
);

assign Gout = ~Gi_j | (~Pi_j & ~Gi_k);
endmodule
