//Verilog HDL for "SumadorBrentKung", "Estructura_Inicial_TB" "functional"


module Estructura_Inicial_TB ( );

	reg [7:0] a1;
	reg [7:0] b1;
	wire [7:0] sum1;
	wire [7:0] c1;

	Estructura_Inicial uut(a1, b1, sum1, c1);

	initial begin
		a1 = 8'b00000000;
		b1 = 8'b00000000;
	#10
		a1 = 8'b00000000;
		b1 = 8'b00000001;
	#10
		a1 = 8'b00000001;
		b1 = 8'b00000001;
	#10
		a1 = 8'b00000010;
		b1 = 8'b00000010;
	#10
		a1 = 8'b00000100;
		b1 = 8'b00000100;
	#10
		a1 = 8'b00001000;
		b1 = 8'b00001000;
	#10
		a1 = 8'b00010000;
		b1 = 8'b00010000;
	#10
		a1 = 8'b00000011;
		b1 = 8'b00000101;
	#10;
	end
endmodule
