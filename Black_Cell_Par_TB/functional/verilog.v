//Verilog HDL for "SumadorBrentKung", "Black_Cell_TB" "functional"


module Black_Cell_Par_TB ();
	reg Gi;
	reg Pi;
	reg Gk;
	reg Pk;
	wire Go;
	wire Po;

	Black_Cell_Par uut(Gi, Pi, Gk, Pk, Go, Po);

	initial begin 
		Gi = 1'b0;
		Pi = 1'b0;
		Gk = 1'b0;
		Pk = 1'b0;
	#10
		Gi = 1'b0;
		Pi = 1'b0;
		Gk = 1'b0;
		Pk = 1'b1;
	#10
		Gi = 1'b0;
		Pi = 1'b0;
		Gk = 1'b1;
		Pk = 1'b0;
	#10
		Gi = 1'b0;
		Pi = 1'b0;
		Gk = 1'b1;
		Pk = 1'b1;
	#10
		Gi = 1'b0;
		Pi = 1'b1;
		Gk = 1'b0;
		Pk = 1'b0;
	#10
		Gi = 1'b0;
		Pi = 1'b1;
		Gk = 1'b0;
		Pk = 1'b1;
	#10
		Gi = 1'b0;
		Pi = 1'b1;
		Gk = 1'b1;
		Pk = 1'b0;
	#10
		Gi = 1'b0;
		Pi = 1'b1;
		Gk = 1'b1;
		Pk = 1'b1;
	#10
		Gi = 1'b1;
		Pi = 1'b0;
		Gk = 1'b0;
		Pk = 1'b0;
	#10
		Gi = 1'b1;
		Pi = 1'b0;
		Gk = 1'b0;
		Pk = 1'b1;
	#10
		Gi = 1'b1;
		Pi = 1'b0;
		Gk = 1'b1;
		Pk = 1'b0;
	#10
		Gi = 1'b1;
		Pi = 1'b0;
		Gk = 1'b1;
		Pk = 1'b1;
	#10
		Gi = 1'b1;
		Pi = 1'b1;
		Gk = 1'b0;
		Pk = 1'b0;
	#10
		Gi = 1'b1;
		Pi = 1'b1;
		Gk = 1'b0;
		Pk = 1'b1;
	#10
		Gi = 1'b1;
		Pi = 1'b1;
		Gk = 1'b1;
		Pk = 1'b0;
	#10
		Gi = 1'b1;
		Pi = 1'b1;
		Gk = 1'b1;
		Pk = 1'b1;
	#10;
	end
endmodule
