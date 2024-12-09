module Selector (
    input wire [3:0] a,           // Entrada A
    input wire [3:0] b,           // Entrada B
    input wire cin,               // Carry In
    input wire [1:0] sel,         // Seal de seleccin: 00=XOR, 01=AND, 10=SUMA, 11=RESTA
    output wire [3:0] result,     // Resultado
    output wire carry_out         // Acarreo de salida
);
    wire [3:0] p;       // XOR (Propagate)
    wire [3:0] g;       // AND (Generate)
    wire [3:0] b_inv;   // Complemento de B para resta
    wire [3:0] sum;     // Salida de la suma
    wire carry_sum;     // Acarreo de salida para suma/resta

    // Instanciar HalfAdders para obtener XOR (p) y AND (g)
    genvar i;
    generate // 
        for (i = 0; i < 4; i = i + 1) begin : gen_halfadders
            HalfAdder HA (
                .a(a[i]),
                .b(b[i]),
                .g(g[i]),
                .p(p[i])
            );
        end
    endgenerate

    // Generar complemento de B para resta
    assign b_inv = ~b;

    // Instanciar el sumador
    Sumador_BK sumador (
        .a(a),
        .b((sel == 2'b11) ? b_inv : b),  // Usar B' para resta
        .cin((sel == 2'b11) ? 1'b1 : cin),  // Agregar 1 para resta
        .sum(sum),
        .c(carry_sum)
    );

    // Multiplexor para seleccionar la operacin
    assign result = (sel == 2'b00) ? p :        // XOR
                    (sel == 2'b01) ? g :        // AND
                    (sel == 2'b10 || sel == 2'b11) ? sum : 8'b0; // SUMA o RESTA

    // Acarreo de salida
    assign carry_out = (sel == 2'b10 || sel == 2'b11) ? carry_sum : 1'b0;

endmodule
module Selector_tb;

    // Entradas y salidas del mdulo Selector
    reg [3:0] a1, b1;       // Entradas A y B
    reg Cin1;               // Carry In
    reg [1:0] sel;          // Seal de seleccin
    wire [3:0] result;      // Resultado
    wire carry_out;         // Acarreo de salida

    // Instancia del mdulo Selector
    Selector uut (
        .a(a1),
        .b(b1),
        .cin(Cin1),
        .sel(sel),
        .result(result),
        .carry_out(carry_out)
    );

    // Bloque inicial para pruebas cambia a 8 bits para ver los 8bits 
    initial begin
         // Pruebas de operacin XOR (sel = 00)
        sel = 2'b00;
        a1 = 4'b1010; b1 = 4'b1100; Cin1 = 1'b0; #10;
        a1 = 4'b0000; b1 = 4'b1111; Cin1 = 1'b0; #10;
        a1 = 4'b1111; b1 = 4'b1010; Cin1 = 1'b0; #10;
        a1 = 4'b0000; b1 = 4'b0000; Cin1 = 1'b0; #10;

        // Pruebas de operacin AND (sel = 01)
        sel = 2'b01;
        a1 = 4'b1010; b1 = 4'b1100; Cin1 = 1'b0; #10;
        a1 = 4'b0000; b1 = 4'b1111; Cin1 = 1'b0; #10;
        a1 = 4'b1111; b1 = 4'b1010; Cin1 = 1'b0; #10;
        a1 = 4'b0000; b1 = 4'b1111; Cin1 = 1'b0; #10;

        // Pruebas de operacin SUMA (sel = 10)
        sel = 2'b10;
        a1 = 4'b0000; b1 = 4'b0110; Cin1 = 1'b0; #10;
        a1 = 4'b0111; b1 = 4'b1111; Cin1 = 1'b0; #10;
        a1 = 4'b1101; b1 = 4'b0001; Cin1 = 1'b0; #10;
        a1 = 4'b1111; b1 = 4'b1100; Cin1 = 1'b1; #10;

        // Pruebas de operacin RESTA (sel = 11)
        sel = 2'b11;
        a1 = 4'b0111; b1 = 4'b0001; Cin1 = 1'b0; #10;
        a1 = 4'b0001; b1 = 4'b0010; Cin1 = 1'b0; #10;
        a1 = 4'b1111; b1 = 4'b0011; Cin1 = 1'b0; #10;
        a1 = 4'b0000; b1 = 4'b1001; Cin1 = 1'b0; #10;

        
    end

endmodule
