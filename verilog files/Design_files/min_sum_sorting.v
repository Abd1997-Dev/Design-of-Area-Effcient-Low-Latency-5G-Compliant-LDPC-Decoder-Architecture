`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2022 06:19:39 PM
// Design Name: 
// Module Name: min_sum_sorting
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

module min_sum_sorting(V1,V2,mV,ip);

parameter nob = 4;

input [nob:0] V1, V2;
output [nob:0] mV;
output ip;
reg ip;
assign mV = ip? V2:V1;
always @(V1, V2)
begin
if (V1 >= V2)
ip = 1;
else
ip = 0;
end
endmodule
