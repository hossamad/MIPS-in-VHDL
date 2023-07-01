--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Mips16Bit_synthesis.vhd
-- /___/   /\     Timestamp: Mon Apr 13 21:04:52 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Mips16Bit -w -dir netgen/synthesis -ofmt vhdl -sim Mips16Bit.ngc Mips16Bit_synthesis.vhd 
-- Device	: xc6slx9-3-tqg144
-- Input file	: Mips16Bit.ngc
-- Output file	: D:\FinalMips\Mips\netgen\synthesis\Mips16Bit_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Mips16Bit
-- Xilinx	: E:\xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Mips16Bit is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    in_port : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    out_portA : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    out_portB : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Mips16Bit;

architecture Structure of Mips16Bit is
  signal in_port_15_IBUF_0 : STD_LOGIC; 
  signal in_port_14_IBUF_1 : STD_LOGIC; 
  signal in_port_13_IBUF_2 : STD_LOGIC; 
  signal in_port_12_IBUF_3 : STD_LOGIC; 
  signal in_port_11_IBUF_4 : STD_LOGIC; 
  signal in_port_10_IBUF_5 : STD_LOGIC; 
  signal in_port_9_IBUF_6 : STD_LOGIC; 
  signal in_port_8_IBUF_7 : STD_LOGIC; 
  signal in_port_7_IBUF_8 : STD_LOGIC; 
  signal in_port_6_IBUF_9 : STD_LOGIC; 
  signal in_port_5_IBUF_10 : STD_LOGIC; 
  signal in_port_4_IBUF_11 : STD_LOGIC; 
  signal in_port_3_IBUF_12 : STD_LOGIC; 
  signal in_port_2_IBUF_13 : STD_LOGIC; 
  signal in_port_1_IBUF_14 : STD_LOGIC; 
  signal in_port_0_IBUF_15 : STD_LOGIC; 
  signal clk_BUFGP_16 : STD_LOGIC; 
  signal reset_IBUF_17 : STD_LOGIC; 
  signal instr_14_Q : STD_LOGIC; 
  signal instr_13_Q : STD_LOGIC; 
  signal instr_12_Q : STD_LOGIC; 
  signal instr_8_Q : STD_LOGIC; 
  signal instr_11_Q : STD_LOGIC; 
  signal instr_10_Q : STD_LOGIC; 
  signal instr_9_Q : STD_LOGIC; 
  signal Zero : STD_LOGIC; 
  signal latchA : STD_LOGIC; 
  signal SignExtend_Out_10_Q : STD_LOGIC; 
  signal SignExtend_Out_7_Q : STD_LOGIC; 
  signal SignExtend_Out_6_Q : STD_LOGIC; 
  signal instr_1_Q : STD_LOGIC; 
  signal instr_0_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal ControlUnit1_Mram_regwrite : STD_LOGIC; 
  signal ControlUnit1_Mram_n0048 : STD_LOGIC; 
  signal ControlUnit1_Mram_n00481 : STD_LOGIC; 
  signal ControlUnit1_Mram_n00484 : STD_LOGIC; 
  signal ControlUnit1_Mram_n00485 : STD_LOGIC; 
  signal ControlUnit1_Mram_n00486 : STD_LOGIC; 
  signal ControlUnit1_Mram_n004810 : STD_LOGIC; 
  signal ControlUnit1_Mram_n004812 : STD_LOGIC; 
  signal ControlUnit1_Mram_n004813 : STD_LOGIC; 
  signal ControlUnit1_Mram_n004815 : STD_LOGIC; 
  signal clk_inv : STD_LOGIC; 
  signal MUX2_1_ALU_Mmux_y17 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y17_295 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y101_296 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y102_297 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y110 : STD_LOGIC; 
  signal ControlUnit1_Mram_n004841_299 : STD_LOGIC; 
  signal latch_n0018_inv : STD_LOGIC; 
  signal Alu1_Mmux_resultX111081 : STD_LOGIC; 
  signal Alu1_Mmux_resultX11105 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y24 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y22 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y16 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y5 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y9 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y8 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y10 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y1 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y11 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y12 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y13 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y14 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y15 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y16 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y2 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y3 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y4 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y6 : STD_LOGIC; 
  signal Mux_DataIn_Mmux_y7 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y10 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y9 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y8 : STD_LOGIC; 
  signal MUX2_1_PC_Mmux_y7 : STD_LOGIC; 
  signal Alu1_Mmux_resultX118 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1181_383 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1182_384 : STD_LOGIC; 
  signal Alu1_Mmux_resultX11302 : STD_LOGIC; 
  signal Alu1_Mmux_resultX11303_386 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1122 : STD_LOGIC; 
  signal Alu1_Mmux_resultX116 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1161_389 : STD_LOGIC; 
  signal Alu1_Mmux_resultX114 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1141_391 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1132 : STD_LOGIC; 
  signal Alu1_Mmux_resultX11321_393 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1128 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1126 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1124 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1120 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1118 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1116 : STD_LOGIC; 
  signal Alu1_Mmux_resultX11121 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1110 : STD_LOGIC; 
  signal Alu1_Mmux_resultX11101_402 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_1_rt_438 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_2_rt_439 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_3_rt_440 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_4_rt_441 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_5_rt_442 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_6_rt_443 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_7_rt_444 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_8_rt_445 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_9_rt_446 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_10_rt_447 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_11_rt_448 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_12_rt_449 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_13_rt_450 : STD_LOGIC; 
  signal PC_Adder_Madd_y_cy_14_rt_451 : STD_LOGIC; 
  signal PC_Adder_Madd_y_xor_15_rt_452 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal Alu_Controller1_Mmux_ALU_Control21_497 : STD_LOGIC; 
  signal Alu_Controller1_Mmux_ALU_Control131_498 : STD_LOGIC; 
  signal Alu1_Mmux_resultX111051_499 : STD_LOGIC; 
  signal Alu1_Mmux_resultX1110811_500 : STD_LOGIC; 
  signal Alu_Controller1_Mmux_ALU_Control41_501 : STD_LOGIC; 
  signal Alu_Controller1_Mmux_ALU_Control31_502 : STD_LOGIC; 
  signal Alu1_Mmux_resultX111051_1_503 : STD_LOGIC; 
  signal ControlUnit1_Mram_n004881_504 : STD_LOGIC; 
  signal ControlUnit1_Mram_n004891_505 : STD_LOGIC; 
  signal ControlUnit1_Mram_n004871_506 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal InstMemory1_Mram_Instruction13 : STD_LOGIC; 
  signal InstMemory1_Mram_Instruction12 : STD_LOGIC; 
  signal InstMemory1_Mram_Instruction111 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N1210 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal instr_4_1_548 : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem11_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem11_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem12_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem12_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem2_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem2_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem1_DOD_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem1_DOD_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem132_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem131_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem133_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem134_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem34_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem32_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem33_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_RegFile1_Mram_mem31_SPO_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_RSTBRST_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ENBRDEN_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_CLKBRDCLK_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_REGCEBREGCE_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOPADOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOPADOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOPBDOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOPBDOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_WEBWEU_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_WEBWEU_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRAWRADDR_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRAWRADDR_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRAWRADDR_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRAWRADDR_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIPBDIP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIPBDIP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DIBDI_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_ADDRBRDADDR_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_DataMemory1_Mram_mem_DOBDO_0_UNCONNECTED : STD_LOGIC; 
  signal WriteData : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal pro_c_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ReadData1 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ReadData2 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ReadData_dmem : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal latch_latchab_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal latch_latchab_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal PC_Adder_Out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal pcin : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALU_Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal MUX2_1_ALU_Out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PC_Adder_Branch_Out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal data_out : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal ALUOP : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal WriteReg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal ALU_Control : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal PC_Adder_Madd_y_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal PC_Adder_Madd_y_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal PC_Adder_Branch_Madd_y_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PC_Adder_Branch_Madd_y_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Alu1_Mmux_resultX1_rs_lut : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Alu1_Mmux_resultX1_rs_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Alu1_Mmux_resultX1_split : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Alu1_Zero : STD_LOGIC_VECTOR ( 15 downto 15 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  RegFile1_Mram_mem11 : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      DIA(1) => WriteData(1),
      DIA(0) => WriteData(0),
      DIB(1) => WriteData(3),
      DIB(0) => WriteData(2),
      DIC(1) => WriteData(5),
      DIC(0) => WriteData(4),
      DID(1) => N1,
      DID(0) => N1,
      ADDRA(4) => N1,
      ADDRA(3) => N1,
      ADDRA(2) => instr_8_Q,
      ADDRA(1) => instr_0_Q,
      ADDRA(0) => instr_1_Q,
      ADDRB(4) => N1,
      ADDRB(3) => N1,
      ADDRB(2) => instr_8_Q,
      ADDRB(1) => instr_0_Q,
      ADDRB(0) => instr_1_Q,
      ADDRC(4) => N1,
      ADDRC(3) => N1,
      ADDRC(2) => instr_8_Q,
      ADDRC(1) => instr_0_Q,
      ADDRC(0) => instr_1_Q,
      ADDRD(4) => N1,
      ADDRD(3) => N1,
      ADDRD(2) => WriteReg(2),
      ADDRD(1) => WriteReg(1),
      ADDRD(0) => WriteReg(0),
      DOA(1) => ReadData2(1),
      DOA(0) => ReadData2(0),
      DOB(1) => ReadData2(3),
      DOB(0) => ReadData2(2),
      DOC(1) => ReadData2(5),
      DOC(0) => ReadData2(4),
      DOD(1) => NLW_RegFile1_Mram_mem11_DOD_1_UNCONNECTED,
      DOD(0) => NLW_RegFile1_Mram_mem11_DOD_0_UNCONNECTED
    );
  RegFile1_Mram_mem12 : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      DIA(1) => WriteData(7),
      DIA(0) => WriteData(6),
      DIB(1) => WriteData(9),
      DIB(0) => WriteData(8),
      DIC(1) => WriteData(11),
      DIC(0) => WriteData(10),
      DID(1) => N1,
      DID(0) => N1,
      ADDRA(4) => N1,
      ADDRA(3) => N1,
      ADDRA(2) => instr_8_Q,
      ADDRA(1) => instr_0_Q,
      ADDRA(0) => instr_1_Q,
      ADDRB(4) => N1,
      ADDRB(3) => N1,
      ADDRB(2) => instr_8_Q,
      ADDRB(1) => instr_0_Q,
      ADDRB(0) => instr_1_Q,
      ADDRC(4) => N1,
      ADDRC(3) => N1,
      ADDRC(2) => instr_8_Q,
      ADDRC(1) => instr_0_Q,
      ADDRC(0) => instr_1_Q,
      ADDRD(4) => N1,
      ADDRD(3) => N1,
      ADDRD(2) => WriteReg(2),
      ADDRD(1) => WriteReg(1),
      ADDRD(0) => WriteReg(0),
      DOA(1) => ReadData2(7),
      DOA(0) => ReadData2(6),
      DOB(1) => ReadData2(9),
      DOB(0) => ReadData2(8),
      DOC(1) => ReadData2(11),
      DOC(0) => ReadData2(10),
      DOD(1) => NLW_RegFile1_Mram_mem12_DOD_1_UNCONNECTED,
      DOD(0) => NLW_RegFile1_Mram_mem12_DOD_0_UNCONNECTED
    );
  RegFile1_Mram_mem2 : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      DIA(1) => WriteData(7),
      DIA(0) => WriteData(6),
      DIB(1) => WriteData(9),
      DIB(0) => WriteData(8),
      DIC(1) => WriteData(11),
      DIC(0) => WriteData(10),
      DID(1) => N1,
      DID(0) => N1,
      ADDRA(4) => N1,
      ADDRA(3) => N1,
      ADDRA(2) => instr_11_Q,
      ADDRA(1) => instr_10_Q,
      ADDRA(0) => instr_9_Q,
      ADDRB(4) => N1,
      ADDRB(3) => N1,
      ADDRB(2) => instr_11_Q,
      ADDRB(1) => instr_10_Q,
      ADDRB(0) => instr_9_Q,
      ADDRC(4) => N1,
      ADDRC(3) => N1,
      ADDRC(2) => instr_11_Q,
      ADDRC(1) => instr_10_Q,
      ADDRC(0) => instr_9_Q,
      ADDRD(4) => N1,
      ADDRD(3) => N1,
      ADDRD(2) => WriteReg(2),
      ADDRD(1) => WriteReg(1),
      ADDRD(0) => WriteReg(0),
      DOA(1) => ReadData1(7),
      DOA(0) => ReadData1(6),
      DOB(1) => ReadData1(9),
      DOB(0) => ReadData1(8),
      DOC(1) => ReadData1(11),
      DOC(0) => ReadData1(10),
      DOD(1) => NLW_RegFile1_Mram_mem2_DOD_1_UNCONNECTED,
      DOD(0) => NLW_RegFile1_Mram_mem2_DOD_0_UNCONNECTED
    );
  RegFile1_Mram_mem1 : RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
    port map (
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      DIA(1) => WriteData(1),
      DIA(0) => WriteData(0),
      DIB(1) => WriteData(3),
      DIB(0) => WriteData(2),
      DIC(1) => WriteData(5),
      DIC(0) => WriteData(4),
      DID(1) => N1,
      DID(0) => N1,
      ADDRA(4) => N1,
      ADDRA(3) => N1,
      ADDRA(2) => instr_11_Q,
      ADDRA(1) => instr_10_Q,
      ADDRA(0) => instr_9_Q,
      ADDRB(4) => N1,
      ADDRB(3) => N1,
      ADDRB(2) => instr_11_Q,
      ADDRB(1) => instr_10_Q,
      ADDRB(0) => instr_9_Q,
      ADDRC(4) => N1,
      ADDRC(3) => N1,
      ADDRC(2) => instr_11_Q,
      ADDRC(1) => instr_10_Q,
      ADDRC(0) => instr_9_Q,
      ADDRD(4) => N1,
      ADDRD(3) => N1,
      ADDRD(2) => WriteReg(2),
      ADDRD(1) => WriteReg(1),
      ADDRD(0) => WriteReg(0),
      DOA(1) => ReadData1(1),
      DOA(0) => ReadData1(0),
      DOB(1) => ReadData1(3),
      DOB(0) => ReadData1(2),
      DOC(1) => ReadData1(5),
      DOC(0) => ReadData1(4),
      DOD(1) => NLW_RegFile1_Mram_mem1_DOD_1_UNCONNECTED,
      DOD(0) => NLW_RegFile1_Mram_mem1_DOD_0_UNCONNECTED
    );
  RegFile1_Mram_mem132 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => WriteReg(0),
      A1 => WriteReg(1),
      A2 => WriteReg(2),
      A3 => N1,
      D => WriteData(13),
      DPRA0 => instr_1_Q,
      DPRA1 => instr_0_Q,
      DPRA2 => instr_8_Q,
      DPRA3 => N1,
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      SPO => NLW_RegFile1_Mram_mem132_SPO_UNCONNECTED,
      DPO => ReadData2(13)
    );
  RegFile1_Mram_mem131 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => WriteReg(0),
      A1 => WriteReg(1),
      A2 => WriteReg(2),
      A3 => N1,
      D => WriteData(12),
      DPRA0 => instr_1_Q,
      DPRA1 => instr_0_Q,
      DPRA2 => instr_8_Q,
      DPRA3 => N1,
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      SPO => NLW_RegFile1_Mram_mem131_SPO_UNCONNECTED,
      DPO => ReadData2(12)
    );
  RegFile1_Mram_mem133 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => WriteReg(0),
      A1 => WriteReg(1),
      A2 => WriteReg(2),
      A3 => N1,
      D => WriteData(14),
      DPRA0 => instr_1_Q,
      DPRA1 => instr_0_Q,
      DPRA2 => instr_8_Q,
      DPRA3 => N1,
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      SPO => NLW_RegFile1_Mram_mem133_SPO_UNCONNECTED,
      DPO => ReadData2(14)
    );
  RegFile1_Mram_mem134 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => WriteReg(0),
      A1 => WriteReg(1),
      A2 => WriteReg(2),
      A3 => N1,
      D => WriteData(15),
      DPRA0 => instr_1_Q,
      DPRA1 => instr_0_Q,
      DPRA2 => instr_8_Q,
      DPRA3 => N1,
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      SPO => NLW_RegFile1_Mram_mem134_SPO_UNCONNECTED,
      DPO => ReadData2(15)
    );
  RegFile1_Mram_mem34 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => WriteReg(0),
      A1 => WriteReg(1),
      A2 => WriteReg(2),
      A3 => N1,
      D => WriteData(15),
      DPRA0 => instr_9_Q,
      DPRA1 => instr_10_Q,
      DPRA2 => instr_11_Q,
      DPRA3 => N1,
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      SPO => NLW_RegFile1_Mram_mem34_SPO_UNCONNECTED,
      DPO => ReadData1(15)
    );
  RegFile1_Mram_mem32 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => WriteReg(0),
      A1 => WriteReg(1),
      A2 => WriteReg(2),
      A3 => N1,
      D => WriteData(13),
      DPRA0 => instr_9_Q,
      DPRA1 => instr_10_Q,
      DPRA2 => instr_11_Q,
      DPRA3 => N1,
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      SPO => NLW_RegFile1_Mram_mem32_SPO_UNCONNECTED,
      DPO => ReadData1(13)
    );
  RegFile1_Mram_mem33 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => WriteReg(0),
      A1 => WriteReg(1),
      A2 => WriteReg(2),
      A3 => N1,
      D => WriteData(14),
      DPRA0 => instr_9_Q,
      DPRA1 => instr_10_Q,
      DPRA2 => instr_11_Q,
      DPRA3 => N1,
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      SPO => NLW_RegFile1_Mram_mem33_SPO_UNCONNECTED,
      DPO => ReadData1(14)
    );
  RegFile1_Mram_mem31 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => WriteReg(0),
      A1 => WriteReg(1),
      A2 => WriteReg(2),
      A3 => N1,
      D => WriteData(12),
      DPRA0 => instr_9_Q,
      DPRA1 => instr_10_Q,
      DPRA2 => instr_11_Q,
      DPRA3 => N1,
      WCLK => clk_BUFGP_16,
      WE => ControlUnit1_Mram_regwrite,
      SPO => NLW_RegFile1_Mram_mem31_SPO_UNCONNECTED,
      DPO => ReadData1(12)
    );
  PC_Adder_Madd_y_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => PC_Adder_Madd_y_lut(0),
      O => PC_Adder_Madd_y_cy(0)
    );
  PC_Adder_Madd_y_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => PC_Adder_Madd_y_lut(0),
      O => PC_Adder_Out(0)
    );
  PC_Adder_Madd_y_cy_1_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(0),
      DI => N1,
      S => PC_Adder_Madd_y_cy_1_rt_438,
      O => PC_Adder_Madd_y_cy(1)
    );
  PC_Adder_Madd_y_xor_1_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(0),
      LI => PC_Adder_Madd_y_cy_1_rt_438,
      O => PC_Adder_Out(1)
    );
  PC_Adder_Madd_y_cy_2_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(1),
      DI => N1,
      S => PC_Adder_Madd_y_cy_2_rt_439,
      O => PC_Adder_Madd_y_cy(2)
    );
  PC_Adder_Madd_y_xor_2_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(1),
      LI => PC_Adder_Madd_y_cy_2_rt_439,
      O => PC_Adder_Out(2)
    );
  PC_Adder_Madd_y_cy_3_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(2),
      DI => N1,
      S => PC_Adder_Madd_y_cy_3_rt_440,
      O => PC_Adder_Madd_y_cy(3)
    );
  PC_Adder_Madd_y_xor_3_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(2),
      LI => PC_Adder_Madd_y_cy_3_rt_440,
      O => PC_Adder_Out(3)
    );
  PC_Adder_Madd_y_cy_4_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(3),
      DI => N1,
      S => PC_Adder_Madd_y_cy_4_rt_441,
      O => PC_Adder_Madd_y_cy(4)
    );
  PC_Adder_Madd_y_xor_4_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(3),
      LI => PC_Adder_Madd_y_cy_4_rt_441,
      O => PC_Adder_Out(4)
    );
  PC_Adder_Madd_y_cy_5_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(4),
      DI => N1,
      S => PC_Adder_Madd_y_cy_5_rt_442,
      O => PC_Adder_Madd_y_cy(5)
    );
  PC_Adder_Madd_y_xor_5_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(4),
      LI => PC_Adder_Madd_y_cy_5_rt_442,
      O => PC_Adder_Out(5)
    );
  PC_Adder_Madd_y_cy_6_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(5),
      DI => N1,
      S => PC_Adder_Madd_y_cy_6_rt_443,
      O => PC_Adder_Madd_y_cy(6)
    );
  PC_Adder_Madd_y_xor_6_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(5),
      LI => PC_Adder_Madd_y_cy_6_rt_443,
      O => PC_Adder_Out(6)
    );
  PC_Adder_Madd_y_cy_7_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(6),
      DI => N1,
      S => PC_Adder_Madd_y_cy_7_rt_444,
      O => PC_Adder_Madd_y_cy(7)
    );
  PC_Adder_Madd_y_xor_7_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(6),
      LI => PC_Adder_Madd_y_cy_7_rt_444,
      O => PC_Adder_Out(7)
    );
  PC_Adder_Madd_y_cy_8_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(7),
      DI => N1,
      S => PC_Adder_Madd_y_cy_8_rt_445,
      O => PC_Adder_Madd_y_cy(8)
    );
  PC_Adder_Madd_y_xor_8_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(7),
      LI => PC_Adder_Madd_y_cy_8_rt_445,
      O => PC_Adder_Out(8)
    );
  PC_Adder_Madd_y_cy_9_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(8),
      DI => N1,
      S => PC_Adder_Madd_y_cy_9_rt_446,
      O => PC_Adder_Madd_y_cy(9)
    );
  PC_Adder_Madd_y_xor_9_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(8),
      LI => PC_Adder_Madd_y_cy_9_rt_446,
      O => PC_Adder_Out(9)
    );
  PC_Adder_Madd_y_cy_10_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(9),
      DI => N1,
      S => PC_Adder_Madd_y_cy_10_rt_447,
      O => PC_Adder_Madd_y_cy(10)
    );
  PC_Adder_Madd_y_xor_10_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(9),
      LI => PC_Adder_Madd_y_cy_10_rt_447,
      O => PC_Adder_Out(10)
    );
  PC_Adder_Madd_y_cy_11_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(10),
      DI => N1,
      S => PC_Adder_Madd_y_cy_11_rt_448,
      O => PC_Adder_Madd_y_cy(11)
    );
  PC_Adder_Madd_y_xor_11_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(10),
      LI => PC_Adder_Madd_y_cy_11_rt_448,
      O => PC_Adder_Out(11)
    );
  PC_Adder_Madd_y_cy_12_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(11),
      DI => N1,
      S => PC_Adder_Madd_y_cy_12_rt_449,
      O => PC_Adder_Madd_y_cy(12)
    );
  PC_Adder_Madd_y_xor_12_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(11),
      LI => PC_Adder_Madd_y_cy_12_rt_449,
      O => PC_Adder_Out(12)
    );
  PC_Adder_Madd_y_cy_13_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(12),
      DI => N1,
      S => PC_Adder_Madd_y_cy_13_rt_450,
      O => PC_Adder_Madd_y_cy(13)
    );
  PC_Adder_Madd_y_xor_13_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(12),
      LI => PC_Adder_Madd_y_cy_13_rt_450,
      O => PC_Adder_Out(13)
    );
  PC_Adder_Madd_y_cy_14_Q : MUXCY
    port map (
      CI => PC_Adder_Madd_y_cy(13),
      DI => N1,
      S => PC_Adder_Madd_y_cy_14_rt_451,
      O => PC_Adder_Madd_y_cy(14)
    );
  PC_Adder_Madd_y_xor_14_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(13),
      LI => PC_Adder_Madd_y_cy_14_rt_451,
      O => PC_Adder_Out(14)
    );
  PC_Adder_Madd_y_xor_15_Q : XORCY
    port map (
      CI => PC_Adder_Madd_y_cy(14),
      LI => PC_Adder_Madd_y_xor_15_rt_452,
      O => PC_Adder_Out(15)
    );
  PC_Adder_Branch_Madd_y_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Adder_Out(0),
      I1 => instr_0_Q,
      O => PC_Adder_Branch_Madd_y_lut(0)
    );
  PC_Adder_Branch_Madd_y_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => PC_Adder_Out(0),
      S => PC_Adder_Branch_Madd_y_lut(0),
      O => PC_Adder_Branch_Madd_y_cy(0)
    );
  PC_Adder_Branch_Madd_y_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => PC_Adder_Branch_Madd_y_lut(0),
      O => PC_Adder_Branch_Out(0)
    );
  PC_Adder_Branch_Madd_y_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Adder_Out(1),
      I1 => instr_1_Q,
      O => PC_Adder_Branch_Madd_y_lut(1)
    );
  PC_Adder_Branch_Madd_y_cy_1_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(0),
      DI => PC_Adder_Out(1),
      S => PC_Adder_Branch_Madd_y_lut(1),
      O => PC_Adder_Branch_Madd_y_cy(1)
    );
  PC_Adder_Branch_Madd_y_xor_1_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(0),
      LI => PC_Adder_Branch_Madd_y_lut(1),
      O => PC_Adder_Branch_Out(1)
    );
  PC_Adder_Branch_Madd_y_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Adder_Out(2),
      I1 => instr_1_Q,
      O => PC_Adder_Branch_Madd_y_lut(2)
    );
  PC_Adder_Branch_Madd_y_cy_2_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(1),
      DI => PC_Adder_Out(2),
      S => PC_Adder_Branch_Madd_y_lut(2),
      O => PC_Adder_Branch_Madd_y_cy(2)
    );
  PC_Adder_Branch_Madd_y_xor_2_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(1),
      LI => PC_Adder_Branch_Madd_y_lut(2),
      O => PC_Adder_Branch_Out(2)
    );
  PC_Adder_Branch_Madd_y_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Adder_Out(3),
      I1 => instr_1_Q,
      O => PC_Adder_Branch_Madd_y_lut(3)
    );
  PC_Adder_Branch_Madd_y_cy_3_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(2),
      DI => PC_Adder_Out(3),
      S => PC_Adder_Branch_Madd_y_lut(3),
      O => PC_Adder_Branch_Madd_y_cy(3)
    );
  PC_Adder_Branch_Madd_y_xor_3_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(2),
      LI => PC_Adder_Branch_Madd_y_lut(3),
      O => PC_Adder_Branch_Out(3)
    );
  PC_Adder_Branch_Madd_y_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Adder_Out(4),
      I1 => instr_0_Q,
      O => PC_Adder_Branch_Madd_y_lut(4)
    );
  PC_Adder_Branch_Madd_y_cy_4_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(3),
      DI => PC_Adder_Out(4),
      S => PC_Adder_Branch_Madd_y_lut(4),
      O => PC_Adder_Branch_Madd_y_cy(4)
    );
  PC_Adder_Branch_Madd_y_xor_4_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(3),
      LI => PC_Adder_Branch_Madd_y_lut(4),
      O => PC_Adder_Branch_Out(4)
    );
  PC_Adder_Branch_Madd_y_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Adder_Out(5),
      I1 => instr_0_Q,
      O => PC_Adder_Branch_Madd_y_lut(5)
    );
  PC_Adder_Branch_Madd_y_cy_5_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(4),
      DI => PC_Adder_Out(5),
      S => PC_Adder_Branch_Madd_y_lut(5),
      O => PC_Adder_Branch_Madd_y_cy(5)
    );
  PC_Adder_Branch_Madd_y_xor_5_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(4),
      LI => PC_Adder_Branch_Madd_y_lut(5),
      O => PC_Adder_Branch_Out(5)
    );
  PC_Adder_Branch_Madd_y_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Adder_Out(6),
      I1 => SignExtend_Out_6_Q,
      O => PC_Adder_Branch_Madd_y_lut(6)
    );
  PC_Adder_Branch_Madd_y_cy_6_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(5),
      DI => PC_Adder_Out(6),
      S => PC_Adder_Branch_Madd_y_lut(6),
      O => PC_Adder_Branch_Madd_y_cy(6)
    );
  PC_Adder_Branch_Madd_y_xor_6_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(5),
      LI => PC_Adder_Branch_Madd_y_lut(6),
      O => PC_Adder_Branch_Out(6)
    );
  PC_Adder_Branch_Madd_y_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => PC_Adder_Out(7),
      I1 => SignExtend_Out_7_Q,
      O => PC_Adder_Branch_Madd_y_lut(7)
    );
  PC_Adder_Branch_Madd_y_cy_7_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(6),
      DI => PC_Adder_Out(7),
      S => PC_Adder_Branch_Madd_y_lut(7),
      O => PC_Adder_Branch_Madd_y_cy(7)
    );
  PC_Adder_Branch_Madd_y_xor_7_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(6),
      LI => PC_Adder_Branch_Madd_y_lut(7),
      O => PC_Adder_Branch_Out(7)
    );
  PC_Adder_Branch_Madd_y_cy_8_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(7),
      DI => PC_Adder_Out(8),
      S => PC_Adder_Branch_Madd_y_lut(8),
      O => PC_Adder_Branch_Madd_y_cy(8)
    );
  PC_Adder_Branch_Madd_y_xor_8_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(7),
      LI => PC_Adder_Branch_Madd_y_lut(8),
      O => PC_Adder_Branch_Out(8)
    );
  PC_Adder_Branch_Madd_y_cy_9_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(8),
      DI => PC_Adder_Out(9),
      S => PC_Adder_Branch_Madd_y_lut(9),
      O => PC_Adder_Branch_Madd_y_cy(9)
    );
  PC_Adder_Branch_Madd_y_xor_9_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(8),
      LI => PC_Adder_Branch_Madd_y_lut(9),
      O => PC_Adder_Branch_Out(9)
    );
  PC_Adder_Branch_Madd_y_cy_10_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(9),
      DI => PC_Adder_Out(10),
      S => PC_Adder_Branch_Madd_y_lut(10),
      O => PC_Adder_Branch_Madd_y_cy(10)
    );
  PC_Adder_Branch_Madd_y_xor_10_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(9),
      LI => PC_Adder_Branch_Madd_y_lut(10),
      O => PC_Adder_Branch_Out(10)
    );
  PC_Adder_Branch_Madd_y_cy_11_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(10),
      DI => PC_Adder_Out(11),
      S => PC_Adder_Branch_Madd_y_lut(11),
      O => PC_Adder_Branch_Madd_y_cy(11)
    );
  PC_Adder_Branch_Madd_y_xor_11_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(10),
      LI => PC_Adder_Branch_Madd_y_lut(11),
      O => PC_Adder_Branch_Out(11)
    );
  PC_Adder_Branch_Madd_y_cy_12_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(11),
      DI => PC_Adder_Out(12),
      S => PC_Adder_Branch_Madd_y_lut(12),
      O => PC_Adder_Branch_Madd_y_cy(12)
    );
  PC_Adder_Branch_Madd_y_xor_12_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(11),
      LI => PC_Adder_Branch_Madd_y_lut(12),
      O => PC_Adder_Branch_Out(12)
    );
  PC_Adder_Branch_Madd_y_cy_13_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(12),
      DI => PC_Adder_Out(13),
      S => PC_Adder_Branch_Madd_y_lut(13),
      O => PC_Adder_Branch_Madd_y_cy(13)
    );
  PC_Adder_Branch_Madd_y_xor_13_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(12),
      LI => PC_Adder_Branch_Madd_y_lut(13),
      O => PC_Adder_Branch_Out(13)
    );
  PC_Adder_Branch_Madd_y_cy_14_Q : MUXCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(13),
      DI => PC_Adder_Out(14),
      S => PC_Adder_Branch_Madd_y_lut(14),
      O => PC_Adder_Branch_Madd_y_cy(14)
    );
  PC_Adder_Branch_Madd_y_xor_14_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(13),
      LI => PC_Adder_Branch_Madd_y_lut(14),
      O => PC_Adder_Branch_Out(14)
    );
  PC_Adder_Branch_Madd_y_xor_15_Q : XORCY
    port map (
      CI => PC_Adder_Branch_Madd_y_cy(14),
      LI => PC_Adder_Branch_Madd_y_lut(15),
      O => PC_Adder_Branch_Out(15)
    );
  pro_c_q_15 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(15),
      Q => pro_c_q(15)
    );
  pro_c_q_14 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(14),
      Q => pro_c_q(14)
    );
  pro_c_q_13 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(13),
      Q => pro_c_q(13)
    );
  pro_c_q_12 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(12),
      Q => pro_c_q(12)
    );
  pro_c_q_11 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(11),
      Q => pro_c_q(11)
    );
  pro_c_q_10 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(10),
      Q => pro_c_q(10)
    );
  pro_c_q_9 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(9),
      Q => pro_c_q(9)
    );
  pro_c_q_8 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(8),
      Q => pro_c_q(8)
    );
  pro_c_q_7 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(7),
      Q => pro_c_q(7)
    );
  pro_c_q_6 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(6),
      Q => pro_c_q(6)
    );
  pro_c_q_5 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(5),
      Q => pro_c_q(5)
    );
  pro_c_q_4 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(4),
      Q => pro_c_q(4)
    );
  pro_c_q_3 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(3),
      Q => pro_c_q(3)
    );
  pro_c_q_2 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(2),
      Q => pro_c_q(2)
    );
  pro_c_q_1 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(1),
      Q => pro_c_q(1)
    );
  pro_c_q_0 : FDC
    port map (
      C => clk_BUFGP_16,
      CLR => reset_IBUF_17,
      D => pcin(0),
      Q => pro_c_q(0)
    );
  latch_latchab_1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latchA,
      D => data_out(7),
      Q => latch_latchab_1(7)
    );
  latch_latchab_1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latchA,
      D => data_out(6),
      Q => latch_latchab_1(6)
    );
  latch_latchab_1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latchA,
      D => data_out(5),
      Q => latch_latchab_1(5)
    );
  latch_latchab_1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latchA,
      D => data_out(4),
      Q => latch_latchab_1(4)
    );
  latch_latchab_1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latchA,
      D => data_out(3),
      Q => latch_latchab_1(3)
    );
  latch_latchab_1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latchA,
      D => data_out(2),
      Q => latch_latchab_1(2)
    );
  latch_latchab_1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latchA,
      D => data_out(1),
      Q => latch_latchab_1(1)
    );
  latch_latchab_1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latchA,
      D => data_out(0),
      Q => latch_latchab_1(0)
    );
  latch_latchab_0_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latch_n0018_inv,
      D => data_out(15),
      Q => latch_latchab_0(7)
    );
  latch_latchab_0_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latch_n0018_inv,
      D => data_out(14),
      Q => latch_latchab_0(6)
    );
  latch_latchab_0_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latch_n0018_inv,
      D => data_out(13),
      Q => latch_latchab_0(5)
    );
  latch_latchab_0_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latch_n0018_inv,
      D => data_out(12),
      Q => latch_latchab_0(4)
    );
  latch_latchab_0_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latch_n0018_inv,
      D => data_out(11),
      Q => latch_latchab_0(3)
    );
  latch_latchab_0_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latch_n0018_inv,
      D => data_out(10),
      Q => latch_latchab_0(2)
    );
  latch_latchab_0_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latch_n0018_inv,
      D => data_out(9),
      Q => latch_latchab_0(1)
    );
  latch_latchab_0_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      CE => latch_n0018_inv,
      D => data_out(8),
      Q => latch_latchab_0(0)
    );
  Alu1_Mmux_resultX1_rs_xor_15_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(14),
      LI => Alu1_Mmux_resultX1_rs_lut(15),
      O => Alu1_Mmux_resultX1_split(15)
    );
  Alu1_Mmux_resultX1_rs_xor_14_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(13),
      LI => Alu1_Mmux_resultX1_rs_lut(14),
      O => Alu1_Mmux_resultX1_split(14)
    );
  Alu1_Mmux_resultX1_rs_cy_14_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(13),
      DI => ReadData1(14),
      S => Alu1_Mmux_resultX1_rs_lut(14),
      O => Alu1_Mmux_resultX1_rs_cy(14)
    );
  Alu1_Mmux_resultX1_rs_xor_13_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(12),
      LI => Alu1_Mmux_resultX1_rs_lut(13),
      O => Alu1_Mmux_resultX1_split(13)
    );
  Alu1_Mmux_resultX1_rs_cy_13_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(12),
      DI => ReadData1(13),
      S => Alu1_Mmux_resultX1_rs_lut(13),
      O => Alu1_Mmux_resultX1_rs_cy(13)
    );
  Alu1_Mmux_resultX1_rs_xor_12_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(11),
      LI => Alu1_Mmux_resultX1_rs_lut(12),
      O => Alu1_Mmux_resultX1_split(12)
    );
  Alu1_Mmux_resultX1_rs_cy_12_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(11),
      DI => ReadData1(12),
      S => Alu1_Mmux_resultX1_rs_lut(12),
      O => Alu1_Mmux_resultX1_rs_cy(12)
    );
  Alu1_Mmux_resultX1_rs_xor_11_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(10),
      LI => Alu1_Mmux_resultX1_rs_lut(11),
      O => Alu1_Mmux_resultX1_split(11)
    );
  Alu1_Mmux_resultX1_rs_cy_11_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(10),
      DI => ReadData1(11),
      S => Alu1_Mmux_resultX1_rs_lut(11),
      O => Alu1_Mmux_resultX1_rs_cy(11)
    );
  Alu1_Mmux_resultX1_rs_xor_10_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(9),
      LI => Alu1_Mmux_resultX1_rs_lut(10),
      O => Alu1_Mmux_resultX1_split(10)
    );
  Alu1_Mmux_resultX1_rs_cy_10_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(9),
      DI => ReadData1(10),
      S => Alu1_Mmux_resultX1_rs_lut(10),
      O => Alu1_Mmux_resultX1_rs_cy(10)
    );
  Alu1_Mmux_resultX1_rs_xor_9_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(8),
      LI => Alu1_Mmux_resultX1_rs_lut(9),
      O => Alu1_Mmux_resultX1_split(9)
    );
  Alu1_Mmux_resultX1_rs_cy_9_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(8),
      DI => ReadData1(9),
      S => Alu1_Mmux_resultX1_rs_lut(9),
      O => Alu1_Mmux_resultX1_rs_cy(9)
    );
  Alu1_Mmux_resultX1_rs_xor_8_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(7),
      LI => Alu1_Mmux_resultX1_rs_lut(8),
      O => Alu1_Mmux_resultX1_split(8)
    );
  Alu1_Mmux_resultX1_rs_cy_8_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(7),
      DI => ReadData1(8),
      S => Alu1_Mmux_resultX1_rs_lut(8),
      O => Alu1_Mmux_resultX1_rs_cy(8)
    );
  Alu1_Mmux_resultX1_rs_xor_7_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(6),
      LI => Alu1_Mmux_resultX1_rs_lut(7),
      O => Alu1_Mmux_resultX1_split(7)
    );
  Alu1_Mmux_resultX1_rs_cy_7_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(6),
      DI => ReadData1(7),
      S => Alu1_Mmux_resultX1_rs_lut(7),
      O => Alu1_Mmux_resultX1_rs_cy(7)
    );
  Alu1_Mmux_resultX1_rs_xor_6_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(5),
      LI => Alu1_Mmux_resultX1_rs_lut(6),
      O => Alu1_Mmux_resultX1_split(6)
    );
  Alu1_Mmux_resultX1_rs_cy_6_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(5),
      DI => ReadData1(6),
      S => Alu1_Mmux_resultX1_rs_lut(6),
      O => Alu1_Mmux_resultX1_rs_cy(6)
    );
  Alu1_Mmux_resultX1_rs_xor_5_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(4),
      LI => Alu1_Mmux_resultX1_rs_lut(5),
      O => Alu1_Mmux_resultX1_split(5)
    );
  Alu1_Mmux_resultX1_rs_cy_5_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(4),
      DI => ReadData1(5),
      S => Alu1_Mmux_resultX1_rs_lut(5),
      O => Alu1_Mmux_resultX1_rs_cy(5)
    );
  Alu1_Mmux_resultX1_rs_xor_4_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(3),
      LI => Alu1_Mmux_resultX1_rs_lut(4),
      O => Alu1_Mmux_resultX1_split(4)
    );
  Alu1_Mmux_resultX1_rs_cy_4_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(3),
      DI => ReadData1(4),
      S => Alu1_Mmux_resultX1_rs_lut(4),
      O => Alu1_Mmux_resultX1_rs_cy(4)
    );
  Alu1_Mmux_resultX1_rs_xor_3_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(2),
      LI => Alu1_Mmux_resultX1_rs_lut(3),
      O => Alu1_Mmux_resultX1_split(3)
    );
  Alu1_Mmux_resultX1_rs_cy_3_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(2),
      DI => ReadData1(3),
      S => Alu1_Mmux_resultX1_rs_lut(3),
      O => Alu1_Mmux_resultX1_rs_cy(3)
    );
  Alu1_Mmux_resultX1_rs_xor_2_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(1),
      LI => Alu1_Mmux_resultX1_rs_lut(2),
      O => Alu1_Mmux_resultX1_split(2)
    );
  Alu1_Mmux_resultX1_rs_cy_2_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(1),
      DI => ReadData1(2),
      S => Alu1_Mmux_resultX1_rs_lut(2),
      O => Alu1_Mmux_resultX1_rs_cy(2)
    );
  Alu1_Mmux_resultX1_rs_xor_1_Q : XORCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(0),
      LI => Alu1_Mmux_resultX1_rs_lut(1),
      O => Alu1_Mmux_resultX1_split(1)
    );
  Alu1_Mmux_resultX1_rs_cy_1_Q : MUXCY
    port map (
      CI => Alu1_Mmux_resultX1_rs_cy(0),
      DI => ReadData1(1),
      S => Alu1_Mmux_resultX1_rs_lut(1),
      O => Alu1_Mmux_resultX1_rs_cy(1)
    );
  Alu1_Mmux_resultX1_rs_xor_0_Q : XORCY
    port map (
      CI => Alu_Controller1_Mmux_ALU_Control131_498,
      LI => Alu1_Mmux_resultX1_rs_lut(0),
      O => Alu1_Mmux_resultX1_split(0)
    );
  Alu1_Mmux_resultX1_rs_cy_0_Q : MUXCY
    port map (
      CI => Alu_Controller1_Mmux_ALU_Control131_498,
      DI => ReadData1(0),
      S => Alu1_Mmux_resultX1_rs_lut(0),
      O => Alu1_Mmux_resultX1_rs_cy(0)
    );
  ControlUnit1_Mram_n004881 : LUT4
    generic map(
      INIT => X"03A0"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_13_Q,
      O => ALUOP(1)
    );
  Mux_DataIn_Mmux_y171 : LUT4
    generic map(
      INIT => X"FFF9"
    )
    port map (
      I0 => instr_12_Q,
      I1 => instr_13_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      O => Mux_DataIn_Mmux_y17_295
    );
  ControlUnit1_Mram_n0048711 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_13_Q,
      O => ControlUnit1_Mram_n00481
    );
  ControlUnit1_Mram_regwrite11 : LUT3
    generic map(
      INIT => X"2B"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_13_Q,
      O => ControlUnit1_Mram_regwrite
    );
  Mux4_1_WriteReg_Mmux_y31 : LUT5
    generic map(
      INIT => X"F7B3E6A2"
    )
    port map (
      I0 => ControlUnit1_Mram_n00481,
      I1 => ControlUnit1_Mram_n0048,
      I2 => instr_11_Q,
      I3 => instr_0_Q,
      I4 => instr_8_Q,
      O => WriteReg(2)
    );
  Mux4_1_WriteReg_Mmux_y21 : LUT5
    generic map(
      INIT => X"F7B3E6A2"
    )
    port map (
      I0 => ControlUnit1_Mram_n00481,
      I1 => ControlUnit1_Mram_n0048,
      I2 => instr_10_Q,
      I3 => instr_0_Q,
      I4 => instr_0_Q,
      O => WriteReg(1)
    );
  Mux4_1_WriteReg_Mmux_y11 : LUT5
    generic map(
      INIT => X"F7B3E6A2"
    )
    port map (
      I0 => ControlUnit1_Mram_n00481,
      I1 => ControlUnit1_Mram_n0048,
      I2 => instr_9_Q,
      I3 => instr_1_Q,
      I4 => instr_1_Q,
      O => WriteReg(0)
    );
  ControlUnit1_Mram_n00484211 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => instr_12_Q,
      I1 => instr_13_Q,
      I2 => instr_14_Q,
      O => ControlUnit1_Mram_n004841_299
    );
  ControlUnit1_Mram_n004811 : LUT4
    generic map(
      INIT => X"4101"
    )
    port map (
      I0 => instr_13_Q,
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      O => ControlUnit1_Mram_n0048
    );
  ControlUnit1_Mram_n004841 : LUT4
    generic map(
      INIT => X"0280"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_12_Q,
      I2 => instr_13_Q,
      I3 => instr_14_Q,
      O => ControlUnit1_Mram_n00484
    );
  MUX2_1_ALU_Mmux_y171 : LUT4
    generic map(
      INIT => X"44C6"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_13_Q,
      O => MUX2_1_ALU_Mmux_y17
    );
  ControlUnit1_Mram_n004871 : LUT4
    generic map(
      INIT => X"4486"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_13_Q,
      O => ALUOP(0)
    );
  ControlUnit1_Mram_n0048101 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_13_Q,
      I2 => instr_12_Q,
      I3 => instr_14_Q,
      O => ControlUnit1_Mram_n004810
    );
  ControlUnit1_Mram_n0048151 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => instr_13_Q,
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      O => ControlUnit1_Mram_n004815
    );
  ControlUnit1_Mram_n004891 : LUT4
    generic map(
      INIT => X"03A0"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_13_Q,
      O => ALUOP(2)
    );
  ControlUnit1_Mram_n004851 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_13_Q,
      I3 => instr_12_Q,
      O => ControlUnit1_Mram_n00485
    );
  ControlUnit1_Mram_n0048131 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_13_Q,
      I3 => instr_12_Q,
      O => ControlUnit1_Mram_n004813
    );
  Demux_DataOut_Mmux_demux_out151 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(13),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(13),
      I5 => PC_Adder_Out(13),
      O => data_out(13)
    );
  Demux_DataOut_Mmux_demux_out191 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(2),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(2),
      I5 => PC_Adder_Out(2),
      O => data_out(2)
    );
  Demux_DataOut_Mmux_demux_out181 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(1),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(1),
      I5 => PC_Adder_Out(1),
      O => data_out(1)
    );
  Demux_DataOut_Mmux_demux_out1101 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(3),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(3),
      I5 => PC_Adder_Out(3),
      O => data_out(3)
    );
  Demux_DataOut_Mmux_demux_out117 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(0),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(0),
      I5 => PC_Adder_Out(0),
      O => data_out(0)
    );
  Demux_DataOut_Mmux_demux_out1111 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(4),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(4),
      I5 => PC_Adder_Out(4),
      O => data_out(4)
    );
  Demux_DataOut_Mmux_demux_out1121 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(5),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(5),
      I5 => PC_Adder_Out(5),
      O => data_out(5)
    );
  Demux_DataOut_Mmux_demux_out1131 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(6),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(6),
      I5 => PC_Adder_Out(6),
      O => data_out(6)
    );
  Demux_DataOut_Mmux_demux_out1141 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(7),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(7),
      I5 => PC_Adder_Out(7),
      O => data_out(7)
    );
  Demux_DataOut_Mmux_demux_out1151 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(8),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(8),
      I5 => PC_Adder_Out(8),
      O => data_out(8)
    );
  Demux_DataOut_Mmux_demux_out1161 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(9),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(9),
      I5 => PC_Adder_Out(9),
      O => data_out(9)
    );
  Demux_DataOut_Mmux_demux_out121 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(10),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(10),
      I5 => PC_Adder_Out(10),
      O => data_out(10)
    );
  Demux_DataOut_Mmux_demux_out131 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(11),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(11),
      I5 => PC_Adder_Out(11),
      O => data_out(11)
    );
  Demux_DataOut_Mmux_demux_out141 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(12),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(12),
      I5 => PC_Adder_Out(12),
      O => data_out(12)
    );
  Demux_DataOut_Mmux_demux_out161 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(14),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(14),
      I5 => PC_Adder_Out(14),
      O => data_out(14)
    );
  Demux_DataOut_Mmux_demux_out171 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => ControlUnit1_Mram_n004815,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(15),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(15),
      I5 => PC_Adder_Out(15),
      O => data_out(15)
    );
  Alu_Controller1_Mmux_ALU_Control21 : LUT6
    generic map(
      INIT => X"FF00FF00FF00FF4C"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_1_Q,
      I2 => instr_0_Q,
      I3 => ControlUnit1_Mram_n004881_504,
      I4 => ControlUnit1_Mram_n004871_506,
      I5 => ALUOP(2),
      O => ALU_Control(1)
    );
  Alu_Controller1_Mmux_ALU_Control41 : LUT6
    generic map(
      INIT => X"FFFFFF0000000080"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_1_Q,
      I2 => instr_0_Q,
      I3 => ControlUnit1_Mram_n004881_504,
      I4 => ControlUnit1_Mram_n004871_506,
      I5 => ALUOP(2),
      O => ALU_Control(3)
    );
  Alu_Controller1_Mmux_ALU_Control31 : LUT6
    generic map(
      INIT => X"FF000000FF00004C"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_1_Q,
      I2 => instr_0_Q,
      I3 => ALUOP(2),
      I4 => ALUOP(1),
      I5 => ALUOP(0),
      O => ALU_Control(2)
    );
  MUX2_1_PC_Mmux_y28_SW0 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => instr_9_Q,
      I2 => ReadData1(9),
      I3 => ControlUnit1_Mram_n004812,
      I4 => PC_Adder_Branch_Out(9),
      I5 => MUX2_1_PC_Mmux_y102_297,
      O => N4
    );
  MUX2_1_PC_Mmux_y28 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y110,
      I2 => PC_Adder_Out(9),
      I3 => N4,
      I4 => pro_c_q(9),
      O => pcin(9)
    );
  MUX2_1_PC_Mmux_y26_SW0 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => instr_8_Q,
      I2 => ReadData1(8),
      I3 => ControlUnit1_Mram_n004812,
      I4 => PC_Adder_Branch_Out(8),
      I5 => MUX2_1_PC_Mmux_y102_297,
      O => N6
    );
  MUX2_1_PC_Mmux_y26 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y110,
      I2 => PC_Adder_Out(8),
      I3 => N6,
      I4 => pro_c_q(8),
      O => pcin(8)
    );
  MUX2_1_PC_Mmux_y241 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => instr_0_Q,
      I2 => ControlUnit1_Mram_n004812,
      I3 => ReadData1(7),
      I4 => MUX2_1_PC_Mmux_y102_297,
      I5 => PC_Adder_Branch_Out(7),
      O => MUX2_1_PC_Mmux_y24
    );
  MUX2_1_PC_Mmux_y242 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y110,
      I2 => PC_Adder_Out(7),
      I3 => MUX2_1_PC_Mmux_y24,
      I4 => pro_c_q(7),
      O => pcin(7)
    );
  MUX2_1_PC_Mmux_y221 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => instr_1_Q,
      I2 => ControlUnit1_Mram_n004812,
      I3 => ReadData1(6),
      I4 => MUX2_1_PC_Mmux_y102_297,
      I5 => PC_Adder_Branch_Out(6),
      O => MUX2_1_PC_Mmux_y22
    );
  MUX2_1_PC_Mmux_y222 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y110,
      I2 => PC_Adder_Out(6),
      I3 => MUX2_1_PC_Mmux_y22,
      I4 => pro_c_q(6),
      O => pcin(6)
    );
  MUX2_1_PC_Mmux_y20_SW0 : LUT6
    generic map(
      INIT => X"011105552333AFFF"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => PC_Adder_Branch_Out(5),
      I2 => ControlUnit1_Mram_n004812,
      I3 => ReadData1(5),
      I4 => MUX2_1_PC_Mmux_y102_297,
      I5 => instr_0_Q,
      O => N8
    );
  MUX2_1_PC_Mmux_y20 : LUT5
    generic map(
      INIT => X"FBBB5111"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => N8,
      I2 => PC_Adder_Out(5),
      I3 => MUX2_1_PC_Mmux_y110,
      I4 => pro_c_q(5),
      O => pcin(5)
    );
  MUX2_1_PC_Mmux_y18_SW0 : LUT6
    generic map(
      INIT => X"011105552333AFFF"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => PC_Adder_Branch_Out(4),
      I2 => ControlUnit1_Mram_n004812,
      I3 => ReadData1(4),
      I4 => MUX2_1_PC_Mmux_y102_297,
      I5 => instr_0_Q,
      O => N10
    );
  MUX2_1_PC_Mmux_y18 : LUT5
    generic map(
      INIT => X"FBBB5111"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => N10,
      I2 => PC_Adder_Out(4),
      I3 => MUX2_1_PC_Mmux_y110,
      I4 => pro_c_q(4),
      O => pcin(4)
    );
  MUX2_1_PC_Mmux_y161 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => instr_1_Q,
      I2 => ControlUnit1_Mram_n004812,
      I3 => ReadData1(3),
      I4 => MUX2_1_PC_Mmux_y102_297,
      I5 => PC_Adder_Branch_Out(3),
      O => MUX2_1_PC_Mmux_y16
    );
  MUX2_1_PC_Mmux_y162 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y110,
      I2 => PC_Adder_Out(3),
      I3 => MUX2_1_PC_Mmux_y16,
      I4 => pro_c_q(3),
      O => pcin(3)
    );
  MUX2_1_PC_Mmux_y14_SW0 : LUT6
    generic map(
      INIT => X"011105552333AFFF"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => PC_Adder_Branch_Out(2),
      I2 => ControlUnit1_Mram_n004812,
      I3 => ReadData1(2),
      I4 => MUX2_1_PC_Mmux_y102_297,
      I5 => instr_1_Q,
      O => N12
    );
  MUX2_1_PC_Mmux_y14 : LUT5
    generic map(
      INIT => X"FBBB5111"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => N12,
      I2 => PC_Adder_Out(2),
      I3 => MUX2_1_PC_Mmux_y110,
      I4 => pro_c_q(2),
      O => pcin(2)
    );
  MUX2_1_PC_Mmux_y12_SW0 : LUT6
    generic map(
      INIT => X"011105552333AFFF"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => PC_Adder_Branch_Out(1),
      I2 => ControlUnit1_Mram_n004812,
      I3 => ReadData1(1),
      I4 => MUX2_1_PC_Mmux_y102_297,
      I5 => instr_1_Q,
      O => N14
    );
  MUX2_1_PC_Mmux_y12 : LUT5
    generic map(
      INIT => X"FBBB5111"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => N14,
      I2 => PC_Adder_Out(1),
      I3 => MUX2_1_PC_Mmux_y110,
      I4 => pro_c_q(1),
      O => pcin(1)
    );
  MUX2_1_PC_Mmux_y6_SW0 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => instr_11_Q,
      I2 => ReadData1(11),
      I3 => ControlUnit1_Mram_n004812,
      I4 => PC_Adder_Branch_Out(11),
      I5 => MUX2_1_PC_Mmux_y102_297,
      O => N16
    );
  MUX2_1_PC_Mmux_y6 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y110,
      I2 => PC_Adder_Out(11),
      I3 => N16,
      I4 => pro_c_q(11),
      O => pcin(11)
    );
  MUX2_1_PC_Mmux_y4_SW0 : LUT6
    generic map(
      INIT => X"FFFFD888D888D888"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => instr_10_Q,
      I2 => ReadData1(10),
      I3 => ControlUnit1_Mram_n004812,
      I4 => PC_Adder_Branch_Out(10),
      I5 => MUX2_1_PC_Mmux_y102_297,
      O => N18
    );
  MUX2_1_PC_Mmux_y4 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y110,
      I2 => PC_Adder_Out(10),
      I3 => N18,
      I4 => pro_c_q(10),
      O => pcin(10)
    );
  MUX2_1_PC_Mmux_y2_SW0 : LUT6
    generic map(
      INIT => X"011105552333AFFF"
    )
    port map (
      I0 => ControlUnit1_Mram_n00484,
      I1 => PC_Adder_Branch_Out(0),
      I2 => ControlUnit1_Mram_n004812,
      I3 => ReadData1(0),
      I4 => MUX2_1_PC_Mmux_y102_297,
      I5 => instr_0_Q,
      O => N20
    );
  MUX2_1_PC_Mmux_y2 : LUT5
    generic map(
      INIT => X"FBBB5111"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => N20,
      I2 => PC_Adder_Out(0),
      I3 => MUX2_1_PC_Mmux_y110,
      I4 => pro_c_q(0),
      O => pcin(0)
    );
  Mux_DataIn_Mmux_y51 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(13),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(13),
      I5 => PC_Adder_Out(13),
      O => Mux_DataIn_Mmux_y5
    );
  Mux_DataIn_Mmux_y91 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(2),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(2),
      I5 => PC_Adder_Out(2),
      O => Mux_DataIn_Mmux_y9
    );
  Mux_DataIn_Mmux_y81 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(1),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(1),
      I5 => PC_Adder_Out(1),
      O => Mux_DataIn_Mmux_y8
    );
  Mux_DataIn_Mmux_y101 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(3),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(3),
      I5 => PC_Adder_Out(3),
      O => Mux_DataIn_Mmux_y10
    );
  Mux_DataIn_Mmux_y17 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(0),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(0),
      I5 => PC_Adder_Out(0),
      O => Mux_DataIn_Mmux_y1
    );
  Mux_DataIn_Mmux_y111 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(4),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(4),
      I5 => PC_Adder_Out(4),
      O => Mux_DataIn_Mmux_y11
    );
  Mux_DataIn_Mmux_y121 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(5),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(5),
      I5 => PC_Adder_Out(5),
      O => Mux_DataIn_Mmux_y12
    );
  Mux_DataIn_Mmux_y131 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(6),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(6),
      I5 => PC_Adder_Out(6),
      O => Mux_DataIn_Mmux_y13
    );
  Mux_DataIn_Mmux_y141 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(7),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(7),
      I5 => PC_Adder_Out(7),
      O => Mux_DataIn_Mmux_y14
    );
  Mux_DataIn_Mmux_y151 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(8),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(8),
      I5 => PC_Adder_Out(8),
      O => Mux_DataIn_Mmux_y15
    );
  Mux_DataIn_Mmux_y161 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(9),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(9),
      I5 => PC_Adder_Out(9),
      O => Mux_DataIn_Mmux_y16
    );
  Mux_DataIn_Mmux_y21 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(10),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(10),
      I5 => PC_Adder_Out(10),
      O => Mux_DataIn_Mmux_y2
    );
  Mux_DataIn_Mmux_y31 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(11),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(11),
      I5 => PC_Adder_Out(11),
      O => Mux_DataIn_Mmux_y3
    );
  Mux_DataIn_Mmux_y41 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(12),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(12),
      I5 => PC_Adder_Out(12),
      O => Mux_DataIn_Mmux_y4
    );
  Mux_DataIn_Mmux_y61 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(14),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(14),
      I5 => PC_Adder_Out(14),
      O => Mux_DataIn_Mmux_y6
    );
  Mux_DataIn_Mmux_y71 : LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
    port map (
      I0 => Mux_DataIn_Mmux_y17_295,
      I1 => ControlUnit1_Mram_n00486,
      I2 => ALU_Result(15),
      I3 => ControlUnit1_Mram_n00485,
      I4 => ReadData_dmem(15),
      I5 => PC_Adder_Out(15),
      O => Mux_DataIn_Mmux_y7
    );
  MUX2_1_PC_Mmux_y102 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y101_296,
      I2 => PC_Adder_Out(15),
      I3 => MUX2_1_PC_Mmux_y10,
      I4 => pro_c_q(15),
      O => pcin(15)
    );
  MUX2_1_PC_Mmux_y92 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y101_296,
      I2 => PC_Adder_Out(14),
      I3 => MUX2_1_PC_Mmux_y9,
      I4 => pro_c_q(14),
      O => pcin(14)
    );
  MUX2_1_PC_Mmux_y82 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y101_296,
      I2 => PC_Adder_Out(13),
      I3 => MUX2_1_PC_Mmux_y8,
      I4 => pro_c_q(13),
      O => pcin(13)
    );
  MUX2_1_PC_Mmux_y72 : LUT5
    generic map(
      INIT => X"FFEA5540"
    )
    port map (
      I0 => ControlUnit1_Mram_n004813,
      I1 => MUX2_1_PC_Mmux_y101_296,
      I2 => PC_Adder_Out(12),
      I3 => MUX2_1_PC_Mmux_y7,
      I4 => pro_c_q(12),
      O => pcin(12)
    );
  Alu1_Mmux_resultX1181 : LUT6
    generic map(
      INIT => X"5545454554444444"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => ALU_Control(3),
      I2 => ALU_Control(1),
      I3 => ReadData1(12),
      I4 => MUX2_1_ALU_Out(12),
      I5 => Alu1_Mmux_resultX1_split(12),
      O => Alu1_Mmux_resultX118
    );
  Alu1_Mmux_resultX1182 : LUT6
    generic map(
      INIT => X"FF60CEE8FF604660"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => ALU_Control(1),
      I2 => ReadData1(12),
      I3 => MUX2_1_ALU_Out(12),
      I4 => ALU_Control(3),
      I5 => ReadData1(13),
      O => Alu1_Mmux_resultX1181_383
    );
  Alu1_Mmux_resultX1183 : LUT6
    generic map(
      INIT => X"ECCC2000ECCC2A0A"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => ALU_Control(3),
      I2 => ALU_Control(1),
      I3 => ReadData1(11),
      I4 => ReadData1(12),
      I5 => MUX2_1_ALU_Out(12),
      O => Alu1_Mmux_resultX1182_384
    );
  Alu1_Mmux_resultX1184 : LUT6
    generic map(
      INIT => X"FFFFFFFFE2E2FFE2"
    )
    port map (
      I0 => Alu1_Mmux_resultX1182_384,
      I1 => ALU_Control(0),
      I2 => Alu1_Mmux_resultX1181_383,
      I3 => ALU_Control(3),
      I4 => ALU_Control(1),
      I5 => Alu1_Mmux_resultX118,
      O => ALU_Result(12)
    );
  Alu1_Mmux_resultX11304 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => ALU_Control(1),
      I1 => MUX2_1_ALU_Out(8),
      I2 => ReadData1(8),
      I3 => ALU_Control(3),
      O => Alu1_Mmux_resultX11303_386
    );
  Alu1_Mmux_resultX11305 : LUT5
    generic map(
      INIT => X"FFFF4454"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => Alu1_Mmux_resultX11303_386,
      I2 => Alu1_Mmux_resultX1_split(8),
      I3 => ALU_Control(1),
      I4 => Alu1_Mmux_resultX11302,
      O => ALU_Result(8)
    );
  Alu1_Mmux_resultX11221 : LUT6
    generic map(
      INIT => X"F0FAFAF0CC5AFA00"
    )
    port map (
      I0 => ReadData1(4),
      I1 => ReadData1(5),
      I2 => MUX2_1_ALU_Out(4),
      I3 => Alu_Controller1_Mmux_ALU_Control21_497,
      I4 => Alu_Controller1_Mmux_ALU_Control31_502,
      I5 => ALU_Control(3),
      O => Alu1_Mmux_resultX1122
    );
  Alu1_Mmux_resultX1161 : LUT6
    generic map(
      INIT => X"AEEB8CC926630441"
    )
    port map (
      I0 => ALU_Control(1),
      I1 => ALU_Control(0),
      I2 => ReadData1(11),
      I3 => MUX2_1_ALU_Out(11),
      I4 => ReadData1(10),
      I5 => ReadData1(12),
      O => Alu1_Mmux_resultX116
    );
  Alu1_Mmux_resultX1162 : LUT6
    generic map(
      INIT => X"FBBBEAAA51114000"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => ALU_Control(1),
      I2 => MUX2_1_ALU_Out(11),
      I3 => ReadData1(11),
      I4 => Alu1_Mmux_resultX1_split(11),
      I5 => Alu1_Mmux_resultX116,
      O => Alu1_Mmux_resultX1161_389
    );
  Alu1_Mmux_resultX1163 : LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
    port map (
      I0 => MUX2_1_ALU_Out(11),
      I1 => Alu1_Mmux_resultX11105,
      I2 => ReadData1(11),
      I3 => Alu1_Mmux_resultX111081,
      I4 => Alu1_Mmux_resultX1161_389,
      I5 => ALU_Control(3),
      O => ALU_Result(11)
    );
  Alu1_Mmux_resultX1141 : LUT6
    generic map(
      INIT => X"AEEB8CC926630441"
    )
    port map (
      I0 => ALU_Control(1),
      I1 => ALU_Control(0),
      I2 => ReadData1(10),
      I3 => MUX2_1_ALU_Out(10),
      I4 => ReadData1(9),
      I5 => ReadData1(11),
      O => Alu1_Mmux_resultX114
    );
  Alu1_Mmux_resultX1142 : LUT6
    generic map(
      INIT => X"FBBBEAAA51114000"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => ALU_Control(1),
      I2 => MUX2_1_ALU_Out(10),
      I3 => ReadData1(10),
      I4 => Alu1_Mmux_resultX1_split(10),
      I5 => Alu1_Mmux_resultX114,
      O => Alu1_Mmux_resultX1141_391
    );
  Alu1_Mmux_resultX1143 : LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
    port map (
      I0 => MUX2_1_ALU_Out(10),
      I1 => Alu1_Mmux_resultX11105,
      I2 => ReadData1(10),
      I3 => Alu1_Mmux_resultX111081,
      I4 => Alu1_Mmux_resultX1141_391,
      I5 => ALU_Control(3),
      O => ALU_Result(10)
    );
  Alu1_Mmux_resultX11321 : LUT6
    generic map(
      INIT => X"AEEB8CC926630441"
    )
    port map (
      I0 => ALU_Control(1),
      I1 => ALU_Control(0),
      I2 => ReadData1(9),
      I3 => MUX2_1_ALU_Out(9),
      I4 => ReadData1(8),
      I5 => ReadData1(10),
      O => Alu1_Mmux_resultX1132
    );
  Alu1_Mmux_resultX11322 : LUT6
    generic map(
      INIT => X"FBBBEAAA51114000"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => ALU_Control(1),
      I2 => MUX2_1_ALU_Out(9),
      I3 => ReadData1(9),
      I4 => Alu1_Mmux_resultX1_split(9),
      I5 => Alu1_Mmux_resultX1132,
      O => Alu1_Mmux_resultX11321_393
    );
  Alu1_Mmux_resultX11323 : LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
    port map (
      I0 => MUX2_1_ALU_Out(9),
      I1 => Alu1_Mmux_resultX11105,
      I2 => ReadData1(9),
      I3 => Alu1_Mmux_resultX111081,
      I4 => Alu1_Mmux_resultX11321_393,
      I5 => ALU_Control(3),
      O => ALU_Result(9)
    );
  Alu1_Mmux_resultX11281 : LUT6
    generic map(
      INIT => X"AA0FAAF0CC00CC0F"
    )
    port map (
      I0 => ReadData1(8),
      I1 => ReadData1(6),
      I2 => ReadData1(7),
      I3 => Alu_Controller1_Mmux_ALU_Control21_497,
      I4 => MUX2_1_ALU_Out(7),
      I5 => Alu_Controller1_Mmux_ALU_Control131_498,
      O => Alu1_Mmux_resultX1128
    );
  Alu1_Mmux_resultX11261 : LUT6
    generic map(
      INIT => X"AAAAF0F033CC0033"
    )
    port map (
      I0 => ReadData1(7),
      I1 => ReadData1(6),
      I2 => ReadData1(5),
      I3 => MUX2_1_ALU_Out(6),
      I4 => ALU_Control(0),
      I5 => ALU_Control(1),
      O => Alu1_Mmux_resultX1126
    );
  Alu1_Mmux_resultX11241 : LUT6
    generic map(
      INIT => X"CCCC0FF0AAAA000F"
    )
    port map (
      I0 => ReadData1(4),
      I1 => ReadData1(6),
      I2 => ReadData1(5),
      I3 => MUX2_1_ALU_Out(5),
      I4 => Alu_Controller1_Mmux_ALU_Control21_497,
      I5 => ALU_Control(0),
      O => Alu1_Mmux_resultX1124
    );
  Alu1_Mmux_resultX11201 : LUT6
    generic map(
      INIT => X"AAAA0FF0CCCC000F"
    )
    port map (
      I0 => ReadData1(4),
      I1 => ReadData1(2),
      I2 => ReadData1(3),
      I3 => MUX2_1_ALU_Out(3),
      I4 => Alu_Controller1_Mmux_ALU_Control21_497,
      I5 => ALU_Control(0),
      O => Alu1_Mmux_resultX1120
    );
  Alu1_Mmux_resultX11181 : LUT6
    generic map(
      INIT => X"CCCC0FF0AAAA000F"
    )
    port map (
      I0 => ReadData1(1),
      I1 => ReadData1(3),
      I2 => ReadData1(2),
      I3 => MUX2_1_ALU_Out(2),
      I4 => Alu_Controller1_Mmux_ALU_Control21_497,
      I5 => ALU_Control(0),
      O => Alu1_Mmux_resultX1118
    );
  Alu1_Mmux_resultX11161 : LUT6
    generic map(
      INIT => X"F0F033CCAAAA0033"
    )
    port map (
      I0 => ReadData1(0),
      I1 => ReadData1(1),
      I2 => ReadData1(2),
      I3 => MUX2_1_ALU_Out(1),
      I4 => Alu_Controller1_Mmux_ALU_Control21_497,
      I5 => ALU_Control(0),
      O => Alu1_Mmux_resultX1116
    );
  Alu1_Mmux_resultX11123 : LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
    port map (
      I0 => MUX2_1_ALU_Out(14),
      I1 => Alu1_Mmux_resultX11105,
      I2 => ReadData1(14),
      I3 => Alu1_Mmux_resultX111081,
      I4 => Alu1_Mmux_resultX11121,
      I5 => ALU_Control(3),
      O => ALU_Result(14)
    );
  Alu1_Mmux_resultX11101 : LUT6
    generic map(
      INIT => X"AEEB8CC926630441"
    )
    port map (
      I0 => ALU_Control(1),
      I1 => ALU_Control(0),
      I2 => ReadData1(13),
      I3 => MUX2_1_ALU_Out(13),
      I4 => ReadData1(12),
      I5 => ReadData1(14),
      O => Alu1_Mmux_resultX1110
    );
  Alu1_Mmux_resultX11102 : LUT6
    generic map(
      INIT => X"FBBBEAAA51114000"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => ALU_Control(1),
      I2 => MUX2_1_ALU_Out(13),
      I3 => ReadData1(13),
      I4 => Alu1_Mmux_resultX1_split(13),
      I5 => Alu1_Mmux_resultX1110,
      O => Alu1_Mmux_resultX11101_402
    );
  Alu1_Mmux_resultX11103 : LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
    port map (
      I0 => MUX2_1_ALU_Out(13),
      I1 => Alu1_Mmux_resultX11105,
      I2 => ReadData1(13),
      I3 => Alu1_Mmux_resultX111081,
      I4 => Alu1_Mmux_resultX11101_402,
      I5 => ALU_Control(3),
      O => ALU_Result(13)
    );
  Alu1_Zero_15_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ALU_Result(5),
      I1 => ALU_Result(3),
      I2 => ALU_Result(6),
      I3 => ALU_Result(7),
      I4 => ALU_Result(9),
      I5 => ALU_Result(10),
      O => Alu1_Zero(15)
    );
  in_port_15_IBUF : IBUF
    port map (
      I => in_port(15),
      O => in_port_15_IBUF_0
    );
  in_port_14_IBUF : IBUF
    port map (
      I => in_port(14),
      O => in_port_14_IBUF_1
    );
  in_port_13_IBUF : IBUF
    port map (
      I => in_port(13),
      O => in_port_13_IBUF_2
    );
  in_port_12_IBUF : IBUF
    port map (
      I => in_port(12),
      O => in_port_12_IBUF_3
    );
  in_port_11_IBUF : IBUF
    port map (
      I => in_port(11),
      O => in_port_11_IBUF_4
    );
  in_port_10_IBUF : IBUF
    port map (
      I => in_port(10),
      O => in_port_10_IBUF_5
    );
  in_port_9_IBUF : IBUF
    port map (
      I => in_port(9),
      O => in_port_9_IBUF_6
    );
  in_port_8_IBUF : IBUF
    port map (
      I => in_port(8),
      O => in_port_8_IBUF_7
    );
  in_port_7_IBUF : IBUF
    port map (
      I => in_port(7),
      O => in_port_7_IBUF_8
    );
  in_port_6_IBUF : IBUF
    port map (
      I => in_port(6),
      O => in_port_6_IBUF_9
    );
  in_port_5_IBUF : IBUF
    port map (
      I => in_port(5),
      O => in_port_5_IBUF_10
    );
  in_port_4_IBUF : IBUF
    port map (
      I => in_port(4),
      O => in_port_4_IBUF_11
    );
  in_port_3_IBUF : IBUF
    port map (
      I => in_port(3),
      O => in_port_3_IBUF_12
    );
  in_port_2_IBUF : IBUF
    port map (
      I => in_port(2),
      O => in_port_2_IBUF_13
    );
  in_port_1_IBUF : IBUF
    port map (
      I => in_port(1),
      O => in_port_1_IBUF_14
    );
  in_port_0_IBUF : IBUF
    port map (
      I => in_port(0),
      O => in_port_0_IBUF_15
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_17
    );
  out_portA_7_OBUF : OBUF
    port map (
      I => latch_latchab_1(7),
      O => out_portA(7)
    );
  out_portA_6_OBUF : OBUF
    port map (
      I => latch_latchab_1(6),
      O => out_portA(6)
    );
  out_portA_5_OBUF : OBUF
    port map (
      I => latch_latchab_1(5),
      O => out_portA(5)
    );
  out_portA_4_OBUF : OBUF
    port map (
      I => latch_latchab_1(4),
      O => out_portA(4)
    );
  out_portA_3_OBUF : OBUF
    port map (
      I => latch_latchab_1(3),
      O => out_portA(3)
    );
  out_portA_2_OBUF : OBUF
    port map (
      I => latch_latchab_1(2),
      O => out_portA(2)
    );
  out_portA_1_OBUF : OBUF
    port map (
      I => latch_latchab_1(1),
      O => out_portA(1)
    );
  out_portA_0_OBUF : OBUF
    port map (
      I => latch_latchab_1(0),
      O => out_portA(0)
    );
  out_portB_7_OBUF : OBUF
    port map (
      I => latch_latchab_0(7),
      O => out_portB(7)
    );
  out_portB_6_OBUF : OBUF
    port map (
      I => latch_latchab_0(6),
      O => out_portB(6)
    );
  out_portB_5_OBUF : OBUF
    port map (
      I => latch_latchab_0(5),
      O => out_portB(5)
    );
  out_portB_4_OBUF : OBUF
    port map (
      I => latch_latchab_0(4),
      O => out_portB(4)
    );
  out_portB_3_OBUF : OBUF
    port map (
      I => latch_latchab_0(3),
      O => out_portB(3)
    );
  out_portB_2_OBUF : OBUF
    port map (
      I => latch_latchab_0(2),
      O => out_portB(2)
    );
  out_portB_1_OBUF : OBUF
    port map (
      I => latch_latchab_0(1),
      O => out_portB(1)
    );
  out_portB_0_OBUF : OBUF
    port map (
      I => latch_latchab_0(0),
      O => out_portB(0)
    );
  PC_Adder_Madd_y_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(1),
      O => PC_Adder_Madd_y_cy_1_rt_438
    );
  PC_Adder_Madd_y_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(2),
      O => PC_Adder_Madd_y_cy_2_rt_439
    );
  PC_Adder_Madd_y_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(3),
      O => PC_Adder_Madd_y_cy_3_rt_440
    );
  PC_Adder_Madd_y_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(4),
      O => PC_Adder_Madd_y_cy_4_rt_441
    );
  PC_Adder_Madd_y_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(5),
      O => PC_Adder_Madd_y_cy_5_rt_442
    );
  PC_Adder_Madd_y_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(6),
      O => PC_Adder_Madd_y_cy_6_rt_443
    );
  PC_Adder_Madd_y_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(7),
      O => PC_Adder_Madd_y_cy_7_rt_444
    );
  PC_Adder_Madd_y_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(8),
      O => PC_Adder_Madd_y_cy_8_rt_445
    );
  PC_Adder_Madd_y_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(9),
      O => PC_Adder_Madd_y_cy_9_rt_446
    );
  PC_Adder_Madd_y_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(10),
      O => PC_Adder_Madd_y_cy_10_rt_447
    );
  PC_Adder_Madd_y_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(11),
      O => PC_Adder_Madd_y_cy_11_rt_448
    );
  PC_Adder_Madd_y_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(12),
      O => PC_Adder_Madd_y_cy_12_rt_449
    );
  PC_Adder_Madd_y_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(13),
      O => PC_Adder_Madd_y_cy_13_rt_450
    );
  PC_Adder_Madd_y_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(14),
      O => PC_Adder_Madd_y_cy_14_rt_451
    );
  PC_Adder_Madd_y_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => pro_c_q(15),
      O => PC_Adder_Madd_y_xor_15_rt_452
    );
  Alu_Controller1_Mmux_ALU_Control131 : LUT6
    generic map(
      INIT => X"FFFF00000000FF70"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_1_Q,
      I2 => instr_0_Q,
      I3 => ControlUnit1_Mram_n004891_505,
      I4 => ALUOP(1),
      I5 => ALUOP(0),
      O => ALU_Control(0)
    );
  Alu1_Mmux_resultX1_rs_lut_6_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(6),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(6),
      I3 => SignExtend_Out_6_Q,
      I4 => Alu_Controller1_Mmux_ALU_Control131_498,
      O => Alu1_Mmux_resultX1_rs_lut(6)
    );
  Alu1_Mmux_resultX1_rs_lut_7_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(7),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(7),
      I3 => SignExtend_Out_7_Q,
      I4 => Alu_Controller1_Mmux_ALU_Control131_498,
      O => Alu1_Mmux_resultX1_rs_lut(7)
    );
  SignExtend_Mmux_data_out_6_12 : LUT6
    generic map(
      INIT => X"0C003000B0803C00"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_0_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => SignExtend_Out_6_Q
    );
  SignExtend_Mmux_data_out_7_11 : LUT6
    generic map(
      INIT => X"22004400C4806600"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_0_Q,
      I3 => instr_0_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => SignExtend_Out_7_Q
    );
  MUX2_1_ALU_Mmux_y18 : LUT6
    generic map(
      INIT => X"BA8ABA8AFA0ABE82"
    )
    port map (
      I0 => ReadData2(0),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_0_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => MUX2_1_ALU_Out(0)
    );
  MUX2_1_ALU_Mmux_y81 : LUT6
    generic map(
      INIT => X"ACAAACAACCAAACCA"
    )
    port map (
      I0 => ReadData2(1),
      I1 => instr_1_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => MUX2_1_ALU_Out(1)
    );
  MUX2_1_ALU_Mmux_y91 : LUT6
    generic map(
      INIT => X"ACAAACAACCAAACCA"
    )
    port map (
      I0 => ReadData2(2),
      I1 => instr_1_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => MUX2_1_ALU_Out(2)
    );
  MUX2_1_ALU_Mmux_y101 : LUT6
    generic map(
      INIT => X"ACAAACAACCAAACCA"
    )
    port map (
      I0 => ReadData2(3),
      I1 => instr_1_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => MUX2_1_ALU_Out(3)
    );
  MUX2_1_ALU_Mmux_y111 : LUT6
    generic map(
      INIT => X"BA8ABA8AFA0ABE82"
    )
    port map (
      I0 => ReadData2(4),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_0_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => MUX2_1_ALU_Out(4)
    );
  MUX2_1_ALU_Mmux_y121 : LUT6
    generic map(
      INIT => X"BA8ABA8AFA0ABE82"
    )
    port map (
      I0 => ReadData2(5),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_0_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => MUX2_1_ALU_Out(5)
    );
  Alu1_Mmux_resultX11283_SW0 : LUT6
    generic map(
      INIT => X"ECA0ECA8ECA0ECA0"
    )
    port map (
      I0 => ReadData1(7),
      I1 => MUX2_1_ALU_Out(7),
      I2 => Alu1_Mmux_resultX111081,
      I3 => Alu1_Mmux_resultX11105,
      I4 => ALU_Control(3),
      I5 => ALU_Control(1),
      O => N31
    );
  Alu1_Mmux_resultX11283_SW1 : LUT6
    generic map(
      INIT => X"EAC0FFFFEAC0EAC0"
    )
    port map (
      I0 => ReadData1(7),
      I1 => MUX2_1_ALU_Out(7),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      I4 => ALU_Control(3),
      I5 => Alu1_Mmux_resultX1128,
      O => N32
    );
  Alu1_Mmux_resultX11283_SW2 : LUT6
    generic map(
      INIT => X"FFA0FFBBA0A0B3B3"
    )
    port map (
      I0 => ReadData1(7),
      I1 => Alu_Controller1_Mmux_ALU_Control21_497,
      I2 => Alu1_Mmux_resultX111081,
      I3 => Alu1_Mmux_resultX11105,
      I4 => Alu_Controller1_Mmux_ALU_Control41_501,
      I5 => MUX2_1_ALU_Out(7),
      O => N33
    );
  Alu1_Mmux_resultX11283 : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => Alu1_Mmux_resultX1_split(7),
      I2 => N33,
      I3 => N31,
      I4 => N32,
      O => ALU_Result(7)
    );
  Alu_Controller1_Mmux_ALU_Control131_SW0 : LUT3
    generic map(
      INIT => X"70"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_1_Q,
      I2 => instr_0_Q,
      O => N35
    );
  Alu1_Mmux_resultX1_rs_lut_0_Q : LUT6
    generic map(
      INIT => X"A55AA55A5AA55A96"
    )
    port map (
      I0 => ReadData1(0),
      I1 => N35,
      I2 => MUX2_1_ALU_Out(0),
      I3 => ALUOP(1),
      I4 => ALUOP(2),
      I5 => ALUOP(0),
      O => Alu1_Mmux_resultX1_rs_lut(0)
    );
  Alu1_Mmux_resultX1_rs_lut_1_Q : LUT6
    generic map(
      INIT => X"A55AA55A5AA55A96"
    )
    port map (
      I0 => ReadData1(1),
      I1 => N35,
      I2 => MUX2_1_ALU_Out(1),
      I3 => ALUOP(1),
      I4 => ALUOP(2),
      I5 => ALUOP(0),
      O => Alu1_Mmux_resultX1_rs_lut(1)
    );
  Alu1_Mmux_resultX1_rs_lut_2_Q : LUT6
    generic map(
      INIT => X"A55AA55A5AA55A96"
    )
    port map (
      I0 => ReadData1(2),
      I1 => N35,
      I2 => MUX2_1_ALU_Out(2),
      I3 => ALUOP(1),
      I4 => ALUOP(2),
      I5 => ALUOP(0),
      O => Alu1_Mmux_resultX1_rs_lut(2)
    );
  Alu1_Mmux_resultX1_rs_lut_3_Q : LUT6
    generic map(
      INIT => X"A55AA55A5AA55A96"
    )
    port map (
      I0 => ReadData1(3),
      I1 => N35,
      I2 => MUX2_1_ALU_Out(3),
      I3 => ALUOP(1),
      I4 => ALUOP(2),
      I5 => ALUOP(0),
      O => Alu1_Mmux_resultX1_rs_lut(3)
    );
  Alu1_Mmux_resultX1_rs_lut_4_Q : LUT6
    generic map(
      INIT => X"A55AA55A5AA55A96"
    )
    port map (
      I0 => ReadData1(4),
      I1 => N35,
      I2 => MUX2_1_ALU_Out(4),
      I3 => ALUOP(1),
      I4 => ALUOP(2),
      I5 => ALUOP(0),
      O => Alu1_Mmux_resultX1_rs_lut(4)
    );
  Alu1_Mmux_resultX1_rs_lut_5_Q : LUT6
    generic map(
      INIT => X"AA5555AA55A9AA56"
    )
    port map (
      I0 => ReadData1(5),
      I1 => N35,
      I2 => ALUOP(2),
      I3 => ALUOP(1),
      I4 => MUX2_1_ALU_Out(5),
      I5 => ALUOP(0),
      O => Alu1_Mmux_resultX1_rs_lut(5)
    );
  MUX2_1_ALU_Mmux_y131 : LUT6
    generic map(
      INIT => X"AAEEEBEEAA222822"
    )
    port map (
      I0 => ReadData2(6),
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_14_Q,
      I4 => instr_13_Q,
      I5 => SignExtend_Out_6_Q,
      O => MUX2_1_ALU_Out(6)
    );
  Alu1_Mmux_resultX11263_SW0 : LUT6
    generic map(
      INIT => X"FFA0A0A0FFA8A0A0"
    )
    port map (
      I0 => ReadData1(6),
      I1 => Alu_Controller1_Mmux_ALU_Control21_497,
      I2 => Alu1_Mmux_resultX111081,
      I3 => Alu1_Mmux_resultX11105,
      I4 => MUX2_1_ALU_Out(6),
      I5 => Alu_Controller1_Mmux_ALU_Control41_501,
      O => N51
    );
  Alu1_Mmux_resultX11263_SW2 : LUT6
    generic map(
      INIT => X"ECA0ECA8ECA0FFFF"
    )
    port map (
      I0 => ReadData1(6),
      I1 => MUX2_1_ALU_Out(6),
      I2 => Alu1_Mmux_resultX111081,
      I3 => Alu1_Mmux_resultX11105,
      I4 => ALU_Control(3),
      I5 => ALU_Control(1),
      O => N53
    );
  MUX2_1_ALU_Mmux_y141 : LUT6
    generic map(
      INIT => X"AAEEEBEEAA222822"
    )
    port map (
      I0 => ReadData2(7),
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_14_Q,
      I4 => instr_13_Q,
      I5 => SignExtend_Out_7_Q,
      O => MUX2_1_ALU_Out(7)
    );
  SignExtend_data_out_15_1 : LUT5
    generic map(
      INIT => X"08202028"
    )
    port map (
      I0 => instr_0_Q,
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      O => SignExtend_Out_10_Q
    );
  Alu1_Mmux_resultX11225_SW0 : LUT5
    generic map(
      INIT => X"F8FFF8F0"
    )
    port map (
      I0 => ReadData1(4),
      I1 => MUX2_1_ALU_Out(4),
      I2 => ALU_Control(3),
      I3 => ALU_Control(1),
      I4 => Alu1_Mmux_resultX1_split(4),
      O => N78
    );
  Alu1_Mmux_resultX11225_SW1 : LUT5
    generic map(
      INIT => X"AACCFF05"
    )
    port map (
      I0 => ReadData1(4),
      I1 => ReadData1(3),
      I2 => MUX2_1_ALU_Out(4),
      I3 => ALU_Control(3),
      I4 => ALU_Control(1),
      O => N79
    );
  Alu1_Mmux_resultX11225 : LUT6
    generic map(
      INIT => X"FF7FF373FC4CF040"
    )
    port map (
      I0 => N80,
      I1 => ALU_Control(2),
      I2 => ALU_Control(0),
      I3 => Alu1_Mmux_resultX1122,
      I4 => N79,
      I5 => N78,
      O => ALU_Result(4)
    );
  Alu1_Mmux_resultX1_rs_lut_8_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(8),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(8),
      I3 => SignExtend_Out_10_Q,
      I4 => ALU_Control(0),
      O => Alu1_Mmux_resultX1_rs_lut(8)
    );
  Alu1_Mmux_resultX1_rs_lut_9_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(9),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(9),
      I3 => SignExtend_Out_10_Q,
      I4 => ALU_Control(0),
      O => Alu1_Mmux_resultX1_rs_lut(9)
    );
  Alu1_Mmux_resultX1_rs_lut_10_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(10),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(10),
      I3 => SignExtend_Out_10_Q,
      I4 => ALU_Control(0),
      O => Alu1_Mmux_resultX1_rs_lut(10)
    );
  Alu1_Mmux_resultX1_rs_lut_11_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(11),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(11),
      I3 => SignExtend_Out_10_Q,
      I4 => ALU_Control(0),
      O => Alu1_Mmux_resultX1_rs_lut(11)
    );
  Alu1_Mmux_resultX1_rs_lut_12_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(12),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(12),
      I3 => SignExtend_Out_10_Q,
      I4 => ALU_Control(0),
      O => Alu1_Mmux_resultX1_rs_lut(12)
    );
  Alu1_Mmux_resultX1_rs_lut_13_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(13),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(13),
      I3 => SignExtend_Out_10_Q,
      I4 => ALU_Control(0),
      O => Alu1_Mmux_resultX1_rs_lut(13)
    );
  Alu1_Mmux_resultX1_rs_lut_14_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(14),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(14),
      I3 => SignExtend_Out_10_Q,
      I4 => ALU_Control(0),
      O => Alu1_Mmux_resultX1_rs_lut(14)
    );
  Alu1_Zero_15_2_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => ALU_Result(11),
      I1 => ALU_Result(8),
      I2 => ALU_Result(2),
      I3 => ALU_Result(1),
      I4 => ALU_Result(0),
      I5 => ALU_Result(4),
      O => N82
    );
  Alu1_Zero_15_3 : LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => Alu1_Zero(15),
      I1 => ALU_Result(15),
      I2 => ALU_Result(14),
      I3 => ALU_Result(13),
      I4 => ALU_Result(12),
      I5 => N82,
      O => Zero
    );
  MUX2_1_PC_Mmux_y101 : LUT5
    generic map(
      INIT => X"8F888888"
    )
    port map (
      I0 => PC_Adder_Branch_Out(15),
      I1 => MUX2_1_PC_Mmux_y102_297,
      I2 => instr_14_Q,
      I3 => ControlUnit1_Mram_n004841_299,
      I4 => ReadData1(15),
      O => MUX2_1_PC_Mmux_y10
    );
  MUX2_1_PC_Mmux_y91 : LUT5
    generic map(
      INIT => X"8F888888"
    )
    port map (
      I0 => PC_Adder_Branch_Out(14),
      I1 => MUX2_1_PC_Mmux_y102_297,
      I2 => instr_14_Q,
      I3 => ControlUnit1_Mram_n004841_299,
      I4 => ReadData1(14),
      O => MUX2_1_PC_Mmux_y9
    );
  MUX2_1_PC_Mmux_y81 : LUT5
    generic map(
      INIT => X"8F888888"
    )
    port map (
      I0 => PC_Adder_Branch_Out(13),
      I1 => MUX2_1_PC_Mmux_y102_297,
      I2 => instr_14_Q,
      I3 => ControlUnit1_Mram_n004841_299,
      I4 => ReadData1(13),
      O => MUX2_1_PC_Mmux_y8
    );
  MUX2_1_PC_Mmux_y71 : LUT5
    generic map(
      INIT => X"8F888888"
    )
    port map (
      I0 => PC_Adder_Branch_Out(12),
      I1 => MUX2_1_PC_Mmux_y102_297,
      I2 => instr_14_Q,
      I3 => ControlUnit1_Mram_n004841_299,
      I4 => ReadData1(12),
      O => MUX2_1_PC_Mmux_y7
    );
  MUX2_1_PC_Mmux_y1021 : LUT5
    generic map(
      INIT => X"00400400"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_13_Q,
      I4 => Zero,
      O => MUX2_1_PC_Mmux_y102_297
    );
  MUX2_1_PC_Mmux_y1011 : LUT5
    generic map(
      INIT => X"FFFFD97F"
    )
    port map (
      I0 => instr_12_Q,
      I1 => instr_14_Q,
      I2 => Zero,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      O => MUX2_1_PC_Mmux_y101_296
    );
  MUX2_1_PC_Mmux_y1101 : LUT5
    generic map(
      INIT => X"DCDD9BFF"
    )
    port map (
      I0 => instr_12_Q,
      I1 => instr_14_Q,
      I2 => Zero,
      I3 => instr_14_Q,
      I4 => instr_13_Q,
      O => MUX2_1_PC_Mmux_y110
    );
  Alu1_Mmux_resultX11225_SW2 : LUT6
    generic map(
      INIT => X"FF00FFFFFFFFFF7F"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_1_Q,
      I2 => instr_0_Q,
      I3 => ALUOP(1),
      I4 => ALUOP(2),
      I5 => ALUOP(0),
      O => N80
    );
  Alu1_Mmux_resultX11242_SW0_F : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ReadData1(5),
      I1 => MUX2_1_ALU_Out(5),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      O => N84
    );
  Alu1_Mmux_resultX11242_SW0_G : LUT6
    generic map(
      INIT => X"ECA0ECA0ECA0ECA8"
    )
    port map (
      I0 => ReadData1(5),
      I1 => MUX2_1_ALU_Out(5),
      I2 => Alu1_Mmux_resultX111081,
      I3 => Alu1_Mmux_resultX11105,
      I4 => Alu_Controller1_Mmux_ALU_Control41_501,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N85
    );
  Alu1_Mmux_resultX11242_SW1_F : LUT6
    generic map(
      INIT => X"ECECA0A0ECFFA0FF"
    )
    port map (
      I0 => ReadData1(5),
      I1 => MUX2_1_ALU_Out(5),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N86
    );
  Alu1_Mmux_resultX11242_SW1_G : LUT6
    generic map(
      INIT => X"ECECA0A0ECECA0A8"
    )
    port map (
      I0 => ReadData1(5),
      I1 => MUX2_1_ALU_Out(5),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N87
    );
  Alu1_Mmux_resultX11242_SW2_F : LUT6
    generic map(
      INIT => X"EAC0FFFFEAC0EAC0"
    )
    port map (
      I0 => ReadData1(5),
      I1 => MUX2_1_ALU_Out(5),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      I4 => ALU_Control(3),
      I5 => ALU_Control(2),
      O => N88
    );
  Alu1_Mmux_resultX11242_SW2_G : LUT6
    generic map(
      INIT => X"ECFFA0FFECECA0A8"
    )
    port map (
      I0 => ReadData1(5),
      I1 => MUX2_1_ALU_Out(5),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N89
    );
  Alu1_Mmux_resultX11242_SW3_F : LUT5
    generic map(
      INIT => X"ECFFA0FF"
    )
    port map (
      I0 => ReadData1(5),
      I1 => MUX2_1_ALU_Out(5),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      O => N90
    );
  Alu1_Mmux_resultX11242_SW3_G : LUT6
    generic map(
      INIT => X"ECFFA0FFECECA0A8"
    )
    port map (
      I0 => ReadData1(5),
      I1 => MUX2_1_ALU_Out(5),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N91
    );
  Alu1_Mmux_resultX11202_SW0_F : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ReadData1(3),
      I1 => MUX2_1_ALU_Out(3),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      O => N92
    );
  Alu1_Mmux_resultX11202_SW0_G : LUT6
    generic map(
      INIT => X"ECA0ECA0ECA0ECA8"
    )
    port map (
      I0 => ReadData1(3),
      I1 => MUX2_1_ALU_Out(3),
      I2 => Alu1_Mmux_resultX111081,
      I3 => Alu1_Mmux_resultX11105,
      I4 => Alu_Controller1_Mmux_ALU_Control41_501,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N93
    );
  Alu1_Mmux_resultX11202_SW1_F : LUT6
    generic map(
      INIT => X"ECECA0A0ECFFA0FF"
    )
    port map (
      I0 => ReadData1(3),
      I1 => MUX2_1_ALU_Out(3),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N94
    );
  Alu1_Mmux_resultX11202_SW1_G : LUT6
    generic map(
      INIT => X"ECECA0A0ECECA0A8"
    )
    port map (
      I0 => ReadData1(3),
      I1 => MUX2_1_ALU_Out(3),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N95
    );
  Alu1_Mmux_resultX11202_SW2_F : LUT6
    generic map(
      INIT => X"EAC0FFFFEAC0EAC0"
    )
    port map (
      I0 => ReadData1(3),
      I1 => MUX2_1_ALU_Out(3),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      I4 => ALU_Control(3),
      I5 => ALU_Control(2),
      O => N96
    );
  Alu1_Mmux_resultX11202_SW2_G : LUT6
    generic map(
      INIT => X"ECFFA0FFECECA0A8"
    )
    port map (
      I0 => ReadData1(3),
      I1 => MUX2_1_ALU_Out(3),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N97
    );
  Alu1_Mmux_resultX11202_SW3_F : LUT5
    generic map(
      INIT => X"ECFFA0FF"
    )
    port map (
      I0 => ReadData1(3),
      I1 => MUX2_1_ALU_Out(3),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      O => N98
    );
  Alu1_Mmux_resultX11202_SW3_G : LUT6
    generic map(
      INIT => X"ECFFA0FFECECA0A8"
    )
    port map (
      I0 => ReadData1(3),
      I1 => MUX2_1_ALU_Out(3),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N99
    );
  Alu1_Mmux_resultX11182_SW0_F : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ReadData1(2),
      I1 => MUX2_1_ALU_Out(2),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      O => N100
    );
  Alu1_Mmux_resultX11182_SW0_G : LUT6
    generic map(
      INIT => X"ECA0ECA0ECA0ECA8"
    )
    port map (
      I0 => ReadData1(2),
      I1 => MUX2_1_ALU_Out(2),
      I2 => Alu1_Mmux_resultX111081,
      I3 => Alu1_Mmux_resultX11105,
      I4 => Alu_Controller1_Mmux_ALU_Control41_501,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N101
    );
  Alu1_Mmux_resultX11182_SW1_F : LUT6
    generic map(
      INIT => X"ECECA0A0ECFFA0FF"
    )
    port map (
      I0 => ReadData1(2),
      I1 => MUX2_1_ALU_Out(2),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N102
    );
  Alu1_Mmux_resultX11182_SW1_G : LUT6
    generic map(
      INIT => X"ECECA0A0ECECA0A8"
    )
    port map (
      I0 => ReadData1(2),
      I1 => MUX2_1_ALU_Out(2),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N103
    );
  Alu1_Mmux_resultX11182_SW2_F : LUT6
    generic map(
      INIT => X"EAC0FFFFEAC0EAC0"
    )
    port map (
      I0 => ReadData1(2),
      I1 => MUX2_1_ALU_Out(2),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      I4 => ALU_Control(3),
      I5 => ALU_Control(2),
      O => N104
    );
  Alu1_Mmux_resultX11182_SW2_G : LUT6
    generic map(
      INIT => X"ECFFA0FFECECA0A8"
    )
    port map (
      I0 => ReadData1(2),
      I1 => MUX2_1_ALU_Out(2),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N105
    );
  Alu1_Mmux_resultX11182_SW3_F : LUT5
    generic map(
      INIT => X"ECFFA0FF"
    )
    port map (
      I0 => ReadData1(2),
      I1 => MUX2_1_ALU_Out(2),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      O => N106
    );
  Alu1_Mmux_resultX11182_SW3_G : LUT6
    generic map(
      INIT => X"ECFFA0FFECECA0A8"
    )
    port map (
      I0 => ReadData1(2),
      I1 => MUX2_1_ALU_Out(2),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N107
    );
  Alu1_Mmux_resultX11162_SW0_F : LUT4
    generic map(
      INIT => X"EAC0"
    )
    port map (
      I0 => ReadData1(1),
      I1 => MUX2_1_ALU_Out(1),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      O => N108
    );
  Alu1_Mmux_resultX11162_SW0_G : LUT6
    generic map(
      INIT => X"ECECA0A0ECECA0A8"
    )
    port map (
      I0 => ReadData1(1),
      I1 => MUX2_1_ALU_Out(1),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N109
    );
  Alu1_Mmux_resultX11162_SW1_F : LUT6
    generic map(
      INIT => X"ECECA0A0ECFFA0FF"
    )
    port map (
      I0 => ReadData1(1),
      I1 => MUX2_1_ALU_Out(1),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N110
    );
  Alu1_Mmux_resultX11162_SW1_G : LUT6
    generic map(
      INIT => X"ECECA0A0ECECA0A8"
    )
    port map (
      I0 => ReadData1(1),
      I1 => MUX2_1_ALU_Out(1),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N111
    );
  Alu1_Mmux_resultX11162_SW2_F : LUT6
    generic map(
      INIT => X"EAC0FFFFEAC0EAC0"
    )
    port map (
      I0 => ReadData1(1),
      I1 => MUX2_1_ALU_Out(1),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      I4 => ALU_Control(3),
      I5 => ALU_Control(2),
      O => N112
    );
  Alu1_Mmux_resultX11162_SW2_G : LUT6
    generic map(
      INIT => X"ECFFA0FFECECA0A8"
    )
    port map (
      I0 => ReadData1(1),
      I1 => MUX2_1_ALU_Out(1),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_499,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N113
    );
  Alu1_Mmux_resultX11162_SW3_F : LUT5
    generic map(
      INIT => X"ECFFA0FF"
    )
    port map (
      I0 => ReadData1(1),
      I1 => MUX2_1_ALU_Out(1),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      O => N114
    );
  Alu1_Mmux_resultX11162_SW3_G : LUT6
    generic map(
      INIT => X"ECFFA0FFECECA0A8"
    )
    port map (
      I0 => ReadData1(1),
      I1 => MUX2_1_ALU_Out(1),
      I2 => Alu1_Mmux_resultX1110811_500,
      I3 => Alu_Controller1_Mmux_ALU_Control41_501,
      I4 => Alu1_Mmux_resultX111051_1_503,
      I5 => Alu_Controller1_Mmux_ALU_Control31_502,
      O => N115
    );
  Alu1_Mmux_resultX11263 : MUXF7
    port map (
      I0 => N116,
      I1 => N117,
      S => ALU_Control(2),
      O => ALU_Result(6)
    );
  Alu1_Mmux_resultX11263_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(6),
      I1 => N51,
      I2 => N53,
      O => N116
    );
  Alu1_Mmux_resultX11263_G : LUT6
    generic map(
      INIT => X"EAC0FFFFEAC0EAC0"
    )
    port map (
      I0 => ReadData1(6),
      I1 => MUX2_1_ALU_Out(6),
      I2 => Alu1_Mmux_resultX11105,
      I3 => Alu1_Mmux_resultX111081,
      I4 => ALU_Control(3),
      I5 => Alu1_Mmux_resultX1126,
      O => N117
    );
  PC_Adder_Branch_Madd_y_lut_8_Q : LUT6
    generic map(
      INIT => X"AA6AA6AAA6AAA66A"
    )
    port map (
      I0 => PC_Adder_Out(8),
      I1 => instr_0_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => PC_Adder_Branch_Madd_y_lut(8)
    );
  PC_Adder_Branch_Madd_y_lut_9_Q : LUT6
    generic map(
      INIT => X"AA6AA6AAA6AAA66A"
    )
    port map (
      I0 => PC_Adder_Out(9),
      I1 => instr_0_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => PC_Adder_Branch_Madd_y_lut(9)
    );
  PC_Adder_Branch_Madd_y_lut_10_Q : LUT6
    generic map(
      INIT => X"AA6AA6AAA6AAA66A"
    )
    port map (
      I0 => PC_Adder_Out(10),
      I1 => instr_0_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => PC_Adder_Branch_Madd_y_lut(10)
    );
  PC_Adder_Branch_Madd_y_lut_11_Q : LUT6
    generic map(
      INIT => X"AA6AA6AAA6AAA66A"
    )
    port map (
      I0 => PC_Adder_Out(11),
      I1 => instr_0_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => PC_Adder_Branch_Madd_y_lut(11)
    );
  PC_Adder_Branch_Madd_y_lut_12_Q : LUT6
    generic map(
      INIT => X"AA6AA6AAA6AAA66A"
    )
    port map (
      I0 => PC_Adder_Out(12),
      I1 => instr_0_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => PC_Adder_Branch_Madd_y_lut(12)
    );
  ControlUnit1_Mram_n004861 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => instr_12_Q,
      I1 => instr_14_Q,
      I2 => instr_13_Q,
      I3 => instr_14_Q,
      O => ControlUnit1_Mram_n00486
    );
  ControlUnit1_Mram_n0048121 : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_13_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      O => ControlUnit1_Mram_n004812
    );
  PC_Adder_Branch_Madd_y_lut_13_Q : LUT6
    generic map(
      INIT => X"AA6AA6AAA6AAA66A"
    )
    port map (
      I0 => PC_Adder_Out(13),
      I1 => instr_0_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => PC_Adder_Branch_Madd_y_lut(13)
    );
  PC_Adder_Branch_Madd_y_lut_14_Q : LUT6
    generic map(
      INIT => X"AA6AA6AAA6AAA66A"
    )
    port map (
      I0 => PC_Adder_Out(14),
      I1 => instr_0_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => PC_Adder_Branch_Madd_y_lut(14)
    );
  PC_Adder_Branch_Madd_y_lut_15_Q : LUT6
    generic map(
      INIT => X"AA6AA6AAA6AAA66A"
    )
    port map (
      I0 => PC_Adder_Out(15),
      I1 => instr_0_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      I5 => instr_13_Q,
      O => PC_Adder_Branch_Madd_y_lut(15)
    );
  Alu1_Mmux_resultX1_rs_lut_15_Q : LUT5
    generic map(
      INIT => X"A965569A"
    )
    port map (
      I0 => ReadData1(15),
      I1 => MUX2_1_ALU_Mmux_y17,
      I2 => ReadData2(15),
      I3 => SignExtend_Out_10_Q,
      I4 => ALU_Control(0),
      O => Alu1_Mmux_resultX1_rs_lut(15)
    );
  Mux_DataIn_Mmux_y18 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_0_IBUF_15,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y1,
      O => WriteData(0)
    );
  Mux_DataIn_Mmux_y132 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_6_IBUF_9,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y13,
      O => WriteData(6)
    );
  Mux_DataIn_Mmux_y72 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_15_IBUF_0,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y7,
      O => WriteData(15)
    );
  Mux_DataIn_Mmux_y62 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_14_IBUF_1,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y6,
      O => WriteData(14)
    );
  Mux_DataIn_Mmux_y52 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_13_IBUF_2,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y5,
      O => WriteData(13)
    );
  Mux_DataIn_Mmux_y42 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_12_IBUF_3,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y4,
      O => WriteData(12)
    );
  Mux_DataIn_Mmux_y32 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_11_IBUF_4,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y3,
      O => WriteData(11)
    );
  Mux_DataIn_Mmux_y162 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_9_IBUF_6,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y16,
      O => WriteData(9)
    );
  Mux_DataIn_Mmux_y22 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_10_IBUF_5,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y2,
      O => WriteData(10)
    );
  Mux_DataIn_Mmux_y122 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_5_IBUF_10,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y12,
      O => WriteData(5)
    );
  Mux_DataIn_Mmux_y102 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_3_IBUF_12,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y10,
      O => WriteData(3)
    );
  Mux_DataIn_Mmux_y82 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_1_IBUF_14,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y8,
      O => WriteData(1)
    );
  Mux_DataIn_Mmux_y142 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_7_IBUF_8,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y14,
      O => WriteData(7)
    );
  Mux_DataIn_Mmux_y92 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_2_IBUF_13,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y9,
      O => WriteData(2)
    );
  Mux_DataIn_Mmux_y152 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_8_IBUF_7,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y15,
      O => WriteData(8)
    );
  Mux_DataIn_Mmux_y112 : LUT6
    generic map(
      INIT => X"FFFFFFFF00000008"
    )
    port map (
      I0 => in_port_4_IBUF_11,
      I1 => instr_12_Q,
      I2 => instr_14_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => Mux_DataIn_Mmux_y11,
      O => WriteData(4)
    );
  ControlUnit1_Mmux_latchA11 : LUT5
    generic map(
      INIT => X"00100000"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_13_Q,
      I3 => instr_12_Q,
      I4 => instr_8_Q,
      O => latchA
    );
  MUX2_1_ALU_Mmux_y151 : LUT6
    generic map(
      INIT => X"AEA222BEA2A22282"
    )
    port map (
      I0 => ReadData2(8),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      I5 => instr_0_Q,
      O => MUX2_1_ALU_Out(8)
    );
  MUX2_1_ALU_Mmux_y161 : LUT6
    generic map(
      INIT => X"AEA222BEA2A22282"
    )
    port map (
      I0 => ReadData2(9),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      I5 => instr_0_Q,
      O => MUX2_1_ALU_Out(9)
    );
  MUX2_1_ALU_Mmux_y21 : LUT6
    generic map(
      INIT => X"AEA222BEA2A22282"
    )
    port map (
      I0 => ReadData2(10),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      I5 => instr_0_Q,
      O => MUX2_1_ALU_Out(10)
    );
  MUX2_1_ALU_Mmux_y31 : LUT6
    generic map(
      INIT => X"AEA222BEA2A22282"
    )
    port map (
      I0 => ReadData2(11),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      I5 => instr_0_Q,
      O => MUX2_1_ALU_Out(11)
    );
  MUX2_1_ALU_Mmux_y51 : LUT6
    generic map(
      INIT => X"AEA222BEA2A22282"
    )
    port map (
      I0 => ReadData2(13),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      I5 => instr_0_Q,
      O => MUX2_1_ALU_Out(13)
    );
  MUX2_1_ALU_Mmux_y41 : LUT6
    generic map(
      INIT => X"AEA222BEA2A22282"
    )
    port map (
      I0 => ReadData2(12),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      I5 => instr_0_Q,
      O => MUX2_1_ALU_Out(12)
    );
  latch_n0018_inv1 : LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => instr_8_Q,
      I1 => instr_13_Q,
      I2 => instr_14_Q,
      I3 => instr_14_Q,
      I4 => instr_12_Q,
      O => latch_n0018_inv
    );
  MUX2_1_ALU_Mmux_y71 : LUT6
    generic map(
      INIT => X"AEA222BEA2A22282"
    )
    port map (
      I0 => ReadData2(15),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      I5 => instr_0_Q,
      O => MUX2_1_ALU_Out(15)
    );
  MUX2_1_ALU_Mmux_y61 : LUT6
    generic map(
      INIT => X"AEA222BEA2A22282"
    )
    port map (
      I0 => ReadData2(14),
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_12_Q,
      I4 => instr_13_Q,
      I5 => instr_0_Q,
      O => MUX2_1_ALU_Out(14)
    );
  Alu_Controller1_Mmux_ALU_Control131_1 : LUT6
    generic map(
      INIT => X"FFFF00000000FF70"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_1_Q,
      I2 => instr_0_Q,
      I3 => ControlUnit1_Mram_n004891_505,
      I4 => ControlUnit1_Mram_n004871_506,
      I5 => ALUOP(1),
      O => Alu_Controller1_Mmux_ALU_Control131_498
    );
  Alu1_Mmux_resultX111051_1 : LUT6
    generic map(
      INIT => X"FF00FF0000000008"
    )
    port map (
      I0 => instr_0_Q,
      I1 => instr_1_Q,
      I2 => instr_1_Q,
      I3 => ControlUnit1_Mram_n004881_504,
      I4 => ControlUnit1_Mram_n004891_505,
      I5 => ALUOP(0),
      O => Alu1_Mmux_resultX111051_499
    );
  Alu_Controller1_Mmux_ALU_Control31_1 : LUT6
    generic map(
      INIT => X"FFFF00000000004C"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_1_Q,
      I2 => instr_0_Q,
      I3 => ControlUnit1_Mram_n004871_506,
      I4 => ControlUnit1_Mram_n004891_505,
      I5 => ALUOP(1),
      O => Alu_Controller1_Mmux_ALU_Control31_502
    );
  Alu1_Mmux_resultX111051_2 : LUT6
    generic map(
      INIT => X"FF00FF0000000008"
    )
    port map (
      I0 => instr_0_Q,
      I1 => instr_1_Q,
      I2 => instr_1_Q,
      I3 => ControlUnit1_Mram_n004881_504,
      I4 => ALUOP(2),
      I5 => ALUOP(0),
      O => Alu1_Mmux_resultX111051_1_503
    );
  ControlUnit1_Mram_n004881_1 : LUT4
    generic map(
      INIT => X"03A0"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_13_Q,
      O => ControlUnit1_Mram_n004881_504
    );
  ControlUnit1_Mram_n004891_1 : LUT4
    generic map(
      INIT => X"03A0"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_13_Q,
      O => ControlUnit1_Mram_n004891_505
    );
  ControlUnit1_Mram_n004871_1 : LUT4
    generic map(
      INIT => X"4486"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_13_Q,
      O => ControlUnit1_Mram_n004871_506
    );
  Alu1_Mmux_resultX11144 : MUXF7
    port map (
      I0 => N118,
      I1 => N119,
      S => ALU_Control(1),
      O => ALU_Result(15)
    );
  Alu1_Mmux_resultX11144_F : LUT6
    generic map(
      INIT => X"1151511500404004"
    )
    port map (
      I0 => ALU_Control(3),
      I1 => ALU_Control(2),
      I2 => ALU_Control(0),
      I3 => MUX2_1_ALU_Out(15),
      I4 => ReadData1(15),
      I5 => Alu1_Mmux_resultX1_split(15),
      O => N118
    );
  Alu1_Mmux_resultX11144_G : LUT6
    generic map(
      INIT => X"9910D4C499109080"
    )
    port map (
      I0 => ALU_Control(3),
      I1 => ALU_Control(2),
      I2 => ReadData1(15),
      I3 => MUX2_1_ALU_Out(15),
      I4 => ALU_Control(0),
      I5 => ReadData1(14),
      O => N119
    );
  Alu1_Mmux_resultX11303 : MUXF7
    port map (
      I0 => N120,
      I1 => N121,
      S => ALU_Control(0),
      O => Alu1_Mmux_resultX11302
    );
  Alu1_Mmux_resultX11303_F : LUT6
    generic map(
      INIT => X"DA8A8A8ADB8A8B8A"
    )
    port map (
      I0 => ALU_Control(3),
      I1 => ReadData1(8),
      I2 => ALU_Control(1),
      I3 => ALU_Control(2),
      I4 => ReadData1(7),
      I5 => MUX2_1_ALU_Out(8),
      O => N120
    );
  Alu1_Mmux_resultX11303_G : LUT6
    generic map(
      INIT => X"FF75AEE8FF752660"
    )
    port map (
      I0 => ALU_Control(1),
      I1 => ALU_Control(2),
      I2 => ReadData1(8),
      I3 => MUX2_1_ALU_Out(8),
      I4 => ALU_Control(3),
      I5 => ReadData1(9),
      O => N121
    );
  Alu1_Mmux_resultX11122 : MUXF7
    port map (
      I0 => N122,
      I1 => N123,
      S => ALU_Control(2),
      O => Alu1_Mmux_resultX11121
    );
  Alu1_Mmux_resultX11122_F : LUT6
    generic map(
      INIT => X"DD5DD55588088000"
    )
    port map (
      I0 => ALU_Control(1),
      I1 => ReadData1(14),
      I2 => MUX2_1_ALU_Mmux_y17,
      I3 => SignExtend_Out_10_Q,
      I4 => ReadData2(14),
      I5 => Alu1_Mmux_resultX1_split(14),
      O => N122
    );
  Alu1_Mmux_resultX11122_G : LUT6
    generic map(
      INIT => X"AEEB8CC926630441"
    )
    port map (
      I0 => ALU_Control(1),
      I1 => ALU_Control(0),
      I2 => ReadData1(14),
      I3 => MUX2_1_ALU_Out(14),
      I4 => ReadData1(13),
      I5 => ReadData1(15),
      O => N123
    );
  Alu1_Mmux_resultX112 : MUXF7
    port map (
      I0 => N124,
      I1 => N125,
      S => ALU_Control(1),
      O => ALU_Result(0)
    );
  Alu1_Mmux_resultX112_F : LUT6
    generic map(
      INIT => X"FFFFFFFF7D572802"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => MUX2_1_ALU_Out(0),
      I2 => ReadData1(0),
      I3 => ALU_Control(0),
      I4 => Alu1_Mmux_resultX1_split(0),
      I5 => ALU_Control(3),
      O => N124
    );
  Alu1_Mmux_resultX112_G : LUT6
    generic map(
      INIT => X"DDF5FE40DDF55440"
    )
    port map (
      I0 => ALU_Control(2),
      I1 => MUX2_1_ALU_Out(0),
      I2 => ReadData1(0),
      I3 => ALU_Control(0),
      I4 => ALU_Control(3),
      I5 => ReadData1(1),
      O => N125
    );
  Alu1_Mmux_resultX11243 : MUXF7
    port map (
      I0 => N126,
      I1 => N127,
      S => Alu1_Mmux_resultX1124,
      O => ALU_Result(5)
    );
  Alu1_Mmux_resultX11243_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(5),
      I1 => ALU_Control(1),
      I2 => N86,
      I3 => N87,
      I4 => N85,
      I5 => N84,
      O => N126
    );
  Alu1_Mmux_resultX11243_G : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(5),
      I1 => ALU_Control(1),
      I2 => N90,
      I3 => N91,
      I4 => N89,
      I5 => N88,
      O => N127
    );
  Alu1_Mmux_resultX11203 : MUXF7
    port map (
      I0 => N128,
      I1 => N129,
      S => Alu1_Mmux_resultX1120,
      O => ALU_Result(3)
    );
  Alu1_Mmux_resultX11203_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(3),
      I1 => ALU_Control(1),
      I2 => N94,
      I3 => N95,
      I4 => N93,
      I5 => N92,
      O => N128
    );
  Alu1_Mmux_resultX11203_G : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(3),
      I1 => ALU_Control(1),
      I2 => N98,
      I3 => N99,
      I4 => N97,
      I5 => N96,
      O => N129
    );
  Alu1_Mmux_resultX11183 : MUXF7
    port map (
      I0 => N130,
      I1 => N131,
      S => Alu1_Mmux_resultX1118,
      O => ALU_Result(2)
    );
  Alu1_Mmux_resultX11183_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(2),
      I1 => ALU_Control(1),
      I2 => N102,
      I3 => N103,
      I4 => N101,
      I5 => N100,
      O => N130
    );
  Alu1_Mmux_resultX11183_G : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(2),
      I1 => ALU_Control(1),
      I2 => N106,
      I3 => N107,
      I4 => N105,
      I5 => N104,
      O => N131
    );
  Alu1_Mmux_resultX11163 : MUXF7
    port map (
      I0 => N132,
      I1 => N133,
      S => Alu1_Mmux_resultX1116,
      O => ALU_Result(1)
    );
  Alu1_Mmux_resultX11163_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(1),
      I1 => ALU_Control(1),
      I2 => N110,
      I3 => N111,
      I4 => N109,
      I5 => N108,
      O => N132
    );
  Alu1_Mmux_resultX11163_G : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => Alu1_Mmux_resultX1_split(1),
      I1 => ALU_Control(1),
      I2 => N114,
      I3 => N115,
      I4 => N113,
      I5 => N112,
      O => N133
    );
  Alu_Controller1_Mmux_ALU_Control21_1 : MUXF7
    port map (
      I0 => N134,
      I1 => N135,
      S => instr_13_Q,
      O => Alu_Controller1_Mmux_ALU_Control21_497
    );
  Alu_Controller1_Mmux_ALU_Control21_1_F : LUT6
    generic map(
      INIT => X"CCCECECE00828282"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_14_Q,
      I2 => instr_14_Q,
      I3 => instr_0_Q,
      I4 => instr_1_Q,
      I5 => instr_12_Q,
      O => N134
    );
  Alu_Controller1_Mmux_ALU_Control21_1_G : LUT6
    generic map(
      INIT => X"0303DB03DB03DB03"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_12_Q,
      I3 => instr_1_Q,
      I4 => instr_0_Q,
      I5 => instr_1_Q,
      O => N135
    );
  Alu1_Mmux_resultX1110811_1 : MUXF7
    port map (
      I0 => N136,
      I1 => N137,
      S => instr_12_Q,
      O => Alu1_Mmux_resultX1110811_500
    );
  Alu1_Mmux_resultX1110811_1_F : LUT6
    generic map(
      INIT => X"44E5444444444444"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_13_Q,
      I2 => instr_14_Q,
      I3 => instr_1_Q,
      I4 => instr_1_Q,
      I5 => instr_0_Q,
      O => N136
    );
  Alu1_Mmux_resultX1110811_1_G : LUT6
    generic map(
      INIT => X"4000000040004040"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_0_Q,
      I2 => instr_1_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => instr_14_Q,
      O => N137
    );
  Alu1_Mmux_resultX1110811 : MUXF7
    port map (
      I0 => N138,
      I1 => N139,
      S => instr_12_Q,
      O => Alu1_Mmux_resultX111081
    );
  Alu1_Mmux_resultX1110811_F : LUT6
    generic map(
      INIT => X"44E5444444444444"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_13_Q,
      I2 => instr_14_Q,
      I3 => instr_1_Q,
      I4 => instr_1_Q,
      I5 => instr_0_Q,
      O => N138
    );
  Alu1_Mmux_resultX1110811_G : LUT6
    generic map(
      INIT => X"4000000040004040"
    )
    port map (
      I0 => instr_1_Q,
      I1 => instr_0_Q,
      I2 => instr_1_Q,
      I3 => instr_13_Q,
      I4 => instr_14_Q,
      I5 => instr_14_Q,
      O => N139
    );
  Alu_Controller1_Mmux_ALU_Control41_1 : MUXF7
    port map (
      I0 => N140,
      I1 => N141,
      S => instr_12_Q,
      O => Alu_Controller1_Mmux_ALU_Control41_501
    );
  Alu_Controller1_Mmux_ALU_Control41_1_F : LUT6
    generic map(
      INIT => X"9111111190000000"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_0_Q,
      I3 => instr_1_Q,
      I4 => instr_1_Q,
      I5 => instr_13_Q,
      O => N140
    );
  Alu_Controller1_Mmux_ALU_Control41_1_G : LUT6
    generic map(
      INIT => X"A2222222D0000000"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_13_Q,
      I2 => instr_0_Q,
      I3 => instr_1_Q,
      I4 => instr_1_Q,
      I5 => instr_14_Q,
      O => N141
    );
  Alu1_Mmux_resultX111051 : MUXF7
    port map (
      I0 => N142,
      I1 => N143,
      S => instr_12_Q,
      O => Alu1_Mmux_resultX11105
    );
  Alu1_Mmux_resultX111051_F : LUT6
    generic map(
      INIT => X"2A22222209000000"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_14_Q,
      I2 => instr_1_Q,
      I3 => instr_1_Q,
      I4 => instr_0_Q,
      I5 => instr_13_Q,
      O => N142
    );
  Alu1_Mmux_resultX111051_G : LUT6
    generic map(
      INIT => X"20AD202020202020"
    )
    port map (
      I0 => instr_14_Q,
      I1 => instr_13_Q,
      I2 => instr_14_Q,
      I3 => instr_1_Q,
      I4 => instr_1_Q,
      I5 => instr_0_Q,
      O => N143
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_16
    );
  clk_inv_INV_0 : INV
    port map (
      I => clk_BUFGP_16,
      O => clk_inv
    );
  PC_Adder_Madd_y_lut_0_INV_0 : INV
    port map (
      I => pro_c_q(0),
      O => PC_Adder_Madd_y_lut(0)
    );
  DataMemory1_Mram_mem : RAMB8BWER
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      WRITE_MODE_A => "NO_CHANGE",
      DATA_WIDTH_A => 18,
      DATA_WIDTH_B => 0,
      DOA_REG => 0,
      DOB_REG => 0,
      EN_RSTRAM_A => TRUE,
      EN_RSTRAM_B => TRUE,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RST_PRIORITY_A => "CE",
      RST_PRIORITY_B => "CE",
      RSTTYPE => "SYNC",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_FILE => "NONE",
      SIM_COLLISION_CHECK => "ALL"
    )
    port map (
      RSTBRST => NLW_DataMemory1_Mram_mem_RSTBRST_UNCONNECTED,
      ENBRDEN => NLW_DataMemory1_Mram_mem_ENBRDEN_UNCONNECTED,
      REGCEA => N1,
      ENAWREN => N0,
      CLKAWRCLK => clk_inv,
      CLKBRDCLK => NLW_DataMemory1_Mram_mem_CLKBRDCLK_UNCONNECTED,
      REGCEBREGCE => NLW_DataMemory1_Mram_mem_REGCEBREGCE_UNCONNECTED,
      RSTA => N1,
      WEAWEL(1) => ControlUnit1_Mram_n004810,
      WEAWEL(0) => ControlUnit1_Mram_n004810,
      DOADO(15) => ReadData_dmem(15),
      DOADO(14) => ReadData_dmem(14),
      DOADO(13) => ReadData_dmem(13),
      DOADO(12) => ReadData_dmem(12),
      DOADO(11) => ReadData_dmem(11),
      DOADO(10) => ReadData_dmem(10),
      DOADO(9) => ReadData_dmem(9),
      DOADO(8) => ReadData_dmem(8),
      DOADO(7) => ReadData_dmem(7),
      DOADO(6) => ReadData_dmem(6),
      DOADO(5) => ReadData_dmem(5),
      DOADO(4) => ReadData_dmem(4),
      DOADO(3) => ReadData_dmem(3),
      DOADO(2) => ReadData_dmem(2),
      DOADO(1) => ReadData_dmem(1),
      DOADO(0) => ReadData_dmem(0),
      DOPADOP(1) => NLW_DataMemory1_Mram_mem_DOPADOP_1_UNCONNECTED,
      DOPADOP(0) => NLW_DataMemory1_Mram_mem_DOPADOP_0_UNCONNECTED,
      DOPBDOP(1) => NLW_DataMemory1_Mram_mem_DOPBDOP_1_UNCONNECTED,
      DOPBDOP(0) => NLW_DataMemory1_Mram_mem_DOPBDOP_0_UNCONNECTED,
      WEBWEU(1) => NLW_DataMemory1_Mram_mem_WEBWEU_1_UNCONNECTED,
      WEBWEU(0) => NLW_DataMemory1_Mram_mem_WEBWEU_0_UNCONNECTED,
      ADDRAWRADDR(12) => N1,
      ADDRAWRADDR(11) => ALU_Result(7),
      ADDRAWRADDR(10) => ALU_Result(6),
      ADDRAWRADDR(9) => ALU_Result(5),
      ADDRAWRADDR(8) => ALU_Result(4),
      ADDRAWRADDR(7) => ALU_Result(3),
      ADDRAWRADDR(6) => ALU_Result(2),
      ADDRAWRADDR(5) => ALU_Result(1),
      ADDRAWRADDR(4) => ALU_Result(0),
      ADDRAWRADDR(3) => NLW_DataMemory1_Mram_mem_ADDRAWRADDR_3_UNCONNECTED,
      ADDRAWRADDR(2) => NLW_DataMemory1_Mram_mem_ADDRAWRADDR_2_UNCONNECTED,
      ADDRAWRADDR(1) => NLW_DataMemory1_Mram_mem_ADDRAWRADDR_1_UNCONNECTED,
      ADDRAWRADDR(0) => NLW_DataMemory1_Mram_mem_ADDRAWRADDR_0_UNCONNECTED,
      DIPBDIP(1) => NLW_DataMemory1_Mram_mem_DIPBDIP_1_UNCONNECTED,
      DIPBDIP(0) => NLW_DataMemory1_Mram_mem_DIPBDIP_0_UNCONNECTED,
      DIBDI(15) => NLW_DataMemory1_Mram_mem_DIBDI_15_UNCONNECTED,
      DIBDI(14) => NLW_DataMemory1_Mram_mem_DIBDI_14_UNCONNECTED,
      DIBDI(13) => NLW_DataMemory1_Mram_mem_DIBDI_13_UNCONNECTED,
      DIBDI(12) => NLW_DataMemory1_Mram_mem_DIBDI_12_UNCONNECTED,
      DIBDI(11) => NLW_DataMemory1_Mram_mem_DIBDI_11_UNCONNECTED,
      DIBDI(10) => NLW_DataMemory1_Mram_mem_DIBDI_10_UNCONNECTED,
      DIBDI(9) => NLW_DataMemory1_Mram_mem_DIBDI_9_UNCONNECTED,
      DIBDI(8) => NLW_DataMemory1_Mram_mem_DIBDI_8_UNCONNECTED,
      DIBDI(7) => NLW_DataMemory1_Mram_mem_DIBDI_7_UNCONNECTED,
      DIBDI(6) => NLW_DataMemory1_Mram_mem_DIBDI_6_UNCONNECTED,
      DIBDI(5) => NLW_DataMemory1_Mram_mem_DIBDI_5_UNCONNECTED,
      DIBDI(4) => NLW_DataMemory1_Mram_mem_DIBDI_4_UNCONNECTED,
      DIBDI(3) => NLW_DataMemory1_Mram_mem_DIBDI_3_UNCONNECTED,
      DIBDI(2) => NLW_DataMemory1_Mram_mem_DIBDI_2_UNCONNECTED,
      DIBDI(1) => NLW_DataMemory1_Mram_mem_DIBDI_1_UNCONNECTED,
      DIBDI(0) => NLW_DataMemory1_Mram_mem_DIBDI_0_UNCONNECTED,
      DIADI(15) => ReadData2(15),
      DIADI(14) => ReadData2(14),
      DIADI(13) => ReadData2(13),
      DIADI(12) => ReadData2(12),
      DIADI(11) => ReadData2(11),
      DIADI(10) => ReadData2(10),
      DIADI(9) => ReadData2(9),
      DIADI(8) => ReadData2(8),
      DIADI(7) => ReadData2(7),
      DIADI(6) => ReadData2(6),
      DIADI(5) => ReadData2(5),
      DIADI(4) => ReadData2(4),
      DIADI(3) => ReadData2(3),
      DIADI(2) => ReadData2(2),
      DIADI(1) => ReadData2(1),
      DIADI(0) => ReadData2(0),
      ADDRBRDADDR(12) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_12_UNCONNECTED,
      ADDRBRDADDR(11) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_11_UNCONNECTED,
      ADDRBRDADDR(10) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_10_UNCONNECTED,
      ADDRBRDADDR(9) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_9_UNCONNECTED,
      ADDRBRDADDR(8) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_8_UNCONNECTED,
      ADDRBRDADDR(7) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_7_UNCONNECTED,
      ADDRBRDADDR(6) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_6_UNCONNECTED,
      ADDRBRDADDR(5) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_5_UNCONNECTED,
      ADDRBRDADDR(4) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_4_UNCONNECTED,
      ADDRBRDADDR(3) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_3_UNCONNECTED,
      ADDRBRDADDR(2) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_2_UNCONNECTED,
      ADDRBRDADDR(1) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_1_UNCONNECTED,
      ADDRBRDADDR(0) => NLW_DataMemory1_Mram_mem_ADDRBRDADDR_0_UNCONNECTED,
      DOBDO(15) => NLW_DataMemory1_Mram_mem_DOBDO_15_UNCONNECTED,
      DOBDO(14) => NLW_DataMemory1_Mram_mem_DOBDO_14_UNCONNECTED,
      DOBDO(13) => NLW_DataMemory1_Mram_mem_DOBDO_13_UNCONNECTED,
      DOBDO(12) => NLW_DataMemory1_Mram_mem_DOBDO_12_UNCONNECTED,
      DOBDO(11) => NLW_DataMemory1_Mram_mem_DOBDO_11_UNCONNECTED,
      DOBDO(10) => NLW_DataMemory1_Mram_mem_DOBDO_10_UNCONNECTED,
      DOBDO(9) => NLW_DataMemory1_Mram_mem_DOBDO_9_UNCONNECTED,
      DOBDO(8) => NLW_DataMemory1_Mram_mem_DOBDO_8_UNCONNECTED,
      DOBDO(7) => NLW_DataMemory1_Mram_mem_DOBDO_7_UNCONNECTED,
      DOBDO(6) => NLW_DataMemory1_Mram_mem_DOBDO_6_UNCONNECTED,
      DOBDO(5) => NLW_DataMemory1_Mram_mem_DOBDO_5_UNCONNECTED,
      DOBDO(4) => NLW_DataMemory1_Mram_mem_DOBDO_4_UNCONNECTED,
      DOBDO(3) => NLW_DataMemory1_Mram_mem_DOBDO_3_UNCONNECTED,
      DOBDO(2) => NLW_DataMemory1_Mram_mem_DOBDO_2_UNCONNECTED,
      DOBDO(1) => NLW_DataMemory1_Mram_mem_DOBDO_1_UNCONNECTED,
      DOBDO(0) => NLW_DataMemory1_Mram_mem_DOBDO_0_UNCONNECTED,
      DIPADIP(1) => N1,
      DIPADIP(0) => N1
    );
  instr_2_G : LUT6
    generic map(
      INIT => X"15BE333614BE6636"
    )
    port map (
      I0 => pro_c_q(6),
      I1 => pro_c_q(0),
      I2 => pro_c_q(5),
      I3 => pro_c_q(1),
      I4 => pro_c_q(2),
      I5 => pro_c_q(3),
      O => N40
    );
  instr_2_F : LUT6
    generic map(
      INIT => X"11BBCCCD11BBCFCF"
    )
    port map (
      I0 => pro_c_q(2),
      I1 => pro_c_q(0),
      I2 => pro_c_q(5),
      I3 => pro_c_q(1),
      I4 => pro_c_q(6),
      I5 => pro_c_q(3),
      O => N39
    );
  instr_2_Q : MUXF7
    port map (
      I0 => N39,
      I1 => N40,
      S => pro_c_q(4),
      O => instr_1_Q
    );
  instr_15_G : LUT3
    generic map(
      INIT => X"E6"
    )
    port map (
      I0 => pro_c_q(0),
      I1 => pro_c_q(2),
      I2 => pro_c_q(1),
      O => N38
    );
  instr_15_F : LUT6
    generic map(
      INIT => X"99CB99D9B7373737"
    )
    port map (
      I0 => pro_c_q(5),
      I1 => pro_c_q(0),
      I2 => pro_c_q(3),
      I3 => pro_c_q(2),
      I4 => pro_c_q(1),
      I5 => pro_c_q(4),
      O => N37
    );
  instr_15_Q : MUXF7
    port map (
      I0 => N37,
      I1 => N38,
      S => pro_c_q(6),
      O => instr_14_Q
    );
  InstMemory1_Mram_Instruction10_G : LUT6
    generic map(
      INIT => X"3430303030303134"
    )
    port map (
      I0 => pro_c_q(4),
      I1 => pro_c_q(1),
      I2 => pro_c_q(6),
      I3 => pro_c_q(0),
      I4 => pro_c_q(3),
      I5 => pro_c_q(5),
      O => N36
    );
  InstMemory1_Mram_Instruction10_F : LUT6
    generic map(
      INIT => X"0001000004401100"
    )
    port map (
      I0 => pro_c_q(6),
      I1 => pro_c_q(3),
      I2 => pro_c_q(0),
      I3 => pro_c_q(1),
      I4 => pro_c_q(4),
      I5 => pro_c_q(5),
      O => N351
    );
  InstMemory1_Mram_Instruction10 : MUXF7
    port map (
      I0 => N351,
      I1 => N36,
      S => pro_c_q(2),
      O => instr_10_Q
    );
  InstMemory1_Mram_Instruction8_G : LUT6
    generic map(
      INIT => X"0808180909580808"
    )
    port map (
      I0 => pro_c_q(6),
      I1 => pro_c_q(2),
      I2 => pro_c_q(1),
      I3 => pro_c_q(0),
      I4 => pro_c_q(3),
      I5 => pro_c_q(5),
      O => N34
    );
  InstMemory1_Mram_Instruction8_F : LUT6
    generic map(
      INIT => X"40A000A111B111B1"
    )
    port map (
      I0 => pro_c_q(6),
      I1 => pro_c_q(5),
      I2 => pro_c_q(2),
      I3 => pro_c_q(1),
      I4 => pro_c_q(0),
      I5 => pro_c_q(3),
      O => N331
    );
  InstMemory1_Mram_Instruction8 : MUXF7
    port map (
      I0 => N331,
      I1 => N34,
      S => pro_c_q(4),
      O => instr_8_Q
    );
  InstMemory1_Mram_Instruction132 : LUT5
    generic map(
      INIT => X"FFD5AA80"
    )
    port map (
      I0 => pro_c_q(6),
      I1 => pro_c_q(2),
      I2 => pro_c_q(1),
      I3 => pro_c_q(0),
      I4 => InstMemory1_Mram_Instruction13,
      O => instr_13_Q
    );
  InstMemory1_Mram_Instruction131 : LUT6
    generic map(
      INIT => X"88A0A888567E766E"
    )
    port map (
      I0 => pro_c_q(4),
      I1 => pro_c_q(5),
      I2 => pro_c_q(3),
      I3 => pro_c_q(2),
      I4 => pro_c_q(1),
      I5 => pro_c_q(0),
      O => InstMemory1_Mram_Instruction13
    );
  InstMemory1_Mram_Instruction122 : LUT5
    generic map(
      INIT => X"57550200"
    )
    port map (
      I0 => pro_c_q(6),
      I1 => pro_c_q(1),
      I2 => pro_c_q(0),
      I3 => pro_c_q(2),
      I4 => InstMemory1_Mram_Instruction12,
      O => instr_12_Q
    );
  InstMemory1_Mram_Instruction121 : LUT6
    generic map(
      INIT => X"4019201102110111"
    )
    port map (
      I0 => pro_c_q(4),
      I1 => pro_c_q(5),
      I2 => pro_c_q(2),
      I3 => pro_c_q(3),
      I4 => pro_c_q(0),
      I5 => pro_c_q(1),
      O => InstMemory1_Mram_Instruction12
    );
  InstMemory1_Mram_Instruction1112 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => pro_c_q(6),
      I1 => pro_c_q(1),
      I2 => pro_c_q(2),
      I3 => InstMemory1_Mram_Instruction111,
      O => instr_11_Q
    );
  InstMemory1_Mram_Instruction1111 : LUT6
    generic map(
      INIT => X"2100010801080140"
    )
    port map (
      I0 => pro_c_q(3),
      I1 => pro_c_q(4),
      I2 => pro_c_q(5),
      I3 => pro_c_q(2),
      I4 => pro_c_q(1),
      I5 => pro_c_q(0),
      O => InstMemory1_Mram_Instruction111
    );
  InstMemory1_Mram_Instruction9 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => pro_c_q(4),
      I1 => pro_c_q(2),
      I2 => N41,
      I3 => N5,
      I4 => N1210,
      I5 => N13,
      O => instr_9_Q
    );
  InstMemory1_Mram_Instruction9_SW1 : LUT5
    generic map(
      INIT => X"AAAA3335"
    )
    port map (
      I0 => pro_c_q(1),
      I1 => pro_c_q(0),
      I2 => pro_c_q(3),
      I3 => pro_c_q(5),
      I4 => pro_c_q(6),
      O => N13
    );
  InstMemory1_Mram_Instruction9_SW0 : LUT5
    generic map(
      INIT => X"99999899"
    )
    port map (
      I0 => pro_c_q(0),
      I1 => pro_c_q(6),
      I2 => pro_c_q(5),
      I3 => pro_c_q(3),
      I4 => pro_c_q(1),
      O => N1210
    );
  instr_2_SW3 : LUT5
    generic map(
      INIT => X"B889B88B"
    )
    port map (
      I0 => pro_c_q(1),
      I1 => pro_c_q(6),
      I2 => pro_c_q(5),
      I3 => pro_c_q(0),
      I4 => pro_c_q(3),
      O => N5
    );
  instr_2_SW2 : LUT5
    generic map(
      INIT => X"CCC6CC93"
    )
    port map (
      I0 => pro_c_q(1),
      I1 => pro_c_q(0),
      I2 => pro_c_q(3),
      I3 => pro_c_q(6),
      I4 => pro_c_q(5),
      O => N41
    );
  instr_4_2 : LUT4
    generic map(
      INIT => X"7520"
    )
    port map (
      I0 => pro_c_q(6),
      I1 => pro_c_q(1),
      I2 => pro_c_q(2),
      I3 => instr_4_1_548,
      O => instr_0_Q
    );
  instr_4_1 : LUT6
    generic map(
      INIT => X"4019221122110119"
    )
    port map (
      I0 => pro_c_q(4),
      I1 => pro_c_q(5),
      I2 => pro_c_q(2),
      I3 => pro_c_q(3),
      I4 => pro_c_q(0),
      I5 => pro_c_q(1),
      O => instr_4_1_548
    );

end Structure;

