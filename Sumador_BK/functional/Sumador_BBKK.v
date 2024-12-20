
// Generated by Cadence Genus(TM) Synthesis Solution 21.18-s082_1
// Generated on: Dec  5 2024 19:12:58 CST (Dec  6 2024 01:12:58 UTC)

// Verification Directory fv/Sumador_BK 

module Sumador_BK(a, b, cin, sum, c);
  input [7:0] a, b;
  input cin;
  output [7:0] sum;
  output c;
  wire [7:0] a, b;
  wire cin;
  wire [7:0] sum;
  wire c;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_9, n_10, n_12, n_13;
  assign sum[4] = 1'b0;
  assign sum[5] = 1'b0;
  assign sum[6] = 1'b0;
  assign sum[7] = 1'b0;
  XNOR2X1 g208__2398(.A (n_0), .B (c), .Y (sum[3]));
  OR2X1 g209__5107(.A (n_13), .B (n_1), .Y (c));
  HAX1 g210__6260(.A (n_2), .B (n_12), .YC (n_13), .YS (sum[2]));
  OR2X1 g211__4319(.A (n_10), .B (n_5), .Y (n_12));
  HAX1 g212__8428(.A (n_6), .B (n_9), .YC (n_10), .YS (sum[1]));
  OR2X1 g213__5526(.A (n_7), .B (n_3), .Y (n_9));
  HAX1 g214__6783(.A (cin), .B (n_4), .YC (n_7), .YS (sum[0]));
  HAX1 g215__3680(.A (b[1]), .B (a[1]), .YC (n_5), .YS (n_6));
  HAX1 g216__1617(.A (b[0]), .B (a[0]), .YC (n_3), .YS (n_4));
  HAX1 g217__2802(.A (b[2]), .B (a[2]), .YC (n_1), .YS (n_2));
  XNOR2X1 g218__1705(.A (a[3]), .B (b[3]), .Y (n_0));
endmodule

