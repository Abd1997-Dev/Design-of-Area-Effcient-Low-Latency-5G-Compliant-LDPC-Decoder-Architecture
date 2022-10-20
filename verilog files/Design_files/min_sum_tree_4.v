`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2022 06:06:02 PM
// Design Name: 
// Module Name: min_sum_tree_4
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


module min_sum_tree_4(x0, x1, x2, x3, min1, min2, min1_index);

parameter nob = 4; // number of bitvectors

input [nob:0] x0, x1, x2, x3;
output [nob:0] min1, min2;

//output q0, q1;

output [1:0] min1_index; // this will not change as it is based on the number of inputs and not the bitvectors

wire [nob:0] m1A, m1B, m2A, m2B, z0, z1;
wire ipA, ipB;
wire cpA, cpz0, cpz1;
wire q0,q1;
min_sum_tree_2 A(x0,x1,m1A, m1B,ipA);
min_sum_tree_2 B(x2,x3,m2A, m2B,ipB);

min_sum_sorting mnA(m1A, m2A, min1, cpA);
//min_sum_sorting mn0(m1B, m2A, z0, cpz0);
//min_sum_sorting mn1(m1A, m2B, z1, cpz1);

//assign min2 = cpA?z1:z0;
assign min2 = min1 + 1'b1;

assign q1 = cpA;
assign q0 = cpA?ipB:ipA;

assign min1_index = {q1,q0};

endmodule
