library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is
	port(
		opcode: in std_logic_vector(3 downto 0);
		Extra_Bit: in std_logic;
		regdst: out std_logic_vector(1 downto 0); 
		bne:out std_logic;
		branch: out std_logic;
		jmp:out std_logic;
		memtoreg: out std_logic_vector(1 downto 0);
		aluop: out std_logic_vector(2 downto 0);
		memwrite: out std_logic;
		alusrc: out std_logic;
		jr: out std_logic;
		regwrite: out std_logic;
		hlt: out std_logic;
		enablebuffer: out std_logic; 
		out_enable: out std_logic; 
		latchA: out std_logic;
		latchB: out std_logic;
		sign_ex: out std_logic_VECTOR(1 downto 0)
	);
end ControlUnit;
 
architecture Behavioral of ControlUnit is
 
begin
 
process(opcode, Extra_Bit)

begin

	case opcode is
		when "0010" =>
			if(Extra_Bit = '1') then --outA
				regdst <= "XX";
				bne <= '0';
				branch <= '0';
				jmp <= '0';
				memtoreg <= "00";
				aluop <= "110"; --PASS ALUA
				memwrite <= '0';
				alusrc <= 'X';
				jr <= '0';
				regwrite <= '0';
				hlt <= '0';
				enablebuffer <= '0';
				out_enable <= '1';
				latchA <= '1'; 
				latchB <= '0';
				sign_ex <= "XX";
				
			else
				regdst <= "XX";
				bne <= '0';
				branch <= '0';
				jmp <= '0';
				memtoreg <= "00";
				aluop <= "110"; --PASS ALUA
				memwrite <= '0';
				alusrc <= 'X';
				jr <= '0';
				regwrite <= '0';
				hlt <= '0';
				enablebuffer <= '0';
				out_enable <= '1';
				latchA <= '0';
				latchB <= '1';
				sign_ex <= "XX";

			end if ;	 
			 --assume aluop="00" when add . "01" sub . "10 " and . "11" or ,"100" r type
		when "0000" => -- R type
			regdst <= "01" ;
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <= "00";
			aluop <= "000"; -- R-TYPE 
			memwrite <= '0' ;
			alusrc <= '0';
			jr <= '0' ;
			regwrite <= '1'; 
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <= "XX";

		when "0001" => -- in  
			regdst <=  "01" ;
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <= "XX";
			aluop <= "XXX";
			memwrite <= '0' ;
			alusrc <='X';
			jr <= '0' ;
			regwrite <= '1';  
			hlt <= '0' ;
			enablebuffer <= '1' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <= "XX";
			 
		when "0011" => -- JR  
			regdst <= "XX";
			bne <= 'X' ;
			branch <= 'X' ;
			jmp <= '0' ;
			memtoreg <= "XX";
			aluop <= "XXX" ;
			memwrite <= '0' ;
			alusrc <= 'X';
			jr <= '1' ;
			regwrite <= '0'; 
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <= "XX" ;
			 
		when "0100" => -- Addi  
			regdst <= "00" ;
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <="00";
			aluop <= "001" ; --ADDI
			memwrite <= '0' ;
			alusrc <= '1';
			jr <= '0' ;
			regwrite <='1'; 
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="01"; --EXTEND I5 10 TIMES
			  
		when "0101" => -- Andi  
			regdst <= "00" ;
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <="00";
			aluop <= "010" ; --ANDI
			memwrite <= '0' ;
			alusrc <= '1';
			jr <= '0' ;
			regwrite <='1'; 
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="00";--EXTEND 0 TEN TIMES

		when "0110" => -- Ori  
			regdst <= "00";
			bne <= '0';
			branch <= '0';
			jmp <= '0';
			memtoreg <= "00";
			aluop <= "011"; --ORI
			memwrite <= '0' ;
			alusrc <= '1';
			jr <= '0';
			regwrite <= '1'; 
			hlt <= '0';
			enablebuffer <= '0';
			out_enable <= '0';
			latchA <= '0';
			latchB <= '0';
			sign_ex <="00";

		when "0111" => -- LW  
			regdst <= "00";
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <= "01";
			aluop <= "001" ; --ADDI
			memwrite <= '0' ;
			alusrc <= '1';
			jr <= '0' ;
			regwrite <= '1';  
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="01";

		when "1000" => -- SW  
			regdst <= "XX";
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <= "XX";
			aluop <="001" ;--ADDI
			memwrite <= '1' ;
			alusrc <='1';
			jr <= '0' ;
			regwrite <= '0';    
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <= "01";

		when "1001" => -- BEQ  
			regdst <= "XX" ;
			bne <= '0' ;
			branch <= '1' ;
			jmp <= '0' ;
			memtoreg <= "XX";
			aluop <= "100"; --SUB
			memwrite <= '0' ;
			alusrc <= '0';
			jr <= '0' ;
			regwrite <=   '0';
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="01";

		when "1010" => -- BNE  
			regdst <= "XX";
			bne <= '1' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <= "XX";
			aluop <= "100";--SUB
			memwrite <= '0' ;
			alusrc <= '0';
			jr <= '0' ;
			regwrite <=  '0';
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <= "01";

		when "1011" => -- J  
			regdst <="XX"; 
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '1' ;
			memtoreg <= "XX";
			aluop <="XXX";
			memwrite <= '0' ;
			alusrc <= 'X';
			jr <= '0' ;
			regwrite <='0';    
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="XX";

		when "1100" => -- JAL
			regdst <= "10" ; --WRITE IN R7
			bne <= 'X' ;
			branch <= 'X' ;
			jmp <= '1' ;
			memtoreg <= "10"; --PASS PC+2 TO R7
			aluop <="XXX";
			memwrite <= '0' ;
			alusrc <= 'X';
			jr <= '0' ;
			regwrite <= '1'; 
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="XX";
			
		when "1101" => -- movi
			regdst <= "11" ; --INST 11:9
			bne <= '0' ;
			branch <= '0';
			jmp <= '0' ;
			memtoreg <= "00" ;
			aluop <= "111" ; --PASS ALUB 
			memwrite <='0';
			alusrc <= '1';
			jr <= '0';
			regwrite <= '1' ; 
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <='0' ;
			latchB <='0' ;
			sign_ex <= "10" ; --extend 0 eight times	

		when "1110" => -- nop
			regdst <= "XX";
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <="XX";
			aluop <="XXX";
			memwrite <= '0' ;
			alusrc <='X';
			jr <= '0' ;
			regwrite <='0';
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="XX";

		when "1111" => -- halt  
			regdst <= "XX";
			bne <= 'X' ;
			branch <= 'X' ;
			jmp <= 'X' ;
			memtoreg <="XX";
			aluop <="XXX";
			memwrite <= '0' ;
			alusrc <='X';
			jr <= 'X' ;
			regwrite <= '0';
			hlt <= '1' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="XX";

		when others =>  --repeat nop inst.
			regdst <= "XX";
			bne <= '0' ;
			branch <= '0' ;
			jmp <= '0' ;
			memtoreg <="XX";
			aluop <="XXX";
			memwrite <= '0' ;
			alusrc <='X';
			jr <= '0' ;
			regwrite <='0';
			hlt <= '0' ;
			enablebuffer <= '0' ;
			out_enable <= '0' ;
			latchA <= '0' ;
			latchB <= '0' ;
			sign_ex <="XX";

	end case;
end process;
end Behavioral;


