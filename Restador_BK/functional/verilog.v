module Restador_BK (
    input wire [3:0] a,
    input wire [3:0] b,
    output wire [3:0] result,
    output wire borrow
);
    wire [3:0] B_complement;
    wire carry_out;

    // Complemento a 1 de B
    assign B_complement = ~b;

    // Instancia de Sumador_BK para realizar la resta (suma con complemento a 1)
    Sumador_BK sumador (
        .a(a),
        .b(B_complement),
        .cin(1'b1), // Carry inicial para la resta
        .sum(result),
        .c(carry_out)
    );

    // El "borrow" es el acarreo invertido
    assign borrow = ~carry_out;
endmodule

