`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2022 03:57:05 PM
// Design Name: 
// Module Name: tcsm_smtc
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


module tcsm_smtc(in, out);

parameter nob = 4;

input [nob:0] in;
output [nob:0] out;
wire [nob:0] in_c, tc;

assign in_c = ~in;
assign tc = in_c + 1;
assign out = in[4]? tc:in;

endmodule
