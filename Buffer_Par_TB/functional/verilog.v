//Verilog HDL for "SumadorBrentKung", "Buffer_TB" "functional"


module Buffer_Par_TB ();
	reg in;
	wire out;

	Buffer_Par uut(in, out);

	initial begin
		in = 1'b0;
	#10
		in = 1'b1;
	#10;
	end
endmodule
