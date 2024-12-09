//Verilog HDL for "SumadorBrentKung", "Estructura_Inicial" "functional"


module Estructura_Inicial ( 
	input wire [7:0] a,
	input wire [7:0] b,
	output wire [7:0] sum,
	output wire [7:0] c
);

HalfAdder HA0(a[0], b[0], sum[0], c[0]);
HalfAdder HA1(a[1], b[1], sum[1], c[1]);
HalfAdder HA2(a[2], b[2], sum[2], c[2]);
HalfAdder HA3(a[3], b[3], sum[3], c[3]);
HalfAdder HA4(a[4], b[4], sum[4], c[4]);
HalfAdder HA5(a[5], b[5], sum[5], c[5]);
HalfAdder HA6(a[6], b[6], sum[6], c[6]);
HalfAdder HA7(a[7], b[7], sum[7], c[7]);
endmodule
