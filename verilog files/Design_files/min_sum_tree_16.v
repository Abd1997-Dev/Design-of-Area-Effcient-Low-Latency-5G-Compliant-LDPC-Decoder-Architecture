`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2022 04:37:27 PM
// Design Name: 
// Module Name: min_sum_tree_16
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module min_sum_tree_16(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, min1, min2, min1_index);

parameter nob = 4; // number of bitvectors
input [nob:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15; // place of change
output [nob:0] min1, min2; // place of change
output [3:0] min1_index;
wire [nob:0] m1A, m1B, m2A, m2B, z0, z1; // place of change
wire [2:0] ipA, ipB;
wire cpA, cpz0, cpz1;
wire q1;
wire [2:0] q0;

min_sum_tree_8 A(x0, x1, x2, x3, x4, x5, x6, x7, m1A, m1B, ipA);
min_sum_tree_8 B(x8, x9, x10, x11, x12, x13, x14, x15, m2A, m2B, ipB);

min_sum_sorting mnA(m1A, m2A, min1, cpA);
//min_sum_sorting mn0(m1B, m2A, z0, cpz0);
//min_sum_sorting mn1(m1A, m2B, z1, cpz1);

//assign min2 = cpA?z1:z0;

assign min2 = min1 + 1'b1;

assign q1 = cpA;
assign q0 = cpA?ipB:ipA;

assign min1_index = {q1,q0};
endmodule
