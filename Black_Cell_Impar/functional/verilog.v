//Verilog HDL for "SumadorBrentKung", "Black_Cell" "functional"


module Black_Cell_Impar ( 
	input wire Gi_j, Pi_j, Gi_k, Pi_k,
	output wire Gout, Pout
);
	assign Gout = ~(Gi_j | (Pi_j & Gi_k));
	assign Pout = ~(Pi_j & Pi_k);
endmodule
