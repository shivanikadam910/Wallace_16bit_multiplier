`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:53:16 12/10/2019 
// Design Name: 
// Module Name:    wallace_16bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module wallace_16bit(A,B,Z);
input [15:0] A,B;
output [31:0] Z;
reg p [15:0][15:0];
integer i,j;
wire [278:0]s,c;

always@(*)
begin
for(i=0;i<=15;i=i+1)
for(j=0;j<=15;j=j+1)
p[i][j] <= A[i]&B[j];
end

//First step

//First sum

assign s[0] = p[0][0];

HA h1(s[1],c[1],p[0][1],p[1][0]);

FA f1(s[2],c[2],p[0][2],p[1][1],p[2][0]);
 
FA f2(s[3],c[3],p[0][3],p[1][2],p[2][1]);

FA f3(s[4],c[4],p[0][4],p[1][3],p[2][2]);

FA f4(s[5],c[5],p[0][5],p[1][4],p[2][3]);

FA f5(s[6],c[6],p[0][6],p[1][5],p[2][4]);

FA f6(s[7],c[7],p[0][7],p[1][6],p[2][5]);

FA f7(s[8],c[8],p[0][8],p[1][7],p[2][6]);

FA f8(s[9],c[9],p[0][9],p[1][8],p[2][7]);

FA f9(s[10],c[10],p[0][10],p[1][9],p[2][8]);

FA f10(s[11],c[11],p[0][11],p[1][10],p[2][9]);

FA f11(s[12],c[12],p[0][12],p[1][11],p[2][10]);

FA f12(s[13],c[13],p[0][13],p[1][12],p[2][11]);

FA f13(s[14],c[14],p[0][14],p[1][13],p[2][12]);

FA f14(s[15],c[15],p[0][15],p[1][14],p[2][13]);

HA h2(s[16],c[16],p[1][15],p[2][14]);

//Second sum
HA h3(s[17],c[17],p[3][1],p[4][0]);

FA f15(s[18],c[18],p[3][2],p[4][1],p[5][0]);

FA f16(s[19],c[19],p[3][3],p[4][2],p[5][1]);

FA f17(s[20],c[20],p[3][4],p[4][3],p[5][2]);

FA f18(s[21],c[21],p[3][5],p[4][4],p[5][3]);

FA f19(s[22],c[22],p[3][6],p[4][5],p[5][4]);

FA f20(s[23],c[23],p[3][7],p[4][6],p[5][5]);

FA f21(s[24],c[24],p[3][8],p[4][7],p[5][6]);

FA f22(s[25],c[25],p[3][9],p[4][8],p[5][7]);

FA f23(s[26],c[26],p[3][10],p[4][9],p[5][8]);

FA f24(s[27],c[27],p[3][11],p[4][10],p[5][9]);

FA f25(s[28],c[28],p[3][12],p[4][11],p[5][10]);

FA f26(s[29],c[29],p[3][13],p[4][12],p[5][11]);

FA f27(s[30],c[30],p[3][14],p[4][13],p[5][12]);

FA f28(s[31],c[31],p[3][15],p[4][14],p[5][13]);

HA h4(s[32],c[32],p[4][15],p[5][14]);

//Third sum

HA h5(s[33],c[33],p[6][1],p[7][0]);

FA f29(s[34],c[34],p[6][2],p[7][1],p[8][0]);

FA f30(s[35],c[35],p[6][3],p[7][2],p[8][1]);

FA f31(s[36],c[36],p[6][4],p[7][3],p[8][2]);

FA f32(s[37],c[37],p[6][5],p[7][4],p[8][3]);

FA f33(s[38],c[38],p[6][6],p[7][5],p[8][4]);

FA f34(s[39],c[39],p[6][7],p[7][6],p[8][5]);

FA f35(s[40],c[40],p[6][8],p[7][7],p[8][6]);

FA f36(s[41],c[41],p[6][9],p[7][8],p[8][7]);

FA f37(s[42],c[42],p[6][10],p[7][9],p[8][8]);

FA f38(s[43],c[43],p[6][11],p[7][10],p[8][9]);

FA f39(s[44],c[44],p[6][12],p[7][11],p[8][10]);

FA f40(s[45],c[45],p[6][13],p[7][12],p[8][11]);

FA f41(s[46],c[46],p[6][14],p[7][13],p[8][12]);

FA f42(s[47],c[47],p[6][15],p[7][14],p[8][13]);

HA h6(s[48],c[48],p[7][15],p[8][14]);

//Fourth sum

HA h7(s[49],c[49],p[9][1],p[10][0]);

FA f43(s[50],c[50],p[9][2],p[10][1],p[11][0]);

FA f44(s[51],c[51],p[9][3],p[10][2],p[11][1]);

FA f45(s[52],c[52],p[9][4],p[10][3],p[11][2]);

FA f46(s[53],c[53],p[9][5],p[10][4],p[11][3]);

FA f47(s[54],c[54],p[9][6],p[10][5],p[11][4]);

FA f48(s[55],c[55],p[9][7],p[10][6],p[11][5]);

FA f49(s[56],c[56],p[9][8],p[10][7],p[11][6]);

FA f50(s[57],c[57],p[9][9],p[10][8],p[11][7]);

FA f51(s[58],c[58],p[9][10],p[10][9],p[11][8]);

FA f52(s[59],c[59],p[9][11],p[10][10],p[11][9]);

FA f53(s[60],c[60],p[9][12],p[10][11],p[11][10]);

FA f54(s[61],c[61],p[9][13],p[10][12],p[11][11]);

FA f55(s[62],c[62],p[9][14],p[10][13],p[11][12]);

FA f56(s[63],c[63],p[9][15],p[10][14],p[11][13]);

HA h53(s[64],c[64],p[10][15],p[11][14]);

//Fifth sum


HA h8(s[65],c[65],p[12][1],p[13][0]);

FA f57(s[66],c[66],p[12][2],p[13][1],p[14][0]);

FA f58(s[67],c[67],p[12][3],p[13][2],p[14][1]);

FA f59(s[68],c[68],p[12][4],p[13][3],p[14][2]);

FA f60(s[69],c[69],p[12][5],p[13][4],p[14][3]);

FA f61(s[70],c[70],p[12][6],p[13][5],p[14][4]);

FA f62(s[71],c[71],p[12][7],p[13][6],p[14][5]);

FA f63(s[72],c[72],p[12][8],p[13][7],p[14][6]);

FA f64(s[73],c[73],p[12][9],p[13][8],p[14][7]);

FA f65(s[74],c[74],p[12][10],p[13][9],p[14][8]);

FA f66(s[75],c[75],p[12][11],p[13][10],p[14][9]);

FA f67(s[76],c[76],p[12][12],p[13][11],p[14][10]);

FA f68(s[77],c[77],p[12][13],p[13][12],p[14][11]);

FA f69(s[78],c[78],p[12][14],p[13][13],p[14][12]);

FA f70(s[79],c[79],p[12][15],p[13][14],p[14][13]);

HA h54(s[80],c[80],p[13][15],p[14][14]);

//Second step

//First sum

HA h9(s[81],c[81],s[2],c[1]);

FA f71(s[82],c[82],s[3],c[2],p[3][0]);

FA f72(s[83],c[83],s[4],c[3],s[17]);

FA f73(s[84],c[84],s[5],c[4],s[18]);

FA f74(s[85],c[85],s[6],c[5],s[19]);

FA f75(s[86],c[86],s[7],c[6],s[20]);

FA f76(s[87],c[87],s[8],c[7],s[21]);

FA f77(s[88],c[88],s[9],c[8],s[22]);

FA f78(s[89],c[89],s[10],c[9],s[23]);

FA f79(s[90],c[90],s[11],c[10],s[24]);

FA f80(s[91],c[91],s[12],c[11],s[25]);

FA f81(s[92],c[92],s[13],c[12],s[26]);

FA f82(s[93],c[93],s[14],c[13],s[27]);

FA f83(s[94],c[94],s[15],c[14],s[28]);

FA f84(s[95],c[95],s[16],c[15],s[29]);

FA f85(s[96],c[96],p[2][15],c[16],s[30]);

//Second sum

HA h10(s[97],c[97],p[6][0],c[18]);

HA h11(s[98],c[98],c[19],s[33]);

FA f86(s[99],c[99],c[20],s[34],c[33]);

FA f87(s[100],c[100],c[21],s[35],c[34]);

FA f88(s[101],c[101],c[22],s[36],c[35]);

FA f89(s[102],c[102],c[23],s[37],c[36]);

FA f90(s[103],c[103],c[24],s[38],c[37]);

FA f91(s[104],c[104],c[25],s[39],c[38]);

FA f92(s[105],c[105],c[26],s[40],c[39]);

FA f93(s[106],c[106],c[27],s[41],c[40]);

FA f94(s[107],c[107],c[28],s[42],c[41]);

FA f95(s[108],c[108],c[29],s[43],c[42]);

FA f96(s[109],c[109],c[30],s[44],c[43]);

FA f97(s[110],c[110],c[31],s[45],c[44]);

FA f98(s[111],c[111],c[32],s[46],c[45]);

HA h12(s[112],c[112],s[47],c[46]);

HA h13(s[113],c[113],s[48],c[47]);

HA h14(s[114],c[114],p[8][15],c[48]);

//Third sum

HA h15(s[115],c[115],s[50],c[49]);

FA f99(s[116],c[116],s[51],c[50],p[12][0]);

FA f100(s[117],c[117],s[52],c[51],s[65]);

FA f101(s[118],c[118],s[53],c[52],s[66]);

FA f102(s[119],c[119],s[54],c[53],s[67]);

FA f103(s[120],c[120],s[55],c[54],s[68]);

FA f104(s[121],c[121],s[56],c[55],s[69]);

FA f105(s[122],c[122],s[57],c[56],s[70]);

FA f106(s[123],c[123],s[58],c[57],s[71]);

FA f107(s[124],c[124],s[59],c[58],s[72]);

FA f108(s[125],c[125],s[60],c[59],s[73]);

FA f109(s[126],c[126],s[61],c[60],s[74]);

FA f110(s[127],c[127],s[62],c[61],s[75]);

FA f111(s[128],c[128],s[63],c[62],s[76]);

FA f112(s[129],c[129],s[64],c[63],s[77]);

FA f113(s[130],c[130],p[11][15],c[64],s[78]);

//Third step

//First sum

HA h16(s[131],c[131],s[82],c[81]);

HA h17(s[132],c[132],s[83],c[82]);

FA f114(s[133],c[133],s[84],c[83],c[17]);

FA f115(s[134],c[134],s[85],c[84],s[97]);

FA f116(s[135],c[135],s[86],c[85],s[98]);

FA f117(s[136],c[136],s[87],c[86],s[99]);

FA f118(s[137],c[137],s[88],c[87],s[100]);

FA f119(s[138],c[138],s[89],c[88],s[101]);

FA f120(s[139],c[139],s[90],c[89],s[102]);

FA f121(s[140],c[140],s[91],c[90],s[103]);

FA f122(s[141],c[141],s[92],c[91],s[104]);

FA f123(s[142],c[142],s[93],c[92],s[105]);

FA f124(s[143],c[143],s[94],c[93],s[106]);

FA f125(s[144],c[144],s[95],c[94],s[107]);

FA f126(s[145],c[145],s[96],c[95],s[108]);

FA f127(s[146],c[146],s[31],c[96],s[109]);

HA h18(s[147],c[147],s[32],s[110]);

HA h19(s[148],c[148],p[5][15],s[111]);

//Second sum

HA h20(s[149],c[149],c[99],p[9][0]);

HA h21(s[150],c[150],c[100],s[49]);

HA h22(s[151],c[151],c[101],s[115]);

FA f128(s[152],c[152],c[102],s[116],c[115]);

FA f129(s[153],c[153],c[103],s[117],c[116]);

FA f130(s[154],c[154],c[104],s[118],c[117]);

FA f131(s[155],c[155],c[105],s[119],c[118]);

FA f132(s[156],c[156],c[106],s[120],c[119]);

FA f133(s[157],c[157],c[107],s[121],c[120]);

FA f134(s[158],c[158],c[108],s[122],c[121]);

FA f135(s[159],c[159],c[109],s[123],c[122]);

FA f136(s[160],c[160],c[110],s[124],c[123]);

FA f137(s[161],c[161],c[111],s[125],c[124]);

FA f138(s[162],c[162],c[112],s[126],c[125]);

FA f139(s[163],c[163],c[113],s[127],c[126]);

FA f140(s[164],c[164],c[114],s[128],c[127]);

HA h23(s[165],c[165],s[129],c[128]);

HA h24(s[166],c[166],s[130],c[129]);

HA h25(s[167],c[167],s[79],c[130]);

//Fourth step

//First sum

HA h26(s[168],c[168],s[132],c[131]);

HA h27(s[169],c[169],s[133],c[132]);

HA h28(s[170],c[170],s[134],c[133]);

FA f141(s[171],c[171],s[135],c[134],c[97]);

FA f142(s[172],c[172],s[136],c[135],c[98]);

FA f143(s[173],c[173],s[137],c[136],s[149]);

FA f144(s[174],c[174],s[138],c[137],s[150]);

FA f145(s[175],c[175],s[139],c[138],s[151]);

FA f146(s[176],c[176],s[140],c[139],s[152]);

FA f147(s[177],c[177],s[141],c[140],s[153]);

FA f148(s[178],c[178],s[142],c[141],s[154]);

FA f149(s[179],c[179],s[143],c[142],s[155]);

FA f150(s[180],c[180],s[144],c[143],s[156]);

FA f151(s[181],c[181],s[145],c[144],s[157]);

FA f152(s[182],c[182],s[146],c[145],s[158]);

FA f153(s[183],c[183],s[147],c[146],s[159]);

FA f154(s[184],c[184],s[148],c[147],s[160]);

FA f155(s[185],c[185],s[112],c[148],s[161]);

HA h55(s[186],c[186],s[113],s[162]);

HA h29(s[187],c[187],s[114],c[163]);

//Second sum

HA h30(s[188],c[188],c[153],c[65]);

FA f156(s[189],c[189],c[154],c[66],p[15][0]);

FA f157(s[190],c[190],c[155],c[67],p[15][1]);

FA f158(s[191],c[191],c[156],c[68],p[15][2]);

FA f159(s[192],c[192],c[157],c[69],p[15][3]);

FA f160(s[193],c[193],c[158],c[70],p[15][4]);

FA f161(s[194],c[194],c[159],c[71],p[15][5]);

FA f162(s[195],c[195],c[160],c[72],p[15][6]);

FA f163(s[196],c[196],c[161],c[73],p[15][7]);

FA f164(s[197],c[197],c[162],c[74],p[15][8]);

FA f165(s[198],c[198],c[163],c[75],p[15][9]);

FA f166(s[199],c[199],c[164],c[76],p[15][10]);

FA f167(s[200],c[200],c[165],c[77],p[15][11]);

FA f168(s[201],c[201],c[166],c[78],p[15][12]);

FA f169(s[202],c[202],c[167],c[79],p[15][13]);

HA h31(s[203],c[203],c[80],p[15][14]);

//Fifth step

//First sum

HA h32(s[204],c[204],s[169],c[168]);

HA h33(s[205],c[205],s[170],c[169]);

HA h34(s[206],c[206],s[171],c[170]);

HA h35(s[207],c[207],s[172],c[171]);

HA h36(s[208],c[208],s[173],c[172]);

FA f170(s[209],c[209],s[174],c[173],c[149]);

FA f171(s[210],c[210],s[175],c[174],c[150]);

FA f172(s[211],c[211],s[176],c[175],c[151]);

FA f173(s[212],c[212],s[177],c[176],c[152]);

FA f174(s[213],c[213],s[178],c[177],s[188]);

FA f175(s[214],c[214],s[179],c[178],s[189]);

FA f176(s[215],c[215],s[180],c[179],s[190]);

FA f177(s[216],c[216],s[181],c[180],s[191]);

FA f178(s[217],c[217],s[182],c[181],s[192]);

FA f179(s[218],c[218],s[183],c[182],s[193]);

FA f180(s[219],c[219],s[184],c[183],s[194]);

FA f181(s[220],c[220],s[185],c[184],s[195]);

FA f182(s[221],c[221],s[186],c[185],s[196]);

FA f183(s[222],c[222],s[187],c[186],s[197]);

FA f184(s[223],c[223],s[164],c[187],s[198]);

HA h37(s[224],c[224],s[165],s[199]);

HA h38(s[225],c[225],s[166],s[200]);

HA h39(s[226],c[226],s[167],s[201]);

HA h40(s[227],c[227],s[80],s[202]);

HA h41(s[228],c[228],p[14][15],s[203]);

//Sixth step

HA h42(s[229],c[229],s[205],c[204]);

HA h43(s[230],c[230],s[206],c[205]);

HA h44(s[231],c[231],s[207],c[206]);

HA h45(s[232],c[232],s[208],c[207]);

HA h46(s[233],c[233],s[209],c[208]);

HA h47(s[234],c[234],s[210],c[209]);

HA h48(s[235],c[235],s[211],c[210]);

HA h49(s[236],c[236],s[212],c[211]);

HA h50(s[237],c[237],s[213],c[212]);

//HA h50(s[237],c[237],s[213],c[212]);

FA f185(s[238],c[238],s[214],c[213],c[188]);

FA f186(s[239],c[239],s[215],c[214],c[189]);

FA f187(s[240],c[240],s[216],c[215],c[190]);

FA f188(s[241],c[241],s[217],c[216],c[191]);

FA f189(s[242],c[242],s[218],c[217],c[192]);

FA f190(s[243],c[243],s[219],c[218],c[193]);

FA f191(s[244],c[244],s[220],c[219],c[194]);

FA f192(s[245],c[245],s[221],c[220],c[195]);

FA f193(s[246],c[246],s[222],c[221],c[196]);

FA f194(s[247],c[247],s[223],c[222],c[197]);

FA f195(s[248],c[248],s[224],c[223],c[198]);

FA f196(s[249],c[249],s[225],c[224],c[199]);

FA f197(s[250],c[250],s[226],c[225],c[200]);

FA f198(s[251],c[251],s[227],c[226],c[201]);

FA f199(s[252],c[252],s[228],c[227],c[202]);

FA f200(s[253],c[253],p[15][15],c[228],c[203]);

//Seventh step

HA h51(s[254],c[254],s[230],c[229]);

FA f201(s[255],c[255],s[231],c[230],c[254]);

FA f202(s[256],c[256],s[232],c[231],c[255]);

FA f203(s[257],c[257],s[233],c[232],c[256]);

FA f204(s[258],c[258],s[234],c[233],c[257]);

FA f205(s[259],c[259],s[235],c[234],c[258]);

FA f206(s[260],c[260],s[236],c[235],c[259]);

FA f207(s[261],c[261],s[237],c[236],c[260]);

FA f208(s[262],c[262],s[238],c[237],c[261]);

FA f209(s[263],c[263],s[239],c[238],c[262]);

FA f210(s[264],c[264],s[240],c[239],c[263]);

FA f211(s[265],c[265],s[241],c[240],c[264]);

FA f212(s[266],c[266],s[242],c[241],c[265]);

FA f213(s[267],c[267],s[243],c[242],c[266]);

FA f214(s[268],c[268],s[244],c[243],c[267]);

FA f215(s[269],c[269],s[245],c[244],c[268]);

FA f216(s[270],c[270],s[246],c[245],c[269]);

FA f217(s[271],c[271],s[247],c[246],c[270]);

FA f218(s[272],c[272],s[248],c[247],c[271]);

FA f219(s[273],c[273],s[249],c[248],c[272]);

FA f220(s[274],c[274],s[250],c[249],c[273]);

FA f221(s[275],c[275],s[251],c[250],c[274]);

FA f222(s[276],c[276],s[252],c[251],c[275]);

FA f223(s[277],c[277],s[253],c[252],c[276]);

HA h52(s[278],c[278],c[277],c[253]);


assign Z ={s[278],s[277],s[276],s[275],s[274],s[273],s[272],s[271],s[270],s[269],s[268],s[267],s[266],s[265],s[264],s[263],s[262],s[261],s[260],s[259],s[258],s[257],s[256],s[255],s[254],s[229],s[204],s[168],s[131],s[81],s[1],s[0]};
	


endmodule

module HA(sum,carry,a,b);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;

endmodule

module FA( S, Cout, X1, X2, Cin);  
  input X1, X2, Cin; 
  output S, Cout;
    reg[1:0] temp;
   always @(*)
   begin 
   temp = {1'b0,X1} + {1'b0,X2}+{1'b0,Cin};
   end 
   assign S = temp[0];
   assign Cout = temp[1];
endmodule  

