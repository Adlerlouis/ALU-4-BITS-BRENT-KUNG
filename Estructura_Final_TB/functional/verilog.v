//Verilog HDL for "SumadorBrentKung", "Estructura_Final_TB" "functional"


module Estructura_Final_TB ( );

	reg [7:0] a1;
	reg [7:0] b1;
	wire [7:0] sum1;

	Estructura_Final uut(a1, b1, sum1);

	initial begin
		a1 = 8'b00000000;
		b1 = 8'b00000000;
	#10
		a1 = 8'b00000000;
		b1 = 8'b00000001;
	#10
		a1 = 8'b00000001;
		b1 = 8'b00000100;
	#10
		a1 = 8'b00010000;
		b1 = 8'b00010000;
	#10
		a1 = 8'b00000100;
		b1 = 8'b00000011;
	#10
		a1 = 8'b00001110;
		b1 = 8'b00000111;
	#10;
	end
endmodule
