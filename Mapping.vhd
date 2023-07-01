library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mips16Bit is
	port(
		clk, reset : in std_logic;
		in_port : in std_logic_vector(15 downto 0);
		out_portA : out std_logic_vector(7 downto 0);
		out_portB : out std_logic_vector(7 downto 0)
		);
end Mips16Bit;

architecture Behavioral of Mips16Bit is
	
	
	-- control signals
	signal Zero : std_logic;
	signal Branch_Out : std_logic;
	
	signal RegDst : std_logic_vector(1 downto 0);
	signal Bne : std_logic;
	signal Branch : std_logic;
	signal Jump : std_logic;
	signal MemToReg : std_logic_vector(1 downto 0);
	signal ALUOP : std_logic_vector(2 downto 0);
	signal MemWrite : std_logic;
	signal ALUSrc : std_logic;
	signal JR : std_logic;
	signal RegWrite : std_logic;
	signal hlt : std_logic;
	signal enablebuffer : std_logic; 
   signal out_enable : std_logic;  --new signals
   signal latchA : std_logic;
   signal latchB : std_logic;
   signal sign_ex: std_logic_VECTOR ( 1 downto 0 );

	--
	signal pcin, pcout : std_logic_vector(15 downto 0);
	signal instr : std_logic_vector(15 downto 0);
	signal SignExtend_Out : std_logic_vector(15 downto 0);
	signal MUX2_1_ALU_Out : std_logic_vector(15 downto 0);
	signal MUX2_1_BNE_Out : std_logic_vector(15 downto 0);
	signal data_in, data_out, demux_mux : std_logic_vector(15 downto 0); -- ports

	signal ALU_Result : std_logic_vector(15 downto 0);
	signal ReadData_dmem : std_logic_vector(15 downto 0);
	signal PC_Adder_Out : std_logic_vector(15 downto 0);
	signal PC_Adder_Branch_Out : std_logic_vector(15 downto 0);
	signal Demux_In : std_logic_vector(15 downto 0);
	
	--Mux4_1_Jump
	signal Mux4_1_Jump_In2and3 : std_logic_vector(15 downto 0);

	signal Mux4_1_Jump_Sel : std_logic_vector(1 downto 0);
	
	signal Mux4_1_Jump_Out : std_logic_vector(15 downto 0);
	--
	-- Register File
	--signal ReadReg1 : std_logic_vector(2 downto 0) := instr(11 downto 9);
	--signal ReadReg2 : std_logic_vector(2 downto 0):= instr(8 downto 6);
	signal WriteReg : std_logic_vector(2 downto 0);
	signal ReadData1: std_logic_vector(15 downto 0);
	signal ReadData2: std_logic_vector(15 downto 0);
	signal WriteData: std_logic_vector(15 downto 0);
	--

	signal ALU_Control : std_logic_vector(3 downto 0);
	

begin
	
	ControlUnit1: entity work.ControlUnit(Behavioral) port map(
	instr(15 downto 12), instr(8), RegDst, Bne, Branch, Jump,
	MemToReg, ALUOP, MemWrite, ALUSrc, JR, RegWrite, hlt,
	enablebuffer, out_enable, latchA, latchB, sign_ex);

	pro_c : entity work.PC (Behavioral) port map(clk, reset,pcin ,pcout );
	
	InstMemory1: entity work.InstMemory(Behavioral) port map(
	pcout, instr);

	
	Mux4_1_WriteReg: entity work.Mux4_1(Behavioral) generic map(3) 
	port map(instr(8 downto 6), instr(5 downto 3), "111", instr(11 downto 9),
	RegDst, WriteReg);
	
   RegFile1: entity work.RegFile(Behavioral) port map(
	clk, RegWrite, instr(11 downto 9), instr(8 downto 6), WriteReg, 
	WriteData, ReadData1, ReadData2);
	
	SignExtend: entity work.SignExtend(Behavioral) port map(
	sign_ex, instr(7 downto 0),SignExtend_Out);
	
	Alu_Controller1: entity work.Alu_Controller(Behavioral) port map(
	ALU_Control, ALUOP, instr(2 downto 0));
	
	MUX2_1_ALU: entity work.Mux2_1(Behavioral) generic map(16)
	port map(ReadData2, SignExtend_Out, ALUSrc, MUX2_1_ALU_Out);
	
	Alu1: entity work.Alu(Behavioral) port map(
	ReadData1, MUX2_1_ALU_Out, ALU_Control, ALU_Result, Zero);
	
	DataMemory1: entity work.DataMemory(Behavioral) port map(
	clk, MemWrite, ALU_Result(7 downto 0), ReadData2, ReadData_dmem);
	
	Mux4_1_Demux: entity work.Mux4_1(Behavioral) generic map(16)
	port map(ALU_Result, ReadData_dmem, PC_Adder_Out, PC_Adder_Out, MemToReg, Demux_In);
	
	Demux_DataOut: entity work. demux(behavioral) port map(
	out_enable, Demux_In, demux_mux, data_out);
	
	Mux_DataIn: entity work.Mux2_1(Behavioral) generic map(16)
	port map(demux_mux, in_port , enablebuffer, WriteData);
	
	
	PC_Adder: entity work.adder(Behavioral) port map(
	pcout, x"0001",PC_Adder_Out);
	
	PC_Adder_Branch: entity work.AdderForBranch(Behavioral) port map(
	PC_Adder_Out, SignExtend_Out, PC_Adder_Branch_Out);
	
	Branch_Logic1 : entity work.Branch_Logic(Behavioral) port map(
	Branch, Bne, Zero, Branch_Out);
	
	MUX2_1_BNE: entity work.Mux2_1(Behavioral) generic map(16)
	port map(PC_Adder_Out, PC_Adder_Branch_Out, Branch_Out, MUX2_1_BNE_Out);
	
		Mux4_1_Jump_Sel <= Jump&JR;
 	   Mux4_1_Jump_In2and3 <= (PC_Adder_Out(15 downto 12)& instr(11 downto 0)) ;
	
	Mux4_1_Jump: entity work.Mux4_1(Behavioral) generic map(16)
	port map(MUX2_1_BNE_Out, ReadData1, Mux4_1_Jump_In2and3,
	Mux4_1_Jump_In2and3,Mux4_1_Jump_Sel , Mux4_1_Jump_Out);
	

	latch : entity work.outport(Behavioral) port map(clk,latchA,latchB,data_out,out_portA,out_portB);	
		
	
	
	MUX2_1_PC: entity work.Mux2_1(Behavioral)generic map(16)
	port map(Mux4_1_Jump_Out, pcout, hlt, pcin);
	
	
end Behavioral;

