`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2022 04:55:21 PM
// Design Name: 
// Module Name: min_sum_tree_16_tb
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


module min_sum_tree_16_tb();
reg [4:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15;
wire [4:0] min1, min2;
wire [3:0] min1_index;

min_sum_tree_16 tb(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, min1, min2, min1_index);
initial begin
x0 = 15;
x1 = 2;
x2 = 5;
x3 = 9;
x4 = 11;
x5 = 3;
x6 = 12;
x7 = 6;
x8 = 7;
x9 = 12;
x10 = 13;
x11 = 4;
x12 = 8;
x13 = 2;
x14 = 11;
x15 = 13;
end
endmodule
