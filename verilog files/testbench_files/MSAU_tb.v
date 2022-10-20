`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/15/2022 01:36:06 AM
// Design Name: 
// Module Name: MSAU_tb
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


module MSAU_tb();
reg [3:0] i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15,i16,i17,i18, i19;
wire [3:0] o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15,o16,o17,o18,o19;
wire [3:0] min1_index;

MSAU uut(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15,o16,o17,o18,o19,min1_index);
initial begin
i0 = 4'd3;
i1 = 4'd1;
i2 = 4'd12;
i3 = 4'd7;
i4 = 4'd2;
i5 = 4'd11;
i6 = 4'd10;
i7 = 4'd2;
i8 = 4'd4;
i9 = 4'd9;
i10 = 4'd10;
i11 = 4'd5;
i12 = 4'd4;
i13 = 4'd3;
i14 = 4'd8;
i15 = 4'd7;
i16 = 4'd9;
i17 = 4'd10;
i18 = 4'd12;
i19 = 4'd15;
end
endmodule
