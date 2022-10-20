`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2022 02:37:32 PM
// Design Name: 
// Module Name: min_sum_tree
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


module min_sum_tree_2(V1,V2,min1,min2,ip);
parameter nob = 4; // number of bitvectors
input [nob:0] V1, V2;
output [nob:0] min1, min2;
output ip;
reg ip;
assign min1 = ip? V2:V1;
assign min2 = min1+ 1'b1;
always @(V1, V2)
begin
if (V1 >= V2)
ip = 1;
else
ip = 0;
end

endmodule
