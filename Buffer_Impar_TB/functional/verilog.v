//Verilog HDL for "SumadorBrentKung", "Buffer_TB" "functional"


module Buffer_Impar_TB ();
	reg in;
	wire out;

	Buffer uut(in, out);

	initial begin
		in = 1'b0;
	#10
		in = 1'b1;
	#10;
	end
endmodule
