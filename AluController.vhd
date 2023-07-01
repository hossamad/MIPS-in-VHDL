library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Alu_Controller is
	port(
		ALU_Control: out std_logic_vector(3 downto 0);
		ALUOp      : in  std_logic_vector(2 downto 0);
		FUNC      : in  std_logic_vector(2 downto 0)
	);
end Alu_Controller;
 
architecture Behavioral of Alu_Controller is
begin 
	
	ALU_Control <= "0000" when ((ALUOp =  "000" and FUNC ="000")or ALUOp =  "001") else --add --Rtype or itype 
		"0001" when ((ALUOp =  "000" and FUNC ="001")or ALUOp = "100")else --sub
		"0010" when ((ALUOp =  "000" and FUNC ="010")or ALUOp = "010")else --and
	   "0011" when ((ALUOp =  "000" and FUNC ="011")or ALUOp = "011")else --or 
		"0100" when (FUNC ="100" and ALUOp = "000")else --nor --only for Rtype
		"0101" when (FUNC ="101" and ALUOp = "000")else--xor 
		"0110" when (FUNC ="110" and ALUOp = "000")else --SLL
		"0111" when (FUNC ="110" and ALUOp = "000")  else --SRL  
		"1110" when (ALUOp = "110") else -- pass ALUA
		"1111" when (ALUOp = "111")  else -- pass ALUB 
		"1000" ;--do nothing
end Behavioral;
