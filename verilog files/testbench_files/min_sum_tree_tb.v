`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2022 07:01:53 PM
// Design Name: 
// Module Name: min_sum_tree_tb
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


module min_sum_tree_tb();
reg [4:0] x0, x1, x2, x3, x4, x5, x6, x7;
wire [4:0] min1, min2;
//wire q0, q1;
wire [2:0] min1_index;

min_sum_tree_8 tb(x0, x1, x2, x3, x4, x5, x6, x7, min1, min2, min1_index);

initial begin
x0 = 1;
x1 = 12;
x2 = 0;
x3 = 4;
x4 = 2;
x5 = 13;
x6 = 10;
x7 = 0;
end
endmodule
