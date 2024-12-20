
// Generated by Cadence Genus(TM) Synthesis Solution 21.18-s082_1
// Generated on: Dec  6 2024 19:49:53 CST (Dec  7 2024 01:49:53 UTC)

// Verification Directory fv/Selector 

module Selector(a, b, cin, sel, result, carry_out);
  input [3:0] a, b;
  input cin;
  input [1:0] sel;
  output [3:0] result;
  output carry_out;
  wire [3:0] a, b;
  wire cin;
  wire [1:0] sel;
  wire [3:0] result;
  wire carry_out;
  wire [3:0] g;
  wire [3:0] p;
  wire [3:0] sum;
  wire carry_sum, n_0, n_1, n_2, n_3, n_4, n_5, n_6;
  wire n_7, n_8, n_9, n_10, n_11, n_12, n_13, n_14;
  wire n_15, n_16, n_17, n_18, n_19, n_20, n_21, n_22;
  wire n_23, n_24, n_25;
  HalfAdder \gen_halfadders[0].HA (.a (a[0]), .b (b[0]), .g (g[0]), .p
       (p[0]));
  HalfAdder \gen_halfadders[1].HA (.a (a[1]), .b (b[1]), .g (g[1]), .p
       (p[1]));
  HalfAdder \gen_halfadders[2].HA (.a (a[2]), .b (b[2]), .g (g[2]), .p
       (p[2]));
  HalfAdder \gen_halfadders[3].HA (.a (a[3]), .b (b[3]), .g (g[3]), .p
       (p[3]));
  Sumador_BK sumador(.a (a), .b ({n_25, n_24, n_23, n_22}), .cin
       (n_21), .sum (sum), .c (carry_sum));
  OAI21X1 g333__2398(.A (n_11), .B (n_14), .C (n_0), .Y (result[3]));
  OAI21X1 g334__5107(.A (n_10), .B (n_14), .C (n_2), .Y (result[1]));
  NAND2X1 g335__6260(.A (n_5), .B (n_3), .Y (result[2]));
  NAND2X1 g336__4319(.A (n_4), .B (n_1), .Y (result[0]));
  AOI22X1 g337__8428(.A (n_13), .B (p[3]), .C (sum[3]), .D (sel[1]), .Y
       (n_20));
  AOI22X1 g338__5526(.A (n_7), .B (g[2]), .C (sum[2]), .D (sel[1]), .Y
       (n_19));
  AOI22X1 g339__6783(.A (n_7), .B (g[0]), .C (sum[0]), .D (sel[1]), .Y
       (n_18));
  AOI22X1 g340__3680(.A (n_13), .B (p[1]), .C (sum[1]), .D (sel[1]), .Y
       (n_17));
  MUX2X1 g341__1617(.A (n_12), .B (n_6), .S (b[1]), .Y (n_23));
  MUX2X1 g342__2802(.A (n_12), .B (n_6), .S (b[2]), .Y (n_24));
  MUX2X1 g343__1705(.A (n_12), .B (n_6), .S (b[3]), .Y (n_25));
  MUX2X1 g344__5122(.A (n_12), .B (n_6), .S (b[0]), .Y (n_22));
  OR2X1 g345__8246(.A (n_12), .B (cin), .Y (n_21));
  NAND2X1 g346__7098(.A (p[2]), .B (n_13), .Y (n_16));
  NAND2X1 g347__6131(.A (p[0]), .B (n_13), .Y (n_15));
  INVX1 g349(.A (n_14), .Y (n_7));
  AND2X1 g350__1881(.A (sel[1]), .B (carry_sum), .Y (carry_out));
  OR2X1 g351__5115(.A (n_9), .B (sel[1]), .Y (n_14));
  INVX1 g353(.A (n_12), .Y (n_6));
  AND2X1 g356__7482(.A (n_8), .B (n_9), .Y (n_13));
  AND2X1 g357__4733(.A (sel[1]), .B (sel[0]), .Y (n_12));
  INVX1 g358(.A (g[3]), .Y (n_11));
  INVX1 g359(.A (g[1]), .Y (n_10));
  INVX1 g360(.A (sel[0]), .Y (n_9));
  INVX1 g361(.A (sel[1]), .Y (n_8));
  BUFX2 drc_bufs(.A (n_16), .Y (n_5));
  BUFX2 drc_bufs362(.A (n_15), .Y (n_4));
  BUFX2 drc_bufs363(.A (n_19), .Y (n_3));
  BUFX2 drc_bufs364(.A (n_17), .Y (n_2));
  BUFX2 drc_bufs365(.A (n_18), .Y (n_1));
  BUFX2 drc_bufs366(.A (n_20), .Y (n_0));
endmodule

