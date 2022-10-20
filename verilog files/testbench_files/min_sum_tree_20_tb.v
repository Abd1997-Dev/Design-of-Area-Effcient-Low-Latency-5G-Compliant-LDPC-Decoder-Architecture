`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2022 03:24:57 PM
// Design Name: 
// Module Name: min_sum_tree_20_tb
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


module min_sum_tree_20_tb();
reg [4:0] x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,x16,x17,x18,x19;
wire [4:0] min1, min2;
wire [4:0] min1_index;

min_sum_tree_20 tb(x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15,x16,x17,x18,x19,min1, min2, min1_index );
initial begin
x0 = 30;
x1 = 12;
x2 = 15;
x3 = 18;
x4 = 22;
x5 = 19;
x6 = 5;
x7 = 7;
x8 = 8;
x9 = 9;
x10 = 29;
x11 = 16;
x12 = 12;
x13 = 11;
x14 = 7;
x15 = 8;
x16 = 2;
x17 = 1;
x18 = 5;
//x19 = 0;
end
endmodule
