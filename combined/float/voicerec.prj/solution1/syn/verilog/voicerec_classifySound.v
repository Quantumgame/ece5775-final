// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.2
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module voicerec_classifySound (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        result_address0,
        result_ce0,
        result_q0,
        ap_return
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 9'b1;
parameter    ap_ST_st2_fsm_1 = 9'b10;
parameter    ap_ST_st3_fsm_2 = 9'b100;
parameter    ap_ST_st4_fsm_3 = 9'b1000;
parameter    ap_ST_st5_fsm_4 = 9'b10000;
parameter    ap_ST_st6_fsm_5 = 9'b100000;
parameter    ap_ST_st7_fsm_6 = 9'b1000000;
parameter    ap_ST_st8_fsm_7 = 9'b10000000;
parameter    ap_ST_st9_fsm_8 = 9'b100000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv6_3F = 6'b111111;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv4_E = 4'b1110;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_1E = 32'b11110;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv23_0 = 23'b00000000000000000000000;
parameter    ap_const_lv5_2 = 5'b10;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] result_address0;
output   result_ce0;
input  [31:0] result_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg result_ce0;
reg[31:0] ap_return;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm = 9'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_27;
reg   [1:0] output_r_address0;
reg    output_r_ce0;
reg    output_r_we0;
wire   [31:0] output_r_d0;
wire   [31:0] output_r_q0;
wire   [5:0] i_1_fu_187_p2;
reg   [5:0] i_1_reg_394;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_56;
wire   [10:0] tmp_8_fu_217_p2;
reg   [10:0] tmp_8_reg_399;
wire   [0:0] exitcond1_fu_181_p2;
wire  signed [11:0] result_addr1_cast_fu_223_p1;
reg  signed [11:0] result_addr1_cast_reg_404;
wire   [3:0] j_1_fu_237_p2;
reg   [3:0] j_1_reg_412;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_73;
wire   [0:0] exitcond_fu_231_p2;
wire   [10:0] tmp_1_fu_261_p2;
reg   [10:0] tmp_1_reg_422;
wire   [31:0] guess_cast1_fu_274_p1;
reg   [31:0] guess_cast1_reg_427;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_bdd_89;
wire   [2:0] j_2_fu_284_p2;
reg   [2:0] j_2_reg_435;
wire   [0:0] exitcond_i_fu_278_p2;
reg   [31:0] max_reg_445;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_bdd_104;
wire   [0:0] tmp_9_fu_176_p2;
reg   [0:0] tmp_9_reg_452;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_bdd_113;
wire   [31:0] guess_1_fu_377_p3;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_bdd_122;
wire   [31:0] max_1_fu_384_p3;
reg   [9:0] flatInput_address0;
reg    flatInput_ce0;
reg    flatInput_we0;
wire   [31:0] flatInput_d0;
wire   [31:0] flatInput_q0;
wire    grp_voicerec_feedForward_fu_161_ap_start;
wire    grp_voicerec_feedForward_fu_161_ap_done;
wire    grp_voicerec_feedForward_fu_161_ap_idle;
wire    grp_voicerec_feedForward_fu_161_ap_ready;
wire   [9:0] grp_voicerec_feedForward_fu_161_pattern_address0;
wire    grp_voicerec_feedForward_fu_161_pattern_ce0;
wire   [31:0] grp_voicerec_feedForward_fu_161_pattern_q0;
wire   [1:0] grp_voicerec_feedForward_fu_161_output_r_address0;
wire    grp_voicerec_feedForward_fu_161_output_r_ce0;
wire    grp_voicerec_feedForward_fu_161_output_r_we0;
wire   [31:0] grp_voicerec_feedForward_fu_161_output_r_d0;
reg   [5:0] i_reg_104;
reg   [3:0] j_reg_115;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_bdd_164;
reg   [2:0] guess_reg_126;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_bdd_175;
reg   [31:0] guess_i_reg_137;
reg   [31:0] second_max_reg_149;
reg    grp_voicerec_feedForward_fu_161_ap_start_ap_start_reg = 1'b0;
wire   [63:0] tmp_11_fu_256_p1;
wire   [63:0] tmp_2_fu_269_p1;
wire   [63:0] tmp_i_fu_290_p1;
wire   [31:0] tmp_9_fu_176_p0;
wire   [31:0] tmp_9_fu_176_p1;
wire   [9:0] p_shl_fu_193_p3;
wire   [6:0] p_shl2_fu_205_p3;
wire   [10:0] p_shl_cast_fu_201_p1;
wire   [10:0] p_shl2_cast_fu_213_p1;
wire   [11:0] tmp_9_trn_cast_fu_243_p1;
wire  signed [11:0] result_addr2_fu_247_p2;
wire  signed [31:0] result_addr2_cast_fu_252_p1;
wire   [10:0] j_cast3_fu_227_p1;
wire  signed [31:0] tmp_1_cast_fu_266_p1;
wire   [31:0] max_to_int_fu_295_p1;
wire   [31:0] second_max_to_int_fu_312_p1;
wire   [7:0] tmp_fu_298_p4;
wire   [22:0] tmp_3_fu_308_p1;
wire   [0:0] notrhs_fu_336_p2;
wire   [0:0] notlhs_fu_330_p2;
wire   [7:0] tmp_4_fu_316_p4;
wire   [22:0] tmp_5_fu_326_p1;
wire   [0:0] notrhs7_fu_354_p2;
wire   [0:0] notlhs6_fu_348_p2;
wire   [0:0] tmp_6_fu_342_p2;
wire   [0:0] tmp_7_fu_360_p2;
wire   [0:0] tmp_s_fu_366_p2;
wire   [0:0] tmp_10_fu_372_p2;
wire   [4:0] tmp_9_fu_176_opcode;
reg   [31:0] ap_return_preg = 32'b00000000000000000000000000000000;
reg   [8:0] ap_NS_fsm;


voicerec_classifySound_output_r #(
    .DataWidth( 32 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
output_r_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( output_r_address0 ),
    .ce0( output_r_ce0 ),
    .we0( output_r_we0 ),
    .d0( output_r_d0 ),
    .q0( output_r_q0 )
);

voicerec_classifySound_flatInput #(
    .DataWidth( 32 ),
    .AddressRange( 882 ),
    .AddressWidth( 10 ))
