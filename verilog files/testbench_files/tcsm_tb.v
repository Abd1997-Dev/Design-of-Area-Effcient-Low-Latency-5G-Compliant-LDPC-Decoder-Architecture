`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2022 04:03:20 PM
// Design Name: 
// Module Name: tcsm_tb
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


module tcsm_tb();
reg [4:0] in;
wire [4:0] out;

tcsm_smtc tb (in, out);
initial begin
in = 5'b10001;
end
endmodule
