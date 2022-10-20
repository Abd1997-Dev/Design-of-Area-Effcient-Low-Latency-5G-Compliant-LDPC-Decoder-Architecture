`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2022 03:46:42 PM
// Design Name: 
// Module Name: MSAU
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


module MSAU(i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15,o16,o17,o18,o19,min1_index, clk);
parameter nob = 4; // number of bitvectors
input [nob:0] i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15,i16,i17,i18, i19;
input clk;
output [nob:0] o0, o1, o2, o3, o4, o5, o6, o7, o8, o9, o10, o11, o12, o13, o14, o15,o16,o17,o18,o19;
output [4:0] min1_index; // changed the bitvector value just check it later

wire [nob:0] ow0, ow1, ow2, ow3, ow4, ow5, ow6, ow7, ow8, ow9, ow10, ow11, ow12, ow13, ow14, ow15,ow16,ow17,ow18,ow19;
wire [nob:0] iw0, iw1, iw2, iw3, iw4, iw5, iw6, iw7, iw8, iw9, iw10, iw11, iw12, iw13, iw14, iw15,iw16,iw17,iw18,iw19;
wire [nob:0] min1_w, min2_w;
wire [4:0] min1_index_w; // changed the bitvector value just check it later
wire product_bit;
reg  product_bit_0,  product_bit_1,  product_bit_2, product_bit_3,  product_bit_4,  product_bit_5, product_bit_6,  product_bit_7,  product_bit_8, product_bit_9,  product_bit_10,  product_bit_11,  product_bit_12,  product_bit_13,  product_bit_14,  product_bit_15,  product_bit_16,  product_bit_17,  product_bit_18;
wire [nob:0] min1_w_intermediate, min2_w_intermediate;
wire [nob:0] m1, m2;
wire [nob:0] iw0_w, iw1_w, iw2_w , iw3_w , iw4_w , iw5_w , iw6_w , iw7_w  ,iw8_w , iw9_w , iw10_w , iw11_w , iw12_w , iw13_w , iw14_w , iw15_w , iw16_w , iw17_w ,iw18_w;  


tcsm_smtc t0(i0, ow0);
tcsm_smtc t1(i1, ow1);
tcsm_smtc t2(i2, ow2);
tcsm_smtc t3(i3, ow3);
tcsm_smtc t4(i4, ow4);
tcsm_smtc t5(i5, ow5);
tcsm_smtc t6(i6, ow6);                                           
tcsm_smtc t7(i7, ow7);
tcsm_smtc t8(i8, ow8);
tcsm_smtc t9(i9, ow9);
tcsm_smtc t10(i10, ow10);
tcsm_smtc t11(i11, ow11);
tcsm_smtc t12(i12, ow12);
tcsm_smtc t13(i13, ow13);
tcsm_smtc t14(i14, ow14);
tcsm_smtc t15(i15, ow15);
tcsm_smtc t16(i16, ow16);
tcsm_smtc t17(i17, ow17);
tcsm_smtc t18(i18, ow18);
tcsm_smtc t19(i19, ow19); // the value of 19th input should be given as the highest value, otherwise error will occur.

min_sum_tree_20 mVG_19(ow0[nob:0], ow1[nob:0], ow2[nob:0], ow3[nob:0], ow4[nob:0], ow5[nob:0], ow6[nob:0], ow7[nob:0], ow8[nob:0], ow9[nob:0], ow10[nob:0], ow11[nob:0], ow12[nob:0], ow13[nob:0], ow14[nob:0], ow15[nob:0],ow16[nob:0],ow17[nob:0],ow18[nob:0],ow19[nob:0], min1_w, min2_w, min1_index_w);

assign product_bit = ow0[nob] ^ ow1[nob] ^ ow2[nob] ^ ow3[nob] ^ ow4[nob] ^ ow5[nob] ^ ow6[nob] ^ ow7[nob] ^ ow8[nob] ^ ow9[nob] ^ ow10[nob] ^ ow11[nob] ^ ow12[nob] ^ ow13[nob] ^ ow14[nob] ^ ow15[nob] ^ ow16[nob] ^ ow17[nob] ^ ow18[nob];

always @( negedge clk )
begin
product_bit_0 = product_bit ^ ow0[nob];
product_bit_1 = product_bit ^ ow1[nob];
product_bit_2 = product_bit ^ ow2[nob];
 product_bit_3 = product_bit ^ ow3[nob];
 product_bit_4 = product_bit ^ ow4[nob];
 product_bit_5 = product_bit ^ ow5[nob];
 product_bit_6 = product_bit ^ ow6[nob];
 product_bit_7 = product_bit ^ ow7[nob];
  product_bit_8 = product_bit ^ ow8[nob];
 product_bit_9 = product_bit ^ ow9[nob];
 product_bit_10 = product_bit ^ ow10[nob];
 product_bit_11 = product_bit ^ ow11[nob];
 product_bit_12 = product_bit ^ ow12[nob];
 product_bit_13 = product_bit ^ ow13[nob];
 product_bit_14 = product_bit ^ ow14[nob];
 product_bit_15 = product_bit ^ ow15[nob];
 product_bit_16 = product_bit ^ ow16[nob];
 product_bit_17 = product_bit ^ ow17[nob];
 product_bit_18 = product_bit ^ ow18[nob];

end

assign min1_w_intermediate = min1_w - 1; // performing offset min_sum operation
assign min2_w_intermediate = min2_w - 1; // performing offset min_sum operation

assign m1 = min1_w_intermediate[nob]? 5'd0 : min1_w_intermediate;
assign m2 = min2_w_intermediate[nob]? 5'd0 : min2_w_intermediate;

assign iw0 = (m1 == i0)? m2:m1;
assign iw1 = (m1 == i1)? m2:m1;
assign iw2 = (m1 == i2)? m2:m1;
assign iw3 = (m1 == i3)? m2:m1;
assign iw4 = (m1 == i4)? m2:m1;
assign iw5 = (m1 == i5)? m2:m1;
assign iw6 = (m1 == i6)? m2:m1;
assign iw7 = (m1 == i7)? m2:m1;
assign iw8 = (m1 == i8)? m2:m1;
assign iw9 = (m1 == i9)? m2:m1;
assign iw10 = (m1 == i10)? m2:m1;
assign iw11 = (m1 == i11)? m2:m1;
assign iw12 = (m1 == i12)? m2:m1;
assign iw13 = (m1 == i13)? m2:m1;
assign iw14 = (m1 == i14)? m2:m1;
assign iw15 = (m1 == i15)? m2:m1;
assign iw16 = (m1 == i16)? m2:m1;
assign iw17 = (m1 == i17)? m2:m1;
assign iw18 = (m1 == i18)? m2:m1;

assign iw0_w = {product_bit_0, iw0};
assign iw1_w = {product_bit_1, iw1};
assign iw2_w = {product_bit_2, iw2};
assign iw3_w = {product_bit_3, iw3};
assign iw4_w = {product_bit_4, iw4};
assign iw5_w = {product_bit_5, iw5};
assign iw6_w = {product_bit_6, iw6};
assign iw7_w = {product_bit_7, iw7};
assign iw8_w = {product_bit_8, iw8};
assign iw9_w = {product_bit_9, iw9};
assign iw10_w = {product_bit_10, iw10};
assign iw11_w = {product_bit_11, iw11};
assign iw12_w = {product_bit_12, iw12};
assign iw13_w = {product_bit_13, iw13};
assign iw14_w = {product_bit_14, iw14};
assign iw15_w = {product_bit_15, iw15};
assign iw16_w = {product_bit_16, iw16};
assign iw17_w = {product_bit_17, iw17};
assign iw18_w = {product_bit_18, iw18};

tcsm_smtc s0 (iw0_w, o0);
tcsm_smtc s1 (iw1_w, o1);
tcsm_smtc s2 (iw2_w, o2);
tcsm_smtc s3 (iw3_w, o3);
tcsm_smtc s4 (iw4_w, o4);
tcsm_smtc s5 (iw5_w, o5);
tcsm_smtc s6 (iw6_w, o6);
tcsm_smtc s7 (iw7_w, o7);
tcsm_smtc s8 (iw8_w, o8);
tcsm_smtc s9 (iw9_w, o9);
tcsm_smtc s10 (iw10_w, o10);
tcsm_smtc s11 (iw11_w, o11);
tcsm_smtc s12 (iw12_w, o12);
tcsm_smtc s13 (iw13_w, o13);
tcsm_smtc s14 (iw14_w, o14);
tcsm_smtc s15 (iw15_w, o15);
tcsm_smtc s16 (iw16_w, o16);
tcsm_smtc s17 (iw17_w, o17);
tcsm_smtc s18 (iw18_w, o18);


assign min1_index = min1_index_w;
endmodule
