// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __voicerec_processChunk_dctMatrix_H__
#define __voicerec_processChunk_dctMatrix_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct voicerec_processChunk_dctMatrix_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 676;
  static const unsigned AddressWidth = 10;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(voicerec_processChunk_dctMatrix_ram) {
        for (unsigned i = 0; i < 26 ; i = i + 1) {
            ram[i] = "0b00111111100000000000000000000000";
        }
        ram[26] = "0b00111111011111111000100010111001";
        ram[27] = "0b00111111011110111100111010000101";
        ram[28] = "0b00111111011101000110100010001000";
        ram[29] = "0b00111111011010010111001001000111";
        ram[30] = "0b00111111010110110001010001100110";
        ram[31] = "0b00111111010010011000010010100001";
        ram[32] = "0b00111111001101010000010100101001";
        ram[33] = "0b00111111000111011110000101011101";
        ram[34] = "0b00111111000001000111000001100101";
        ram[35] = "0b00111110110100100010000101000010";
        ram[36] = "0b00111110100110000101000111101100";
        ram[37] = "0b00111110001110001001011000010100";
        ram[38] = "0b00111101011101110100111011101100";
        ram[39] = "0b10111101011101110100111011101100";
        ram[40] = "0b10111110001110001001011000010100";
        ram[41] = "0b10111110100110000101000111101100";
        ram[42] = "0b10111110110100100010000101000010";
        ram[43] = "0b10111111000001000111000001100101";
        ram[44] = "0b10111111000111011110000101011101";
        ram[45] = "0b10111111001101010000010100101001";
        ram[46] = "0b10111111010010011000010010100001";
        ram[47] = "0b10111111010110110001010001100110";
        ram[48] = "0b10111111011010010111001001000111";
        ram[49] = "0b10111111011101000110100010001000";
        ram[50] = "0b10111111011110111100111010000101";
        ram[51] = "0b10111111011111111000100010111001";
        ram[52] = "0b00111111011111100010001000111110";
        ram[53] = "0b00111111011011110101110101111001";
        ram[54] = "0b00111111010100101010111011010001";
        ram[55] = "0b00111111001010011100001000111011";
        ram[56] = "0b00111110111011011110111111001000";
        ram[57] = "0b00111110011101010001000001001101";
        ram[58] = "0b10100101001110010110011010111100";
        ram[59] = "0b10111110011101010001000001001101";
        ram[60] = "0b10111110111011011110111111001000";
        ram[61] = "0b10111111001010011100001000111011";
        ram[62] = "0b10111111010100101010111011010001";
        ram[63] = "0b10111111011011110101110101111001";
        ram[64] = "0b10111111011111100010001000111110";
        ram[65] = "0b10111111011111100010001000111110";
        ram[66] = "0b10111111011011110101110101111001";
        ram[67] = "0b10111111010100101010111011010001";
        ram[68] = "0b10111111001010011100001000111011";
        ram[69] = "0b10111110111011011110111111001000";
        ram[70] = "0b10111110011101010001000001001101";
        ram[71] = "0b10100101010100111100101010101100";
        ram[72] = "0b00111110011101010001000001001101";
        ram[73] = "0b00111110111011011110111111001000";
        ram[74] = "0b00111111001010011100001000111011";
        ram[75] = "0b00111111010100101010111011010001";
        ram[76] = "0b00111111011011110101110101111001";
        ram[77] = "0b00111111011111100010001000111110";
        ram[78] = "0b00111111011110111100111010000101";
        ram[79] = "0b00111111010110110001010001100110";
        ram[80] = "0b00111111000111011110000101011101";
        ram[81] = "0b00111110100110000101000111101100";
        ram[82] = "0b10111101011101110100111011101100";
        ram[83] = "0b10111110110100100010000101000010";
        ram[84] = "0b10111111001101010000010100101001";
        ram[85] = "0b10111111011010010111001001000111";
        ram[86] = "0b10111111011111111000100010111001";
        ram[87] = "0b10111111011101000110100010001000";
        ram[88] = "0b10111111010010011000010010100001";
        ram[89] = "0b10111111000001000111000001100101";
        ram[90] = "0b10111110001110001001011000010100";
        ram[91] = "0b00111110001110001001011000010100";
        ram[92] = "0b00111111000001000111000001100101";
        ram[93] = "0b00111111010010011000010010100001";
        ram[94] = "0b00111111011101000110100010001000";
        ram[95] = "0b00111111011111111000100010111001";
        ram[96] = "0b00111111011010010111001001000111";
        ram[97] = "0b00111111001101010000010100101001";
        ram[98] = "0b00111110110100100010000101000010";
        ram[99] = "0b00111101011101110100111011101100";
        ram[100] = "0b10111110100110000101000111101100";
        ram[101] = "0b10111111000111011110000101011101";
        ram[102] = "0b10111111010110110001010001100110";
        ram[103] = "0b10111111011110111100111010000101";
        ram[104] = "0b00111111011110001000111110000110";
        ram[105] = "0b00111111001111111001111001011010";
        ram[106] = "0b00111110101101011000111000100010";
        ram[107] = "0b10111101111101101101110110101101";
        ram[108] = "0b10111111000100010110110001100001";
        ram[109] = "0b10111111011000101010110110000010";
        ram[110] = "0b10111111100000000000000000000000";
        ram[111] = "0b10111111011000101010110110000010";
        ram[112] = "0b10111111000100010110110001100001";
        ram[113] = "0b10111101111101101101110110101101";
        ram[114] = "0b00111110101101011000111000100010";
        ram[115] = "0b00111111001111111001111001011010";
        ram[116] = "0b00111111011110001000111110000110";
        ram[117] = "0b00111111011110001000111110000110";
        ram[118] = "0b00111111001111111001111001011010";
        ram[119] = "0b00111110101101011000111000100010";
        ram[120] = "0b10111101111101101101110110101101";
        ram[121] = "0b10111111000100010110110001100001";
        ram[122] = "0b10111111011000101010110110000010";
        ram[123] = "0b10111111100000000000000000000000";
        ram[124] = "0b10111111011000101010110110000010";
        ram[125] = "0b10111111000100010110110001100001";
        ram[126] = "0b10111101111101101101110110101101";
        ram[127] = "0b00111110101101011000111000100010";
        ram[128] = "0b00111111001111111001111001011010";
        ram[129] = "0b00111111011110001000111110000110";
        ram[130] = "0b00111111011101000110100010001000";
        ram[131] = "0b00111111000111011110000101011101";
        ram[132] = "0b00111101011101110100111011101100";
        ram[133] = "0b10111111000001000111000001100101";
        ram[134] = "0b10111111011010010111001001000111";
        ram[135] = "0b10111111011110111100111010000101";
        ram[136] = "0b10111111001101010000010100101001";
        ram[137] = "0b10111110001110001001011000010100";
        ram[138] = "0b00111110110100100010000101000010";
        ram[139] = "0b00111111010110110001010001100110";
        ram[140] = "0b00111111011111111000100010111001";
        ram[141] = "0b00111111010010011000010010100001";
        ram[142] = "0b00111110100110000101000111101100";
        ram[143] = "0b10111110100110000101000111101100";
        ram[144] = "0b10111111010010011000010010100001";
        ram[145] = "0b10111111011111111000100010111001";
        ram[146] = "0b10111111010110110001010001100110";
        ram[147] = "0b10111110110100100010000101000010";
        ram[148] = "0b00111110001110001001011000010100";
        ram[149] = "0b00111111001101010000010100101001";
        ram[150] = "0b00111111011110111100111010000101";
        ram[151] = "0b00111111011010010111001001000111";
        ram[152] = "0b00111111000001000111000001100101";
        ram[153] = "0b10111101011101110100111011101100";
        ram[154] = "0b10111111000111011110000101011101";
        ram[155] = "0b10111111011101000110100010001000";
        ram[156] = "0b00111111011011110101110101111001";
        ram[157] = "0b00111110111011011110111111001000";
        ram[158] = "0b10111110011101010001000001001101";
        ram[159] = "0b10111111010100101010111011010001";
        ram[160] = "0b10111111011111100010001000111110";
        ram[161] = "0b10111111001010011100001000111011";
        ram[162] = "0b10100101010100111100101010101100";
        ram[163] = "0b00111111001010011100001000111011";
        ram[164] = "0b00111111011111100010001000111110";
        ram[165] = "0b00111111010100101010111011010001";
        ram[166] = "0b00111110011101010001000001001101";
        ram[167] = "0b10111110111011011110111111001000";
        ram[168] = "0b10111111011011110101110101111001";
        ram[169] = "0b10111111011011110101110101111001";
        ram[170] = "0b10111110111011011110111111001000";
        ram[171] = "0b00111110011101010001000001001101";
        ram[172] = "0b00111111010100101010111011010001";
        ram[173] = "0b00111111011111100010001000111110";
        ram[174] = "0b00111111001010011100001000111011";
        ram[175] = "0b00100110000111101101011101000100";
        ram[176] = "0b10111111001010011100001000111011";
        ram[177] = "0b10111111011111100010001000111110";
        ram[178] = "0b10111111010100101010111011010001";
        ram[179] = "0b10111110011101010001000001001101";
        ram[180] = "0b00111110111011011110111111001000";
        ram[181] = "0b00111111011011110101110101111001";
        ram[182] = "0b00111111011010010111001001000111";
        ram[183] = "0b00111110100110000101000111101100";
        ram[184] = "0b10111111000001000111000001100101";
        ram[185] = "0b10111111011110111100111010000101";
        ram[186] = "0b10111111010010011000010010100001";
        ram[187] = "0b10111101011101110100111011101100";
        ram[188] = "0b00111111001101010000010100101001";
        ram[189] = "0b00111111011111111000100010111001";
        ram[190] = "0b00111111000111011110000101011101";
        ram[191] = "0b10111110001110001001011000010100";
        ram[192] = "0b10111111010110110001010001100110";
        ram[193] = "0b10111111011101000110100010001000";
        ram[194] = "0b10111110110100100010000101000010";
        ram[195] = "0b00111110110100100010000101000010";
        ram[196] = "0b00111111011101000110100010001000";
        ram[197] = "0b00111111010110110001010001100110";
        ram[198] = "0b00111110001110001001011000010100";
        ram[199] = "0b10111111000111011110000101011101";
        ram[200] = "0b10111111011111111000100010111001";
        ram[201] = "0b10111111001101010000010100101001";
        ram[202] = "0b00111101011101110100111011101100";
        ram[203] = "0b00111111010010011000010010100001";
        ram[204] = "0b00111111011110111100111010000101";
        ram[205] = "0b00111111000001000111000001100101";
        ram[206] = "0b10111110100110000101000111101100";
        ram[207] = "0b10111111011010010111001001000111";
        ram[208] = "0b00111111011000101010110110000010";
        ram[209] = "0b00111101111101101101110110101101";
        ram[210] = "0b10111111001111111001111001011010";
        ram[211] = "0b10111111011110001000111110000110";
        ram[212] = "0b10111110101101011000111000100010";
        ram[213] = "0b00111111000100010110110001100001";
        ram[214] = "0b00111111100000000000000000000000";
        ram[215] = "0b00111111000100010110110001100001";
        ram[216] = "0b10111110101101011000111000100010";
        ram[217] = "0b10111111011110001000111110000110";
        ram[218] = "0b10111111001111111001111001011010";
        ram[219] = "0b00111101111101101101110110101101";
        ram[220] = "0b00111111011000101010110110000010";
        ram[221] = "0b00111111011000101010110110000010";
        ram[222] = "0b00111101111101101101110110101101";
        ram[223] = "0b10111111001111111001111001011010";
        ram[224] = "0b10111111011110001000111110000110";
        ram[225] = "0b10111110101101011000111000100010";
        ram[226] = "0b00111111000100010110110001100001";
        ram[227] = "0b00111111100000000000000000000000";
        ram[228] = "0b00111111000100010110110001100001";
        ram[229] = "0b10111110101101011000111000100010";
        ram[230] = "0b10111111011110001000111110000110";
        ram[231] = "0b10111111001111111001111001011010";
        ram[232] = "0b00111101111101101101110110101101";
        ram[233] = "0b00111111011000101010110110000010";
        ram[234] = "0b00111111010110110001010001100110";
        ram[235] = "0b10111101011101110100111011101100";
        ram[236] = "0b10111111011010010111001001000111";
        ram[237] = "0b10111111010010011000010010100001";
        ram[238] = "0b00111110001110001001011000010100";
        ram[239] = "0b00111111011101000110100010001000";
        ram[240] = "0b00111111001101010000010100101001";
        ram[241] = "0b10111110100110000101000111101100";
        ram[242] = "0b10111111011110111100111010000101";
        ram[243] = "0b10111111000111011110000101011101";
        ram[244] = "0b00111110110100100010000101000010";
        ram[245] = "0b00111111011111111000100010111001";
        ram[246] = "0b00111111000001000111000001100101";
        ram[247] = "0b10111111000001000111000001100101";
        ram[248] = "0b10111111011111111000100010111001";
        ram[249] = "0b10111110110100100010000101000010";
        ram[250] = "0b00111111000111011110000101011101";
        ram[251] = "0b00111111011110111100111010000101";
        ram[252] = "0b00111110100110000101000111101100";
        ram[253] = "0b10111111001101010000010100101001";
        ram[254] = "0b10111111011101000110100010001000";
        ram[255] = "0b10111110001110001001011000010100";
        ram[256] = "0b00111111010010011000010010100001";
        ram[257] = "0b00111111011010010111001001000111";
        ram[258] = "0b00111101011101110100111011101100";
        ram[259] = "0b10111111010110110001010001100110";
        ram[260] = "0b00111111010100101010111011010001";
        ram[261] = "0b10111110011101010001000001001101";
        ram[262] = "0b10111111011111100010001000111110";
        ram[263] = "0b10111110111011011110111111001000";
        ram[264] = "0b00111111001010011100001000111011";
        ram[265] = "0b00111111011011110101110101111001";
        ram[266] = "0b10100110001001111100000101111111";
        ram[267] = "0b10111111011011110101110101111001";
        ram[268] = "0b10111111001010011100001000111011";
        ram[269] = "0b00111110111011011110111111001000";
        ram[270] = "0b00111111011111100010001000111110";
        ram[271] = "0b00111110011101010001000001001101";
        ram[272] = "0b10111111010100101010111011010001";
        ram[273] = "0b10111111010100101010111011010001";
        ram[274] = "0b00111110011101010001000001001101";
        ram[275] = "0b00111111011111100010001000111110";
        ram[276] = "0b00111110111011011110111111001000";
        ram[277] = "0b10111111001010011100001000111011";
        ram[278] = "0b10111111011011110101110101111001";
        ram[279] = "0b10100111010000100010111001001001";
        ram[280] = "0b00111111011011110101110101111001";
        ram[281] = "0b00111111001010011100001000111011";
        ram[282] = "0b10111110111011011110111111001000";
        ram[283] = "0b10111111011111100010001000111110";
        ram[284] = "0b10111110011101010001000001001101";
        ram[285] = "0b00111111010100101010111011010001";
        ram[286] = "0b00111111010010011000010010100001";
        ram[287] = "0b10111110110100100010000101000010";
        ram[288] = "0b10111111011110111100111010000101";
        ram[289] = "0b10111101011101110100111011101100";
        ram[290] = "0b00111111011101000110100010001000";
        ram[291] = "0b00111111000001000111000001100101";
        ram[292] = "0b10111111001101010000010100101001";
        ram[293] = "0b10111111010110110001010001100110";
        ram[294] = "0b00111110100110000101000111101100";
        ram[295] = "0b00111111011111111000100010111001";
        ram[296] = "0b00111110001110001001011000010100";
        ram[297] = "0b10111111011010010111001001000111";
        ram[298] = "0b10111111000111011110000101011101";
        ram[299] = "0b00111111000111011110000101011101";
        ram[300] = "0b00111111011010010111001001000111";
        ram[301] = "0b10111110001110001001011000010100";
        ram[302] = "0b10111111011111111000100010111001";
        ram[303] = "0b10111110100110000101000111101100";
        ram[304] = "0b00111111010110110001010001100110";
        ram[305] = "0b00111111001101010000010100101001";
        ram[306] = "0b10111111000001000111000001100101";
        ram[307] = "0b10111111011101000110100010001000";
        ram[308] = "0b00111101011101110100111011101100";
        ram[309] = "0b00111111011110111100111010000101";
        ram[310] = "0b00111110110100100010000101000010";
        ram[311] = "0b10111111010010011000010010100001";
        ram[312] = "0b00111111001111111001111001011010";
        ram[313] = "0b10111111000100010110110001100001";
        ram[314] = "0b10111111011000101010110110000010";
        ram[315] = "0b00111110101101011000111000100010";
        ram[316] = "0b00111111011110001000111110000110";
        ram[317] = "0b10111101111101101101110110101101";
        ram[318] = "0b10111111100000000000000000000000";
        ram[319] = "0b10111101111101101101110110101101";
        ram[320] = "0b00111111011110001000111110000110";
        ram[321] = "0b00111110101101011000111000100010";
        ram[322] = "0b10111111011000101010110110000010";
        ram[323] = "0b10111111000100010110110001100001";
        ram[324] = "0b00111111001111111001111001011010";
        ram[325] = "0b00111111001111111001111001011010";
        ram[326] = "0b10111111000100010110110001100001";
        ram[327] = "0b10111111011000101010110110000010";
        ram[328] = "0b00111110101101011000111000100010";
        ram[329] = "0b00111111011110001000111110000110";
        ram[330] = "0b10111101111101101101110110101101";
        ram[331] = "0b10111111100000000000000000000000";
        ram[332] = "0b10111101111101101101110110101101";
        ram[333] = "0b00111111011110001000111110000110";
        ram[334] = "0b00111110101101011000111000100010";
        ram[335] = "0b10111111011000101010110110000010";
        ram[336] = "0b10111111000100010110110001100001";
        ram[337] = "0b00111111001111111001111001011010";
        ram[338] = "0b00111111001101010000010100101001";
        ram[339] = "0b10111111001101010000010100101001";
        ram[340] = "0b10111111001101010000010100101001";
        ram[341] = "0b00111111001101010000010100101001";
        ram[342] = "0b00111111001101010000010100101001";
        ram[343] = "0b10111111001101010000010100101001";
        ram[344] = "0b10111111001101010000010100101001";
        ram[345] = "0b00111111001101010000010100101001";
        ram[346] = "0b00111111001101010000010100101001";
        ram[347] = "0b10111111001101010000010100101001";
        ram[348] = "0b10111111001101010000010100101001";
        ram[349] = "0b00111111001101010000010100101001";
        ram[350] = "0b00111111001101010000010100101001";
        ram[351] = "0b10111111001101010000010100101001";
        ram[352] = "0b10111111001101010000010100101001";
        ram[353] = "0b00111111001101010000010100101001";
        ram[354] = "0b00111111001101010000010100101001";
        ram[355] = "0b10111111001101010000010100101001";
        ram[356] = "0b10111111001101010000010100101001";
        ram[357] = "0b00111111001101010000010100101001";
        ram[358] = "0b00111111001101010000010100101001";
        ram[359] = "0b10111111001101010000010100101001";
        ram[360] = "0b10111111001101010000010100101001";
        ram[361] = "0b00111111001101010000010100101001";
        ram[362] = "0b00111111001101010000010100101001";
        ram[363] = "0b10111111001101010000010100101001";
        ram[364] = "0b00111111001010011100001000111011";
        ram[365] = "0b10111111010100101010111011010001";
        ram[366] = "0b10111110111011011110111111001000";
        ram[367] = "0b00111111011011110101110101111001";
        ram[368] = "0b00111110011101010001000001001101";
        ram[369] = "0b10111111011111100010001000111110";
        ram[370] = "0b00100110110000100011100101011011";
        ram[371] = "0b00111111011111100010001000111110";
        ram[372] = "0b10111110011101010001000001001101";
        ram[373] = "0b10111111011011110101110101111001";
        ram[374] = "0b00111110111011011110111111001000";
        ram[375] = "0b00111111010100101010111011010001";
        ram[376] = "0b10111111001010011100001000111011";
        ram[377] = "0b10111111001010011100001000111011";
        ram[378] = "0b00111111010100101010111011010001";
        ram[379] = "0b00111110111011011110111111001000";
        ram[380] = "0b10111111011011110101110101111001";
        ram[381] = "0b10111110011101010001000001001101";
        ram[382] = "0b00111111011111100010001000111110";
        ram[383] = "0b00100111111011100101001110101111";
        ram[384] = "0b10111111011111100010001000111110";
        ram[385] = "0b00111110011101010001000001001101";
        ram[386] = "0b00111111011011110101110101111001";
        ram[387] = "0b10111110111011011110111111001000";
        ram[388] = "0b10111111010100101010111011010001";
        ram[389] = "0b00111111001010011100001000111011";
        ram[390] = "0b00111111000111011110000101011101";
        ram[391] = "0b10111111011010010111001001000111";
        ram[392] = "0b10111110001110001001011000010100";
        ram[393] = "0b00111111011111111000100010111001";
        ram[394] = "0b10111110100110000101000111101100";
        ram[395] = "0b10111111010110110001010001100110";
        ram[396] = "0b00111111001101010000010100101001";
        ram[397] = "0b00111111000001000111000001100101";
        ram[398] = "0b10111111011101000110100010001000";
        ram[399] = "0b10111101011101110100111011101100";
        ram[400] = "0b00111111011110111100111010000101";
        ram[401] = "0b10111110110100100010000101000010";
        ram[402] = "0b10111111010010011000010010100001";
        ram[403] = "0b00111111010010011000010010100001";
        ram[404] = "0b00111110110100100010000101000010";
        ram[405] = "0b10111111011110111100111010000101";
        ram[406] = "0b00111101011101110100111011101100";
        ram[407] = "0b00111111011101000110100010001000";
        ram[408] = "0b10111111000001000111000001100101";
        ram[409] = "0b10111111001101010000010100101001";
        ram[410] = "0b00111111010110110001010001100110";
        ram[411] = "0b00111110100110000101000111101100";
        ram[412] = "0b10111111011111111000100010111001";
        ram[413] = "0b00111110001110001001011000010100";
        ram[414] = "0b00111111011010010111001001000111";
        ram[415] = "0b10111111000111011110000101011101";
        ram[416] = "0b00111111000100010110110001100001";
        ram[417] = "0b10111111011110001000111110000110";
        ram[418] = "0b00111101111101101101110110101101";
        ram[419] = "0b00111111011000101010110110000010";
        ram[420] = "0b10111111001111111001111001011010";
        ram[421] = "0b10111110101101011000111000100010";
        ram[422] = "0b00111111100000000000000000000000";
        ram[423] = "0b10111110101101011000111000100010";
        ram[424] = "0b10111111001111111001111001011010";
        ram[425] = "0b00111111011000101010110110000010";
        ram[426] = "0b00111101111101101101110110101101";
        ram[427] = "0b10111111011110001000111110000110";
        ram[428] = "0b00111111000100010110110001100001";
        ram[429] = "0b00111111000100010110110001100001";
        ram[430] = "0b10111111011110001000111110000110";
        ram[431] = "0b00111101111101101101110110101101";
        ram[432] = "0b00111111011000101010110110000010";
        ram[433] = "0b10111111001111111001111001011010";
        ram[434] = "0b10111110101101011000111000100010";
        ram[435] = "0b00111111100000000000000000000000";
        ram[436] = "0b10111110101101011000111000100010";
        ram[437] = "0b10111111001111111001111001011010";
        ram[438] = "0b00111111011000101010110110000010";
        ram[439] = "0b00111101111101101101110110101101";
        ram[440] = "0b10111111011110001000111110000110";
        ram[441] = "0b00111111000100010110110001100001";
        ram[442] = "0b00111111000001000111000001100101";
        ram[443] = "0b10111111011111111000100010111001";
        ram[444] = "0b00111110110100100010000101000010";
        ram[445] = "0b00111111000111011110000101011101";
        ram[446] = "0b10111111011110111100111010000101";
        ram[447] = "0b00111110100110000101000111101100";
        ram[448] = "0b00111111001101010000010100101001";
        ram[449] = "0b10111111011101000110100010001000";
        ram[450] = "0b00111110001110001001011000010100";
        ram[451] = "0b00111111010010011000010010100001";
        ram[452] = "0b10111111011010010111001001000111";
        ram[453] = "0b00111101011101110100111011101100";
        ram[454] = "0b00111111010110110001010001100110";
        ram[455] = "0b10111111010110110001010001100110";
        ram[456] = "0b10111101011101110100111011101100";
        ram[457] = "0b00111111011010010111001001000111";
        ram[458] = "0b10111111010010011000010010100001";
        ram[459] = "0b10111110001110001001011000010100";
        ram[460] = "0b00111111011101000110100010001000";
        ram[461] = "0b10111111001101010000010100101001";
        ram[462] = "0b10111110100110000101000111101100";
        ram[463] = "0b00111111011110111100111010000101";
        ram[464] = "0b10111111000111011110000101011101";
        ram[465] = "0b10111110110100100010000101000010";
        ram[466] = "0b00111111011111111000100010111001";
        ram[467] = "0b10111111000001000111000001100101";
        ram[468] = "0b00111110111011011110111111001000";
        ram[469] = "0b10111111011111100010001000111110";
        ram[470] = "0b00111111001010011100001000111011";
        ram[471] = "0b00111110011101010001000001001101";
        ram[472] = "0b10111111011011110101110101111001";
        ram[473] = "0b00111111010100101010111011010001";
        ram[474] = "0b00100110000111101101011101000100";
        ram[475] = "0b10111111010100101010111011010001";
        ram[476] = "0b00111111011011110101110101111001";
        ram[477] = "0b10111110011101010001000001001101";
        ram[478] = "0b10111111001010011100001000111011";
        ram[479] = "0b00111111011111100010001000111110";
        ram[480] = "0b10111110111011011110111111001000";
        ram[481] = "0b10111110111011011110111111001000";
        ram[482] = "0b00111111011111100010001000111110";
        ram[483] = "0b10111111001010011100001000111011";
        ram[484] = "0b10111110011101010001000001001101";
        ram[485] = "0b00111111011011110101110101111001";
        ram[486] = "0b10111111010100101010111011010001";
        ram[487] = "0b10100111011101110010000011110100";
        ram[488] = "0b00111111010100101010111011010001";
        ram[489] = "0b10111111011011110101110101111001";
        ram[490] = "0b00111110011101010001000001001101";
        ram[491] = "0b00111111001010011100001000111011";
        ram[492] = "0b10111111011111100010001000111110";
        ram[493] = "0b00111110111011011110111111001000";
        ram[494] = "0b00111110110100100010000101000010";
        ram[495] = "0b10111111011101000110100010001000";
        ram[496] = "0b00111111010110110001010001100110";
        ram[497] = "0b10111110001110001001011000010100";
        ram[498] = "0b10111111000111011110000101011101";
        ram[499] = "0b00111111011111111000100010111001";
        ram[500] = "0b10111111001101010000010100101001";
        ram[501] = "0b10111101011101110100111011101100";
        ram[502] = "0b00111111010010011000010010100001";
        ram[503] = "0b10111111011110111100111010000101";
        ram[504] = "0b00111111000001000111000001100101";
        ram[505] = "0b00111110100110000101000111101100";
        ram[506] = "0b10111111011010010111001001000111";
        ram[507] = "0b00111111011010010111001001000111";
        ram[508] = "0b10111110100110000101000111101100";
        ram[509] = "0b10111111000001000111000001100101";
        ram[510] = "0b00111111011110111100111010000101";
        ram[511] = "0b10111111010010011000010010100001";
        ram[512] = "0b00111101011101110100111011101100";
        ram[513] = "0b00111111001101010000010100101001";
        ram[514] = "0b10111111011111111000100010111001";
        ram[515] = "0b00111111000111011110000101011101";
        ram[516] = "0b00111110001110001001011000010100";
        ram[517] = "0b10111111010110110001010001100110";
        ram[518] = "0b00111111011101000110100010001000";
        ram[519] = "0b10111110110100100010000101000010";
        ram[520] = "0b00111110101101011000111000100010";
        ram[521] = "0b10111111011000101010110110000010";
        ram[522] = "0b00111111011110001000111110000110";
        ram[523] = "0b10111111000100010110110001100001";
        ram[524] = "0b10111101111101101101110110101101";
        ram[525] = "0b00111111001111111001111001011010";
        ram[526] = "0b10111111100000000000000000000000";
        ram[527] = "0b00111111001111111001111001011010";
        ram[528] = "0b10111101111101101101110110101101";
        ram[529] = "0b10111111000100010110110001100001";
        ram[530] = "0b00111111011110001000111110000110";
        ram[531] = "0b10111111011000101010110110000010";
        ram[532] = "0b00111110101101011000111000100010";
        ram[533] = "0b00111110101101011000111000100010";
        ram[534] = "0b10111111011000101010110110000010";
        ram[535] = "0b00111111011110001000111110000110";
        ram[536] = "0b10111111000100010110110001100001";
        ram[537] = "0b10111101111101101101110110101101";
        ram[538] = "0b00111111001111111001111001011010";
        ram[539] = "0b10111111100000000000000000000000";
        ram[540] = "0b00111111001111111001111001011010";
        ram[541] = "0b10111101111101101101110110101101";
        ram[542] = "0b10111111000100010110110001100001";
        ram[543] = "0b00111111011110001000111110000110";
        ram[544] = "0b10111111011000101010110110000010";
        ram[545] = "0b00111110101101011000111000100010";
        ram[546] = "0b00111110100110000101000111101100";
        ram[547] = "0b10111111010010011000010010100001";
        ram[548] = "0b00111111011111111000100010111001";
        ram[549] = "0b10111111010110110001010001100110";
        ram[550] = "0b00111110110100100010000101000010";
        ram[551] = "0b00111110001110001001011000010100";
        ram[552] = "0b10111111001101010000010100101001";
        ram[553] = "0b00111111011110111100111010000101";
        ram[554] = "0b10111111011010010111001001000111";
        ram[555] = "0b00111111000001000111000001100101";
        ram[556] = "0b00111101011101110100111011101100";
        ram[557] = "0b10111111000111011110000101011101";
        ram[558] = "0b00111111011101000110100010001000";
        ram[559] = "0b10111111011101000110100010001000";
        ram[560] = "0b00111111000111011110000101011101";
        ram[561] = "0b10111101011101110100111011101100";
        ram[562] = "0b10111111000001000111000001100101";
        ram[563] = "0b00111111011010010111001001000111";
        ram[564] = "0b10111111011110111100111010000101";
        ram[565] = "0b00111111001101010000010100101001";
        ram[566] = "0b10111110001110001001011000010100";
        ram[567] = "0b10111110110100100010000101000010";
        ram[568] = "0b00111111010110110001010001100110";
        ram[569] = "0b10111111011111111000100010111001";
        ram[570] = "0b00111111010010011000010010100001";
        ram[571] = "0b10111110100110000101000111101100";
        ram[572] = "0b00111110011101010001000001001101";
        ram[573] = "0b10111111001010011100001000111011";
        ram[574] = "0b00111111011011110101110101111001";
        ram[575] = "0b10111111011111100010001000111110";
        ram[576] = "0b00111111010100101010111011010001";
        ram[577] = "0b10111110111011011110111111001000";
        ram[578] = "0b00100110100111101110111000100100";
        ram[579] = "0b00111110111011011110111111001000";
        ram[580] = "0b10111111010100101010111011010001";
        ram[581] = "0b00111111011111100010001000111110";
        ram[582] = "0b10111111011011110101110101111001";
        ram[583] = "0b00111111001010011100001000111011";
        ram[584] = "0b10111110011101010001000001001101";
        ram[585] = "0b10111110011101010001000001001101";
        ram[586] = "0b00111111001010011100001000111011";
        ram[587] = "0b10111111011011110101110101111001";
        ram[588] = "0b00111111011111100010001000111110";
        ram[589] = "0b10111111010100101010111011010001";
        ram[590] = "0b00111110111011011110111111001000";
        ram[591] = "0b00101000000001000110011010000010";
        ram[592] = "0b10111110111011011110111111001000";
        ram[593] = "0b00111111010100101010111011010001";
        ram[594] = "0b10111111011111100010001000111110";
        ram[595] = "0b00111111011011110101110101111001";
        ram[596] = "0b10111111001010011100001000111011";
        ram[597] = "0b00111110011101010001000001001101";
        ram[598] = "0b00111110001110001001011000010100";
        ram[599] = "0b10111111000001000111000001100101";
        ram[600] = "0b00111111010010011000010010100001";
        ram[601] = "0b10111111011101000110100010001000";
        ram[602] = "0b00111111011111111000100010111001";
        ram[603] = "0b10111111011010010111001001000111";
        ram[604] = "0b00111111001101010000010100101001";
        ram[605] = "0b10111110110100100010000101000010";
        ram[606] = "0b00111101011101110100111011101100";
        ram[607] = "0b00111110100110000101000111101100";
        ram[608] = "0b10111111000111011110000101011101";
        ram[609] = "0b00111111010110110001010001100110";
        ram[610] = "0b10111111011110111100111010000101";
        ram[611] = "0b00111111011110111100111010000101";
        ram[612] = "0b10111111010110110001010001100110";
        ram[613] = "0b00111111000111011110000101011101";
        ram[614] = "0b10111110100110000101000111101100";
        ram[615] = "0b10111101011101110100111011101100";
        ram[616] = "0b00111110110100100010000101000010";
        ram[617] = "0b10111111001101010000010100101001";
        ram[618] = "0b00111111011010010111001001000111";
        ram[619] = "0b10111111011111111000100010111001";
        ram[620] = "0b00111111011101000110100010001000";
        ram[621] = "0b10111111010010011000010010100001";
        ram[622] = "0b00111111000001000111000001100101";
        ram[623] = "0b10111110001110001001011000010100";
        ram[624] = "0b00111101111101101101110110101101";
        ram[625] = "0b10111110101101011000111000100010";
        ram[626] = "0b00111111000100010110110001100001";
        ram[627] = "0b10111111001111111001111001011010";
        ram[628] = "0b00111111011000101010110110000010";
        ram[629] = "0b10111111011110001000111110000110";
        ram[630] = "0b00111111100000000000000000000000";
        ram[631] = "0b10111111011110001000111110000110";
        ram[632] = "0b00111111011000101010110110000010";
        ram[633] = "0b10111111001111111001111001011010";
        ram[634] = "0b00111111000100010110110001100001";
        ram[635] = "0b10111110101101011000111000100010";
        ram[636] = "0b00111101111101101101110110101101";
        ram[637] = "0b00111101111101101101110110101101";
        ram[638] = "0b10111110101101011000111000100010";
        ram[639] = "0b00111111000100010110110001100001";
        ram[640] = "0b10111111001111111001111001011010";
        ram[641] = "0b00111111011000101010110110000010";
        ram[642] = "0b10111111011110001000111110000110";
        ram[643] = "0b00111111100000000000000000000000";
        ram[644] = "0b10111111011110001000111110000110";
        ram[645] = "0b00111111011000101010110110000010";
        ram[646] = "0b10111111001111111001111001011010";
        ram[647] = "0b00111111000100010110110001100001";
        ram[648] = "0b10111110101101011000111000100010";
        ram[649] = "0b00111101111101101101110110101101";
        ram[650] = "0b00111101011101110100111011101100";
        ram[651] = "0b10111110001110001001011000010100";
        ram[652] = "0b00111110100110000101000111101100";
        ram[653] = "0b10111110110100100010000101000010";
        ram[654] = "0b00111111000001000111000001100101";
        ram[655] = "0b10111111000111011110000101011101";
        ram[656] = "0b00111111001101010000010100101001";
        ram[657] = "0b10111111010010011000010010100001";
        ram[658] = "0b00111111010110110001010001100110";
        ram[659] = "0b10111111011010010111001001000111";
        ram[660] = "0b00111111011101000110100010001000";
        ram[661] = "0b10111111011110111100111010000101";
        ram[662] = "0b00111111011111111000100010111001";
        ram[663] = "0b10111111011111111000100010111001";
        ram[664] = "0b00111111011110111100111010000101";
        ram[665] = "0b10111111011101000110100010001000";
        ram[666] = "0b00111111011010010111001001000111";
        ram[667] = "0b10111111010110110001010001100110";
        ram[668] = "0b00111111010010011000010010100001";
        ram[669] = "0b10111111001101010000010100101001";
        ram[670] = "0b00111111000111011110000101011101";
        ram[671] = "0b10111111000001000111000001100101";
        ram[672] = "0b00111110110100100010000101000010";
        ram[673] = "0b10111110100110000101000111101100";
        ram[674] = "0b00111110001110001001011000010100";
        ram[675] = "0b10111101011101110100111011101100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(voicerec_processChunk_dctMatrix) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 676;
static const unsigned AddressWidth = 10;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


voicerec_processChunk_dctMatrix_ram* meminst;


SC_CTOR(voicerec_processChunk_dctMatrix) {
meminst = new voicerec_processChunk_dctMatrix_ram("voicerec_processChunk_dctMatrix_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~voicerec_processChunk_dctMatrix() {
    delete meminst;
}


};//endmodule
#endif
