//Verilog HDL for "SumadorBrentKung", "Sumador_BK_TB" "functional"


module Sumador_BK_TB ( );
	reg [7:0] a1;
	reg [7:0] b1;
	reg cin1;
	wire [7:0] sum1;
	wire c1;

	Sumador_BK uut(a1, b1, cin1, sum1, c1);

	initial begin
		a1 = 8'b11011010;
		b1 = 8'b01010101;
		cin1 = 1'b0;
	#10
		a1 = 8'b01111010;
		b1 = 8'b01010101;
		cin1 = 1'b0;
	#10
		a1 = 8'b11111111;
		b1 = 8'b10000000;
		cin1 = 1'b0;
	#10;
	end
endmodule

/*
module Sumador_BK_TB ( );
	reg [3:0] a1;
	reg [3:0] b1;
	reg cin1;
	wire [3:0] sum1;
	wire c1;

	Sumador_BK uut(a1, b1, cin1, sum1, c1);

	initial begin
		a1 = 4'b1101;
		b1 = 4'b0101;
		cin1 = 1'b0;
	#10
		a1 = 4'b0111;
		b1 = 4'b0101;
		cin1 = 1'b0;
	#10
		a1 = 4'b1111;
		b1 = 4'b0100;
		cin1 = 1'b0;
	#10;
	end
endmodule
*/