flatInput_U(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .address0( flatInput_address0 ),
    .ce0( flatInput_ce0 ),
    .we0( flatInput_we0 ),
    .d0( flatInput_d0 ),
    .q0( flatInput_q0 )
);

voicerec_feedForward grp_voicerec_feedForward_fu_161(
    .ap_clk( ap_clk ),
    .ap_rst( ap_rst ),
    .ap_start( grp_voicerec_feedForward_fu_161_ap_start ),
    .ap_done( grp_voicerec_feedForward_fu_161_ap_done ),
    .ap_idle( grp_voicerec_feedForward_fu_161_ap_idle ),
    .ap_ready( grp_voicerec_feedForward_fu_161_ap_ready ),
    .pattern_address0( grp_voicerec_feedForward_fu_161_pattern_address0 ),
    .pattern_ce0( grp_voicerec_feedForward_fu_161_pattern_ce0 ),
    .pattern_q0( grp_voicerec_feedForward_fu_161_pattern_q0 ),
    .output_r_address0( grp_voicerec_feedForward_fu_161_output_r_address0 ),
    .output_r_ce0( grp_voicerec_feedForward_fu_161_output_r_ce0 ),
    .output_r_we0( grp_voicerec_feedForward_fu_161_output_r_we0 ),
    .output_r_d0( grp_voicerec_feedForward_fu_161_output_r_d0 )
);

voicerec_fcmp_32ns_32ns_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
voicerec_fcmp_32ns_32ns_1_1_U46(
    .din0( tmp_9_fu_176_p0 ),
    .din1( tmp_9_fu_176_p1 ),
    .opcode( tmp_9_fu_176_opcode ),
    .dout( tmp_9_fu_176_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_return_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_preg
    if (ap_rst == 1'b1) begin
        ap_return_preg <= ap_const_lv32_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) & ~(ap_const_lv1_0 == exitcond_i_fu_278_p2))) begin
            ap_return_preg <= guess_i_reg_137;
        end
    end
end

