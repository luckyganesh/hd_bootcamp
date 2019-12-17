`include "cell.sv"

module gol(out, in, initialise,clk);
  input [2:0][2:0] in;
  output [2:0] [2:0] out;
  input initialise,clk;
  
  wire [7:0] neighbouringCells_0_0;
  wire [7:0] neighbouringCells_0_1;
  wire [7:0] neighbouringCells_0_2;
  wire [7:0] neighbouringCells_1_0;
  wire [7:0] neighbouringCells_1_1;
  wire [7:0] neighbouringCells_1_2;
  wire [7:0] neighbouringCells_2_0;
  wire [7:0] neighbouringCells_2_1;
  wire [7:0] neighbouringCells_2_2;
  
  assign neighbouringCells_0_0[0] = out[0][1];
  assign neighbouringCells_0_0[1] = out[1][0];
  assign neighbouringCells_0_0[2] = out[1][1];
  assign neighbouringCells_0_0[3] = 0;
  assign neighbouringCells_0_0[4] = 0;
  assign neighbouringCells_0_0[5] = 0;
  assign neighbouringCells_0_0[6] = 0;
  assign neighbouringCells_0_0[7] = 0;
  
  assign neighbouringCells_0_1[0] = out[0][0];
  assign neighbouringCells_0_1[1] = out[0][2];
  assign neighbouringCells_0_1[2] = out[1][0];
  assign neighbouringCells_0_1[3] = out[1][1];
  assign neighbouringCells_0_1[4] = out[1][2];
  assign neighbouringCells_0_1[5] = 0;
  assign neighbouringCells_0_1[6] = 0;
  assign neighbouringCells_0_1[7] = 0;

  assign neighbouringCells_0_2[0] = out[0][1];
  assign neighbouringCells_0_2[1] = out[1][1];
  assign neighbouringCells_0_2[2] = out[1][2];
  assign neighbouringCells_0_2[3] = 0;
  assign neighbouringCells_0_2[4] = 0;
  assign neighbouringCells_0_2[5] = 0;
  assign neighbouringCells_0_2[6] = 0;
  assign neighbouringCells_0_2[7] = 0;
  
  assign neighbouringCells_1_0[0] = out[0][0];
  assign neighbouringCells_1_0[1] = out[0][1];
  assign neighbouringCells_1_0[2] = out[1][1];
  assign neighbouringCells_1_0[3] = out[2][0];
  assign neighbouringCells_1_0[4] = out[2][1];
  assign neighbouringCells_1_0[5] = 0;
  assign neighbouringCells_1_0[6] = 0;
  assign neighbouringCells_1_0[7] = 0;
  
  assign neighbouringCells_1_1[0] = out[0][0];
  assign neighbouringCells_1_1[1] = out[0][1];
  assign neighbouringCells_1_1[2] = out[0][2];
  assign neighbouringCells_1_1[3] = out[1][0];
  assign neighbouringCells_1_1[4] = out[1][2];
  assign neighbouringCells_1_1[5] = out[2][0];
  assign neighbouringCells_1_1[6] = out[2][1];
  assign neighbouringCells_1_1[7] = out[2][2];
  
  assign neighbouringCells_1_2[0] = out[0][1];
  assign neighbouringCells_1_2[1] = out[0][2];
  assign neighbouringCells_1_2[2] = out[1][1];
  assign neighbouringCells_1_2[3] = out[2][1];
  assign neighbouringCells_1_2[4] = out[2][2];
  assign neighbouringCells_1_2[5] = 0;
  assign neighbouringCells_1_2[6] = 0;
  assign neighbouringCells_1_2[7] = 0;
  
  assign neighbouringCells_2_0[0] = out[1][0];
  assign neighbouringCells_2_0[1] = out[1][1];
  assign neighbouringCells_2_0[2] = out[2][1];
  assign neighbouringCells_2_0[3] = 0;
  assign neighbouringCells_2_0[4] = 0;
  assign neighbouringCells_2_0[5] = 0;
  assign neighbouringCells_2_0[6] = 0;
  assign neighbouringCells_2_0[7] = 0;
  
  assign neighbouringCells_2_1[0] = out[1][0];
  assign neighbouringCells_2_1[1] = out[1][1];
  assign neighbouringCells_2_1[2] = out[1][2];
  assign neighbouringCells_2_1[3] = out[2][0];
  assign neighbouringCells_2_1[4] = out[2][2];
  assign neighbouringCells_2_1[5] = 0;
  assign neighbouringCells_2_1[6] = 0;
  assign neighbouringCells_2_1[7] = 0;
  
  assign neighbouringCells_2_2[0] = out[1][1];
  assign neighbouringCells_2_2[1] = out[1][2];
  assign neighbouringCells_2_2[2] = out[2][1];
  assign neighbouringCells_2_2[3] = 0;
  assign neighbouringCells_2_2[4] = 0;
  assign neighbouringCells_2_2[5] = 0;
  assign neighbouringCells_2_2[6] = 0;
  assign neighbouringCells_2_2[7] = 0;
  
  Cell Cell_0_0(out[0][0], clk, neighbouringCells_0_0, in[0][0], initialise);
  Cell Cell_0_1(out[0][1], clk, neighbouringCells_0_1, in[0][1], initialise);
  Cell Cell_0_2(out[0][2], clk, neighbouringCells_0_2, in[0][2], initialise);
  Cell Cell_1_0(out[1][0], clk, neighbouringCells_1_0, in[1][0], initialise);
  Cell Cell_1_1(out[1][1], clk, neighbouringCells_1_1, in[1][1], initialise);
  Cell Cell_1_2(out[1][2], clk, neighbouringCells_1_2, in[1][2], initialise);
  Cell Cell_2_0(out[2][0], clk, neighbouringCells_2_0, in[2][0], initialise);
  Cell Cell_2_1(out[2][1], clk, neighbouringCells_2_1, in[2][1], initialise);
  Cell Cell_2_2(out[2][2], clk, neighbouringCells_2_2, in[2][2], initialise);
endmodule
