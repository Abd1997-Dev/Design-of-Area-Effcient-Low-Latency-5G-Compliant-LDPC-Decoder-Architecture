`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2022 10:28:45 PM
// Design Name: 
// Module Name: min_sum_tree_8
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


//module min_sum_tree_8(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, min1, min2, min1_index);
//// Array usage may reduce some amount of resources. or it may be helpful for easy understanding.  
//input [4:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18;
//output [4:0] min1, min2;
//output [4:0] min1_index;
//// think about the index values over here.
//wire [4:0] m1A, m1B, m2A, m2B, z0, z1;
//wire [1:0] ipA, ipB;
//wire cpA, cpz0, cpz1;
//wire q1;
//wire [1:0] q0;
//min_sum_tree_4 A(x0, x1, x2, x3, m1A, m1B, ipA);
//min_sum_tree_4 B(x4, x5, x6, x7, m2A, m2B, ipB);

//min_sum_sorting mnA(m1A, m2A, min1, cpA);
//min_sum_sorting mn0(m1B, m2A, z0, cpz0);
//min_sum_sorting mn1(m1A, m2B, z1, cpz1);

//assign min2 = cpA?z1:z0;

//assign q1 = cpA;
//assign q0 = cpA?ipB:ipA;

//assign min1_index = {q1,q0};

//endmodule


module min_sum_tree_8(x0, x1, x2, x3, x4, x5, x6, x7, min1, min2, min1_index);

parameter nob = 4; // number of bitvectors

input [nob:0] x0, x1, x2, x3, x4, x5, x6, x7;
output [nob:0] min1, min2;
output [2:0] min1_index;
wire [nob:0] m1A, m1B, m2A, m2B, z0, z1;
wire [1:0] ipA, ipB;
wire cpA, cpz0, cpz1;
wire q1;
wire [1:0] q0;
min_sum_tree_4 A(x0, x1, x2, x3, m1A, m1B, ipA);
min_sum_tree_4 B(x4, x5, x6, x7, m2A, m2B, ipB);

min_sum_sorting mnA(m1A, m2A, min1, cpA);
//min_sum_sorting mn0(m1B, m2A, z0, cpz0);
//min_sum_sorting mn1(m1A, m2B, z1, cpz1);

//assign min2 = cpA?z1:z0;
assign min2 = min1 + 1'b1;

assign q1 = cpA;
assign q0 = cpA?ipB:ipA;

assign min1_index = {q1,q0};

endmodule