/// grp_voicerec_feedForward_fu_161_ap_start_ap_start_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_grp_voicerec_feedForward_fu_161_ap_start_ap_start_reg
    if (ap_rst == 1'b1) begin
        grp_voicerec_feedForward_fu_161_ap_start_ap_start_reg <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond1_fu_181_p2 == ap_const_lv1_0))) begin
            grp_voicerec_feedForward_fu_161_ap_start_ap_start_reg <= ap_const_logic_1;
        end else if ((ap_const_logic_1 == grp_voicerec_feedForward_fu_161_ap_ready)) begin
            grp_voicerec_feedForward_fu_161_ap_start_ap_start_reg <= ap_const_logic_0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        guess_reg_126 <= j_2_reg_435;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(ap_const_logic_0 == grp_voicerec_feedForward_fu_161_ap_done))) begin
        guess_reg_126 <= ap_const_lv3_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(ap_const_lv1_0 == exitcond_fu_231_p2))) begin
        i_reg_104 <= i_1_reg_394;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        i_reg_104 <= ap_const_lv6_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_181_p2 == ap_const_lv1_0))) begin
        j_reg_115 <= ap_const_lv4_0;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        j_reg_115 <= j_1_reg_412;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        second_max_reg_149 <= max_1_fu_384_p3;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4) & ~(ap_const_logic_0 == grp_voicerec_feedForward_fu_161_ap_done))) begin
        second_max_reg_149 <= ap_const_lv32_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        guess_cast1_reg_427[2 : 0] <= guess_cast1_fu_274_p1[2 : 0];
        j_2_reg_435 <= j_2_fu_284_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        guess_i_reg_137 <= guess_1_fu_377_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_1_reg_394 <= i_1_fu_187_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        j_1_reg_412 <= j_1_fu_237_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        max_reg_445 <= output_r_q0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond1_fu_181_p2 == ap_const_lv1_0))) begin
        result_addr1_cast_reg_404[11 : 1] <= result_addr1_cast_fu_223_p1[11 : 1];
        tmp_8_reg_399[10 : 1] <= tmp_8_fu_217_p2[10 : 1];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == exitcond_fu_231_p2))) begin
        tmp_1_reg_422 <= tmp_1_fu_261_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        tmp_9_reg_452 <= tmp_9_fu_176_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st6_fsm_5 or exitcond_i_fu_278_p2)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) & ~(ap_const_lv1_0 == exitcond_i_fu_278_p2)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st6_fsm_5 or exitcond_i_fu_278_p2)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) & ~(ap_const_lv1_0 == exitcond_i_fu_278_p2))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_return assign process. ///
always @ (ap_sig_cseq_ST_st6_fsm_5 or exitcond_i_fu_278_p2 or guess_i_reg_137 or ap_return_preg)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5) & ~(ap_const_lv1_0 == exitcond_i_fu_278_p2))) begin
        ap_return = guess_i_reg_137;
    end else begin
        ap_return = ap_return_preg;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_27)
begin
    if (ap_sig_bdd_27) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_56)
begin
    if (ap_sig_bdd_56) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_73)
begin
    if (ap_sig_bdd_73) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st4_fsm_3 assign process. ///
always @ (ap_sig_bdd_164)
begin
    if (ap_sig_bdd_164) begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st5_fsm_4 assign process. ///
always @ (ap_sig_bdd_175)
begin
    if (ap_sig_bdd_175) begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st6_fsm_5 assign process. ///
always @ (ap_sig_bdd_89)
begin
    if (ap_sig_bdd_89) begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st7_fsm_6 assign process. ///
always @ (ap_sig_bdd_104)
begin
    if (ap_sig_bdd_104) begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st8_fsm_7 assign process. ///
always @ (ap_sig_bdd_113)
begin
    if (ap_sig_bdd_113) begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st9_fsm_8 assign process. ///
always @ (ap_sig_bdd_122)
begin
    if (ap_sig_bdd_122) begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    end
end

