//Verilog HDL for "SumadorBrentKung", "Sumador_BK" "functional"


module Sumador_BK ( 
	input wire [7:0] a,
	input wire [7:0] b,
	input wire cin,
	output wire [7:0] sum,
	output wire c 
);

	

	wire [7:0] carrys;
	wire buffer;
	wire g1;
	wire p1;
	wire g1_n;
	wire g2;
	wire p2;
	wire g2_n;
	wire p2_n;
	wire g21_n;
	wire p21_n;
	wire g3;
	wire p3;
	wire g3_n;
	wire p3_n;
	wire g3_2n;
	wire g4;
	wire p4;
	wire g4_n;
	wire p4_n;
	wire g4_2n;
	wire p4_2n;
	wire g5;
	wire p5;
	wire g5_n;
	wire p5_n;
	wire g5_2n;
	wire p5_2n;
	wire g5_3n;
	wire p5_3n;
	wire g6;
	wire p6;
	wire g6_n;
	wire p6_n;
	wire g6_2n;
	wire p6_2n;
	wire g7;
	wire p7;
	wire g7_n;
	wire p7_n;
	wire g7_2n;
	wire p7_2n;
	wire carrys1;
	wire carrys2;
	wire carrys3;
	wire carrys4;
	wire carrys5;	
	wire carrys6;

//Estructura Inicial
HalfAdder EI1 (a[0], b[0], g1, p1);
HalfAdder EI2 (a[1], b[1], g2, p2);
HalfAdder EI3 (a[2], b[2], g3, p3);
HalfAdder EI4 (a[3], b[3], g4, p4);
HalfAdder EI5 (a[4], b[4], g5, p5);
HalfAdder EI6 (a[5], b[5], g6, p6);
HalfAdder EI7 (a[6], b[6], g7, p7);
HalfAdder EI8 (a[7], b[7], g8, p8);


//Sumador con cajas
//Bit cero
Buffer_Par buffer0 (cin, carrys[0]);

//Bit uno
Gray_Cell_Impar GC1 (g1, p1, cin,  g1_n);
Buffer_Par buffer1 (g1_n, carrys1);
Buffer_Impar buffer1_2 (carrys1, carrys[1]);

//Bit dos
Buffer_Impar buffer2 (g2, g2_n);
Buffer_Impar buffer2_2 (p2, p2_n);
Buffer_Impar buffer2_3 (g2_n, g21_n);
Buffer_Impar buffer2_4 (p2_n, p21_n);
Gray_Cell_Impar GC2 (g21_n, p21_n, carrys[1], carrys2);
Buffer_Impar buffer2_5 (carrys2, carrys[2]);

//Bit tres
Black_Cell_Impar BC3 (g3, p3, g2, p2, g3_n, p3_n);
Gray_Cell_Par GC3 (g3_n, p3_n, g1_n, g3_2n);
Buffer_Impar buffer3 (g3_2n, carrys3);
Buffer_Impar buffer3_2 (carrys3, carrys[3]);

//Bit cuatro 
Buffer_Impar buffer4 (g4, g4_n);
Buffer_Impar buffer4_2 (p4, p4_n);
Buffer_Impar buffer4_3 (g4_n, g4_2n);
Buffer_Impar buffer4_4 (p4_n, p4_2n);
Gray_Cell_Impar GC4 (g4_2n, p4_2n, carrys[3], carrys4);
Buffer_Impar buffer4_5 (carrys4, carrys[4]);

//Bit cinco
Black_Cell_Impar BC5 (g5, p5, g4, p4, g5_n, p5_n);
Buffer_Impar buffer5 (g5_n, g5_2n);
Buffer_Impar buffer5_2 (p5_n, p5_2n);
Buffer_Impar buffer5_3 (g5_2n, g5_3n);
Buffer_Impar buffer5_4 (p5_2n, p5_3n);
Gray_Cell_Par GC5 (g5_3n, p5_3n, carrys3, carrys5);
Buffer_Par buffer5_6 (carrys5, carrys[5]);

//Bit seis
Buffer_Impar buffer6 (g6, g6_n);
Buffer_Impar buffer6_2 (p6, p6_n);
Buffer_Impar buffer6_3 (g6_n, g6_2n);
Buffer_Impar buffer6_4 (p6_n, p6_2n);
Gray_Cell_Impar GC6 (g6_2n, p6_2n, carrys5, carrys6);
Buffer_Impar buffer6_5 (carrys6, carrys[6]);

//Bit siete 
Black_Cell_Impar BC7 (g7, p7, g6, p6, g7_n, p7_n);
Black_Cell_Par BC7_2 (g7_n, p7_n, g5_n, p5_n, g7_2n, p7_2n);
Gray_Cell_Impar GC7 (g7_2n, p7_2n, carrys3, g7_3n);
Buffer_Impar buffer7 (g7_3n, carrys[7]);


//Estructura final
Estructura_Final EF0 (carrys[0], p1, sum[0]);
Estructura_Final EF1 (carrys[1], p2, sum[1]);
Estructura_Final EF2 (carrys[2], p3, sum[2]);
Estructura_Final EF3 (carrys[3], p4, sum[3]);
Estructura_Final EF4 (carrys[4], p5, sum[4]);
Estructura_Final EF5 (carrys[5], p6, sum[5]);
Estructura_Final EF6 (carrys[6], p7, sum[6]);
Estructura_Final EF7 (carrys[7], p8, sum[7]);

assign c = g8 || (p8 & carrys[7]);



endmodule
