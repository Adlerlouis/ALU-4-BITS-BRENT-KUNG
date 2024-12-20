//Verilog HDL for "SumadorBrentKung", "Gray_Cell_TB" "functional"


module Gray_Cell_Impar_TB ();
	reg Gi;
	reg Pi;
	reg Gk;
	wire Go;

	Gray_Cell_Impar uut(Gi, Pi, Gk, Go);

	initial begin 
		Gi = 1'b0;
		Pi = 1'b0;
		Gk = 1'b0;
	#10
		Gi = 1'b0;
		Pi = 1'b0;
		Gk = 1'b1;
	#10
		Gi = 1'b0;
		Pi = 1'b1;
		Gk = 1'b0;
	#10
		Gi = 1'b0;
		Pi = 1'b1;
		Gk = 1'b1;
	#10
		Gi = 1'b1;
		Pi = 1'b0;
		Gk = 1'b0;
	#10
		Gi = 1'b1;
		Pi = 1'b0;
		Gk = 1'b1;
	#10
		Gi = 1'b1;
		Pi = 1'b1;
		Gk = 1'b0;
	#10
		Gi = 1'b1;
		Pi = 1'b1;
		Gk = 1'b1;
	#10;
	end
endmodule