/// flatInput_address0 assign process. ///
always @ (grp_voicerec_feedForward_fu_161_pattern_address0 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st5_fsm_4 or tmp_2_fu_269_p1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        flatInput_address0 = tmp_2_fu_269_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        flatInput_address0 = grp_voicerec_feedForward_fu_161_pattern_address0;
    end else begin
        flatInput_address0 = 'bx;
    end
end

/// flatInput_ce0 assign process. ///
always @ (grp_voicerec_feedForward_fu_161_pattern_ce0 or ap_sig_cseq_ST_st4_fsm_3 or ap_sig_cseq_ST_st5_fsm_4)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        flatInput_ce0 = ap_const_logic_1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        flatInput_ce0 = grp_voicerec_feedForward_fu_161_pattern_ce0;
    end else begin
        flatInput_ce0 = ap_const_logic_0;
    end
end

/// flatInput_we0 assign process. ///
always @ (ap_sig_cseq_ST_st4_fsm_3)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        flatInput_we0 = ap_const_logic_1;
    end else begin
        flatInput_we0 = ap_const_logic_0;
    end
end

/// output_r_address0 assign process. ///
always @ (ap_sig_cseq_ST_st6_fsm_5 or grp_voicerec_feedForward_fu_161_output_r_address0 or ap_sig_cseq_ST_st5_fsm_4 or tmp_i_fu_290_p1)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        output_r_address0 = tmp_i_fu_290_p1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        output_r_address0 = grp_voicerec_feedForward_fu_161_output_r_address0;
    end else begin
        output_r_address0 = 'bx;
    end
end

/// output_r_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st6_fsm_5 or grp_voicerec_feedForward_fu_161_output_r_ce0 or ap_sig_cseq_ST_st5_fsm_4)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        output_r_ce0 = ap_const_logic_1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        output_r_ce0 = grp_voicerec_feedForward_fu_161_output_r_ce0;
    end else begin
        output_r_ce0 = ap_const_logic_0;
    end
end

/// output_r_we0 assign process. ///
always @ (grp_voicerec_feedForward_fu_161_output_r_we0 or ap_sig_cseq_ST_st5_fsm_4)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        output_r_we0 = grp_voicerec_feedForward_fu_161_output_r_we0;
    end else begin
        output_r_we0 = ap_const_logic_0;
    end
end

/// result_ce0 assign process. ///
always @ (ap_sig_cseq_ST_st3_fsm_2)
begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        result_ce0 = ap_const_logic_1;
    end else begin
        result_ce0 = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or exitcond1_fu_181_p2 or exitcond_fu_231_p2 or exitcond_i_fu_278_p2 or grp_voicerec_feedForward_fu_161_ap_done)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if ((exitcond1_fu_181_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st3_fsm_2 : 
        begin
            if ((ap_const_lv1_0 == exitcond_fu_231_p2)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st4_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st5_fsm_4 : 
        begin
            if (~(ap_const_logic_0 == grp_voicerec_feedForward_fu_161_ap_done)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st6_fsm_5 : 
        begin
            if (~(ap_const_lv1_0 == exitcond_i_fu_278_p2)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        ap_ST_st7_fsm_6 : 
        begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : 
        begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : 
        begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_104 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_104 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_6]);
end

/// ap_sig_bdd_113 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_113 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_7]);
end

/// ap_sig_bdd_122 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_122 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_8]);
end

/// ap_sig_bdd_164 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_164 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end

/// ap_sig_bdd_175 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_175 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_4]);
end

/// ap_sig_bdd_27 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_27 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_56 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_56 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_73 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_73 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

/// ap_sig_bdd_89 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_89 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_5]);
end
assign exitcond1_fu_181_p2 = (i_reg_104 == ap_const_lv6_3F? 1'b1: 1'b0);
assign exitcond_fu_231_p2 = (j_reg_115 == ap_const_lv4_E? 1'b1: 1'b0);
assign exitcond_i_fu_278_p2 = (guess_reg_126 == ap_const_lv3_4? 1'b1: 1'b0);
assign flatInput_d0 = result_q0;
assign grp_voicerec_feedForward_fu_161_ap_start = grp_voicerec_feedForward_fu_161_ap_start_ap_start_reg;
assign grp_voicerec_feedForward_fu_161_pattern_q0 = flatInput_q0;
assign guess_1_fu_377_p3 = ((tmp_10_fu_372_p2[0:0]===1'b1)? guess_cast1_reg_427: guess_i_reg_137);
assign guess_cast1_fu_274_p1 = guess_reg_126;
assign i_1_fu_187_p2 = (i_reg_104 + ap_const_lv6_1);
assign j_1_fu_237_p2 = (j_reg_115 + ap_const_lv4_1);
assign j_2_fu_284_p2 = (guess_reg_126 + ap_const_lv3_1);
assign j_cast3_fu_227_p1 = j_reg_115;
assign max_1_fu_384_p3 = ((tmp_10_fu_372_p2[0:0]===1'b1)? max_reg_445: second_max_reg_149);
assign max_to_int_fu_295_p1 = max_reg_445;
assign notlhs6_fu_348_p2 = (tmp_4_fu_316_p4 != ap_const_lv8_FF? 1'b1: 1'b0);
assign notlhs_fu_330_p2 = (tmp_fu_298_p4 != ap_const_lv8_FF? 1'b1: 1'b0);
assign notrhs7_fu_354_p2 = (tmp_5_fu_326_p1 == ap_const_lv23_0? 1'b1: 1'b0);
assign notrhs_fu_336_p2 = (tmp_3_fu_308_p1 == ap_const_lv23_0? 1'b1: 1'b0);
assign output_r_d0 = grp_voicerec_feedForward_fu_161_output_r_d0;
assign p_shl2_cast_fu_213_p1 = p_shl2_fu_205_p3;
assign p_shl2_fu_205_p3 = {{i_reg_104}, {ap_const_lv1_0}};
assign p_shl_cast_fu_201_p1 = p_shl_fu_193_p3;
assign p_shl_fu_193_p3 = {{i_reg_104}, {ap_const_lv4_0}};
assign result_addr1_cast_fu_223_p1 = $signed(tmp_8_fu_217_p2);
assign result_addr2_cast_fu_252_p1 = result_addr2_fu_247_p2;
assign result_addr2_fu_247_p2 = ($signed(tmp_9_trn_cast_fu_243_p1) + $signed(result_addr1_cast_reg_404));
assign result_address0 = tmp_11_fu_256_p1;
assign second_max_to_int_fu_312_p1 = second_max_reg_149;
assign tmp_10_fu_372_p2 = (tmp_s_fu_366_p2 & tmp_9_reg_452);
assign tmp_11_fu_256_p1 = $unsigned(result_addr2_cast_fu_252_p1);
assign tmp_1_cast_fu_266_p1 = $signed(tmp_1_reg_422);
assign tmp_1_fu_261_p2 = (tmp_8_reg_399 + j_cast3_fu_227_p1);
assign tmp_2_fu_269_p1 = $unsigned(tmp_1_cast_fu_266_p1);
assign tmp_3_fu_308_p1 = max_to_int_fu_295_p1[22:0];
assign tmp_4_fu_316_p4 = {{second_max_to_int_fu_312_p1[ap_const_lv32_1E : ap_const_lv32_17]}};
assign tmp_5_fu_326_p1 = second_max_to_int_fu_312_p1[22:0];
assign tmp_6_fu_342_p2 = (notrhs_fu_336_p2 | notlhs_fu_330_p2);
assign tmp_7_fu_360_p2 = (notrhs7_fu_354_p2 | notlhs6_fu_348_p2);
assign tmp_8_fu_217_p2 = (p_shl_cast_fu_201_p1 - p_shl2_cast_fu_213_p1);
assign tmp_9_fu_176_opcode = ap_const_lv5_2;
assign tmp_9_fu_176_p0 = max_reg_445;
assign tmp_9_fu_176_p1 = second_max_reg_149;
assign tmp_9_trn_cast_fu_243_p1 = j_reg_115;
assign tmp_fu_298_p4 = {{max_to_int_fu_295_p1[ap_const_lv32_1E : ap_const_lv32_17]}};
assign tmp_i_fu_290_p1 = guess_reg_126;
assign tmp_s_fu_366_p2 = (tmp_6_fu_342_p2 & tmp_7_fu_360_p2);
always @ (posedge ap_clk)
begin
    tmp_8_reg_399[0] <= 1'b0;
    result_addr1_cast_reg_404[0] <= 1'b0;
    guess_cast1_reg_427[31:3] <= 29'b00000000000000000000000000000;
end



endmodule //voicerec_classifySound

