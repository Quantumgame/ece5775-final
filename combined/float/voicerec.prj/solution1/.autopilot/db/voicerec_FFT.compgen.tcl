# This script segment is generated automatically by AutoPilot

set id 6
set name voicerec_faddfsub_32ns_32ns_32_5_full_dsp
set corename simcore_faddfsub
set op faddfsub
set stage_num 5
set max_latency -1
set registered_input 1
set impl_style full_dsp
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_faddfsub] == "ap_gen_simcore_faddfsub"} {
eval "ap_gen_simcore_faddfsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_faddfsub, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op faddfsub
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 8
set name voicerec_fmul_32ns_32ns_32_4_max_dsp
set corename simcore_fmul
set op fmul
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style max_dsp
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 12
set name voicerec_sdiv_11ns_32ns_32_15_seq
set corename simcore_sdiv_seq
set op sdiv
set stage_num 15
set max_latency -1
set registered_input 1
set in0_width 11
set in0_signed 0
set in1_width 32
set in1_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_sdiv] == "ap_gen_simcore_sdiv"} {
eval "ap_gen_simcore_sdiv { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_sdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op sdiv
set corename DivnS_SEQ
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_div] == "::AESL_LIB_VIRTEX::xil_gen_div"} {
eval "::AESL_LIB_VIRTEX::xil_gen_div { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_div, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 13
set MemName voicerec_FFT_cosVec
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "00111111100000000000000000000000" "10111111100000000000000000000000" "10111111000000000000000000000000" "00100100100011010011000011111110" "00111110100111100011011111011111" "00111111000000000000000000000000" "00111111000111111001110100001010" "00111111001101010000010100101001" "00111111010001000001101100110011" "00111111010011110001101111101111" "00111111010101110101110000101001" "00111111010111011011010000100100" "00111111011000101010110110000010" "00111111011001101010010111111000" "00111111011010011101111001101010" "00111111011011001000001101100110" "00111111011011101011011001011011" "00111111011100001000111110000110" "00111111011100100010000101000010" "00111111011100110111100010101011" "00111111011101001010000000111100" "00111111011101011010000100100011" "00111111011101101000000111101101" "00111111011101110100011100110000" "00111111011101111111010011011100" "00111111011110001000111110000110" "00111111011110010001100100100110" "00111111011110011001010100000011" "00111111011110100000001111000101" "00111111011110100110100000001010" "00111111011110101100001001111010" "00111111011110110001010100001110" "00111111011110110101111111000100" "00111111011110111010001111101100" "00111111011110111110001011010110" "00111111011111000001110010000010" "00111111011111000101000110011000" "00111111011111001000001000010111" "00111111011111001010111101001111" "00111111011111001101100101000000" "00111111011111001111111111101011" "00111111011111010010001111110110" "00111111011111010100010101100011" "00111111011111010110010011011000" "00111111011111011000001001010110" "00111111011111011001110111011100" "00111111011111011011011101101011" "00111111011111011100111100000011" "00111111011111011110010111110011" "00111111011111011111101011101100" "00111111011111100000111100111101" "00111111011111100010001000111110" "00111111011111100011001111110000" "00111111011111100100010011111010" "00111111011111100101010010110101" "00111111011111100110001111000111" "00111111011111100111001000110010" "00111111011111100111111111110110" "00111111011111101000110001101001" "00111111011111101001100011011101" "00111111011111101010010010101001" "00111111011111101010111111001101" "00111111011111101011101001001001" "00111111011111101100010000011110" "00111111011111101100110111110010" "00111111011111101101011100011111" "00111111011111101110000001001100" "00111111011111101110100000101001" "00111111011111101111000010101110" "00111111011111101111011111100100" "00111111011111101111111111000001" "00111111011111110000011001001111" "00111111011111110000110110000100" "00111111011111110001010000010010" "00111111011111110001100111111000" "00111111011111110001111111011110" "00111111011111110010010111000100" "00111111011111110010101110101010" "00111111011111110011000011101000" "00111111011111110011011000100110" "00111111011111110011101010111101" "00111111011111110011111111111011" "00111111011111110100010010010001" "00111111011111110100100010000000" "00111111011111110100110100010110" "00111111011111110101000100000101" "00111111011111110101010011110011" "00111111011111110101100011100010" "00111111011111110101110011010001" "00111111011111110110000000011000" "00111111011111110110010000000110" "00111111011111110110011101001101" "00111111011111110110101010010100" "00111111011111110110110111011011" "00111111011111110111000001111010" "00111111011111110111001111000001" "00111111011111110111011001100000" "00111111011111110111100110100111" "00111111011111110111110001000110" "00111111011111110111111011100101" "00111111011111111000000110000100" "00111111011111111000001101111011" "00111111011111111000011000011010" "00111111011111111000100010111001" "00111111011111111000101010110001" "00111111011111111000110010101000" "00111111011111111000111101000111" "00111111011111111001000100111111" "00111111011111111001001100110110" "00111111011111111001010100101101" "00111111011111111001011100100100" "00111111011111111001100100011100" "00111111011111111001101001101011" "00111111011111111001110001100011" "00111111011111111001111001011010" "00111111011111111001111110101001" "00111111011111111010000110100001" "00111111011111111010001011110000" "00111111011111111010010011101000" "00111111011111111010011000110111" "00111111011111111010011110000111" "00111111011111111010100011010110" "00111111011111111010101011001110" "00111111011111111010110000011101" "00111111011111111010110101101101" "00111111011111111010111010111100" "00111111011111111011000000001100" "00111111011111111011000101011011" "00111111011111111011001000000011" "00111111011111111011001101010011" "00111111011111111011010010100010" "00111111011111111011010111110010" "00111111011111111011011010011010" "00111111011111111011011111101001" "00111111011111111011100100111001" "00111111011111111011100111100000" "00111111011111111011101100110000" "00111111011111111011101111011000" "00111111011111111011110100100111" "00111111011111111011110111001111" "00111111011111111011111100011111" "00111111011111111011111111000110" "00111111011111111100000001101110" "00111111011111111100000110111110" "00111111011111111100001001100101" "00111111011111111100001100001101" "00111111011111111100010001011101" "00111111011111111100010100000101" "00111111011111111100010110101100" "00111111011111111100011001010100" "00111111011111111100011011111100" "00111111011111111100100001001011" "00111111011111111100100011110011" "00111111011111111100100110011011" "00111111011111111100101001000011" "00111111011111111100101011101010" "00111111011111111100101110010010" "00111111011111111100110000111010" "00111111011111111100110011100010" "00111111011111111100110110001010" "00111111011111111100111000110001" "00111111011111111100111011011001" "00111111011111111100111110000001" "00111111011111111101000000101001" "00111111011111111101000011010000" "00111111011111111101000011010000" "00111111011111111101000101111000" "00111111011111111101001000100000" "00111111011111111101001011001000" "00111111011111111101001101101111" "00111111011111111101010000010111" "00111111011111111101010000010111" "00111111011111111101010010111111" "00111111011111111101010101100111" "00111111011111111101011000001111" "00111111011111111101011000001111" "00111111011111111101011010110110" "00111111011111111101011101011110" "00111111011111111101011101011110" "00111111011111111101100000000110" "00111111011111111101100010101110" "00111111011111111101100010101110" "00111111011111111101100101010101" "00111111011111111101100111111101" "00111111011111111101100111111101" "00111111011111111101101010100101" "00111111011111111101101101001101" "00111111011111111101101101001101" "00111111011111111101101111110101" "00111111011111111101101111110101" "00111111011111111101110010011100" "00111111011111111101110010011100" "00111111011111111101110101000100" "00111111011111111101110111101100" "00111111011111111101110111101100" "00111111011111111101111010010100" "00111111011111111101111010010100" "00111111011111111101111100111011" "00111111011111111101111100111011" "00111111011111111101111111100011" "00111111011111111101111111100011" "00111111011111111110000010001011" "00111111011111111110000010001011" "00111111011111111110000100110011" "00111111011111111110000100110011" "00111111011111111110000100110011" "00111111011111111110000111011010" "00111111011111111110000111011010" "00111111011111111110001010000010" "00111111011111111110001010000010" "00111111011111111110001100101010" "00111111011111111110001100101010" "00111111011111111110001100101010" "00111111011111111110001111010010" "00111111011111111110001111010010" "00111111011111111110010001111010" "00111111011111111110010001111010" "00111111011111111110010001111010" "00111111011111111110010100100001" "00111111011111111110010100100001" "00111111011111111110010111001001" "00111111011111111110010111001001" "00111111011111111110010111001001" "00111111011111111110011001110001" "00111111011111111110011001110001" "00111111011111111110011001110001" "00111111011111111110011100011001" "00111111011111111110011100011001" "00111111011111111110011100011001" "00111111011111111110011111000000" "00111111011111111110011111000000" "00111111011111111110011111000000" "00111111011111111110100001101000" "00111111011111111110100001101000" "00111111011111111110100001101000" "00111111011111111110100100010000" "00111111011111111110100100010000" "00111111011111111110100100010000" "00111111011111111110100100010000" "00111111011111111110100110111000" "00111111011111111110100110111000" "00111111011111111110100110111000" "00111111011111111110101001100000" "00111111011111111110101001100000" "00111111011111111110101001100000" "00111111011111111110101001100000" "00111111011111111110101100000111" "00111111011111111110101100000111" "00111111011111111110101100000111" "00111111011111111110101100000111" "00111111011111111110101110101111" "00111111011111111110101110101111" "00111111011111111110101110101111" "00111111011111111110101110101111" "00111111011111111110110001010111" "00111111011111111110110001010111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.39
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 14
set MemName voicerec_FFT_sinVec
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "10100101100011010011000101001010" "00100101000011010010111111010000" "00111111010111011011010000100100" "00111111100000000000000000000000" "00111111011100110111100010101011" "00111111010111011011010000100100" "00111111010010000010011000000011" "00111111001101010000010100101001" "00111111001001001000110111100011" "00111111000101100111100101101000" "00111111000010100110011101100010" "00111111000000000000000000000000" "00111110111011011110111111001000" "00111110110111100010010110000101" "00111110110100000100000000111010" "00111110110000111110111010100010" "00111110101110001111010001110011" "00111110101011110001110100111111" "00111110101001100011111100010100" "00111110100111100011011111011111" "00111110100101101110101011001000" "00111110100100000011111011101010" "00111110100010100010001100111010" "00111110100001001000010000001110" "00111110011111101010100010010111" "00111110011101010001000001001101" "00111110011011000010011110100110" "00111110011000111101110001001000" "00111110010111000010000100011000" "00111110010101001110011001011100" "00111110010011100010000110010110" "00111110010001111100010110101100" "00111110010000011100101011000001" "00111110001111000010100011110110" "00111110001101101101100001101111" "00111110001100011101000101001110" "00111110001011010000111001010110" "00111110001010001000101001001000" "00111110001001000100001010000101" "00111110001000000010111100110000" "00111110000111000101000001001000" "00111110000110001001110111110001" "00111110000101010001100000101011" "00111110000100011011100110110110" "00111110000011101000001010010101" "00111110000010110111000000100110" "00111110000010000111110100101100" "00111110000001011010100110101000" "00111110000000101111001011111010" "00111110000000000101011010000010" "00111101111110111010110111000001" "00111101111101101101110110101101" "00111101111100100011011110001011" "00111101111011011100000010011000" "00111101111010010111001110010111" "00111101111001010100101101001001" "00111101111000010100110011101100" "00111101110111010110111000000101" "00111101110110011010111010010010" "00111101110101100001001111010011" "00111101110100101001001101001011" "00111101110011110011001000111000" "00111101110010111110101001001111" "00111101110010001011110100100011" "00111101110001011010100100100010" "00111101110000101010110010111000" "00111101101111111100011011011010" "00111101101111001111011100000001" "00111101101110100011110000100001" "00111101101101111001010010100111" "00111101101101010000000010010011" "00111101101100100111111011011000" "00111101101100000000111001101011" "00111101101011011010111011000101" "00111101101010110101111101011111" "00111101101010010001111100101110" "00111101101001101110111000110001" "00111101101001001100101111100010" "00111101101000101011011010101110" "00111101101000001010111100011101" "00111101100111101011010000100000" "00111101100111001100010110111001" "00111101100110101110001101100001" "00111101100110010000110000001011" "00111101100101110100000000111110" "00111101100101010111111001100111" "00111101100100111100011110010011" "00111101100100100001101000101110" "00111101100100000111011011000000" "00111101100011101101110000111100" "00111101100011010100101100100111" "00111101100010111100001001110110" "00111101100010100100001010101111" "00111101100010001100101011000101" "00111101100001110101101010111000" "00111101100001011111001000000010" "00111101100001001001000100101010" "00111101100000110011011100100010" "00111101100000011110010001110001" "00111101100000001001100010010001" "00111101011111101010010111111000" "00111101011111000010011101100011" "00111101011110011011010101100011" "00111101011101110100111011101100" "00111101011101001111010100001010" "00111101011100101010011010110001" "00111101011100000110001011010100" "00111101011011100010100101110100" "00111101011010111111101010001111" "00111101011010011101011000101000" "00111101011001111011101100110000" "00111101011001011010100110101000" "00111101011000111010001010011100" "00111101011000011010001111110100" "00111101010111111010110110110000" "00111101010111011100000011011011" "00111101010110111101110001101010" "00111101010110011111111101010000" "00111101010110000010101010011001" "00111101010101100101111001000110" "00111101010101001001100101001010" "00111101010100101101101110100101" "00111101010100010010010101010111" "00111101010011110111010101010011" "00111101010011011100110010100111" "00111101010011000010101101010010" "00111101010010101001000001000111" "00111101010010001111101110000111" "00111101010001110110110100010001" "00111101010001011110001111011010" "00111101010001000110000111111010" "00111101010000101110010101011000" "00111101010000010110110111110100" "00111101001111111111110011011011" "00111101001111101001000100000000" "00111101001111010010101001100011" "00111101001110111100101000010000" "00111101001110100110110111110000" "00111101001110010001011000000001" "00111101001101111100010001011101" "00111101001101100111011011101010" "00111101001101010010110110101010" "00111101001100111110100110100111" "00111101001100101010100111010110" "00111101001100010110111101000100" "00111101001100000011011111010110" "00111101001011110000010110100111" "00111101001011011101011010011101" "00111101001011001010110011010010" "00111101001010111000011000101011" "00111101001010100110001010101010" "00111101001010010100010001100111" "00111101001010000010100101001010" "00111101001001110001001001011110" "00111101001001011111111010010111" "00111101001001001110110111110110" "00111101001000111110000110000111" "00111101001000101101100000111100" "00111101001000011101001000011000" "00111101001000001100111100011000" "00111101000111111100111100111110" "00111101000111101101001010001001" "00111101000111011101101000000110" "00111101000111001110001110011011" "00111101000110111111000001010110" "00111101000110101111111100101010" "00111101000110100001001000110000" "00111101000110010010011101001110" "00111101000110000011111110010010" "00111101000101110101100111101111" "00111101000101100111100001111101" "00111101000101011001100000011000" "00111101000101001011101011011000" "00111101000100111101111110110001" "00111101000100110000011110101111" "00111101000100100011000111000110" "00111101000100010101111100000011" "00111101000100001000110101001100" "00111101000011111011111010111010" "00111101000011101111001001000001" "00111101000011100010100011101101" "00111101000011010110000010100110" "00111101000011001001101110000100" "00111101000010111101011101101111" "00111101000010110001011001111111" "00111101000010100101011010011011" "00111101000010011001100111011101" "00111101000010001101111000101011" "00111101000010000010010010010010" "00111101000001110110110100010001" "00111101000001101011011110101010" "00111101000001100000010001011100" "00111101000001010101001100100110" "00111101000001001010001011111101" "00111101000000111111010011101101" "00111101000000110100100011110101" "00111101000000101001111000001010" "00111101000000011111010100111000" "00111101000000010100111001111111" "00111101000000001010100011010010" "00111101000000000000010100111110" "00111100111111101100010101101101" "00111100111111011000010010010000" "00111100111111000100010111001100" "00111100111110110000101100111001" "00111100111110011101001010111111" "00111100111110001001111001110111" "00111100111101110110110001001000" "00111100111101100011111001001011" "00111100111101010001000001001101" "00111100111100111110100010011011" "00111100111100101100000011101000" "00111100111100011001110101100111" "00111100111100000111101111111110" "00111100111011110101111011001000" "00111100111011100100001110101010" "00111100111011010010101010100110" "00111100111011000001001110111010" "00111100111010101111111011100111" "00111100111010011110111001000110" "00111100111010001101111110111101" "00111100111001111101001101001110" "00111100111001101100100011110111" "00111100111001011100000010111010" "00111100111001001011110010101110" "00111100111000111011100010100010" "00111100111000101011100011000111" "00111100111000011011100011101101" "00111100111000001011110101000101" "00111100110111111100001110110101" "00111100110111101100110000111110" "00111100110111011101010011000111" "00111100110111001110000110000010" "00111100110110111111000001010110" "00111100110110110000000101000011" "00111100110110100001010001001001" "00111100110110010010011101001110" "00111100110110000011111010000101" "00111100110101110101010110111101" "00111100110101100111000100100110" "00111100110101011000110010001111" "00111100110101001010110000101010" "00111100110100111100101111000101" "00111100110100101110110101111000" "00111100110100100001000101000101" "00111100110100010011011100101010" "00111100110100000101110100010000" "00111100110011111000011100100111" "00111100110011101011000100111110" "00111100110011011101110101101110" "00111100110011010000101110110111" "00111100110011000011110000011001" "00111100110010110110110001111010" "00111100110010101001111011110101" "00111100110010011101001110001001" "00111100110010010000101000110101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.39
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 15 \
    name c \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c \
    op interface \
    ports { c_address0 { O 9 vector } c_ce0 { O 1 bit } c_we0 { O 1 bit } c_d0 { O 32 vector } c_q0 { I 32 vector } c_address1 { O 9 vector } c_ce1 { O 1 bit } c_we1 { O 1 bit } c_d1 { O 32 vector } c_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


