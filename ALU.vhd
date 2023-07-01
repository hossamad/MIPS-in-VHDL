library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Alu is
    Port ( ALU_in1 : in  STD_LOGIC_VECTOR (15 downto 0);
           ALU_in2 : in  STD_LOGIC_VECTOR (15 downto 0);
           ALU_Control : in  STD_LOGIC_VECTOR (3 downto 0);
           ALU_Result : out  STD_LOGIC_VECTOR (15 downto 0);
           Zero : out  STD_LOGIC
			  );
end Alu;

architecture Behavioral of Alu is

	signal resultX : STD_LOGIC_VECTOR (15 downto 0);
	-- why we use this signal? because we need to read ALU_Result for
	-- determinig the zero flag, but it's an output and we are not allowed
	-- to read it, se we read the signal instead.
	
begin
	process(ALU_in1, ALU_in2, ALU_Control)
	begin
	
		case ALU_Control is 
		
			when "0000" => --Add
				resultX <= std_logic_vector(unsigned(ALU_in1) + unsigned(ALU_in2));
			
			when "0001" => --Subtract
				resultX <= std_logic_vector(unsigned(ALU_in1) - unsigned(ALU_in2));
				
			when "0010" => --Bitwise AND
				resultX <= ALU_in1 and ALU_in2;
				
			when "0011" => --Bitwise OR
				resultX <= ALU_in1 or ALU_in2;
				
			when "0100" => --Bitwise NOR (NOT-OR)
				resultX <= ALU_in1 nor ALU_in2;
			
			when "0101" => --Bitwise XOR (Exclusive-OR)
				resultX <= ALU_in1 xor ALU_in2;
			
			when "0110" => --Logical Shift Left
				resultX <= ALU_in1(14 downto 0) & '0';		
			
         when "0111" => --Logical Shift Right
				resultX <= '0' & ALU_in1(15 downto 1);	
				
			when "1110" => --PASS ALUA 
				resultX <= ALU_in1(15 downto 0);	
         
			when "1111" => --PASS ALUB
				resultX <= ALU_in2(15 downto 0);	
				
			when others => null; --nop
				resultX <= x"1111";
		end case;	
	end process;
	
	ALU_Result <= resultX;
	Zero <= '1' when resultX = x"0000" else
			  '0';

end Behavioral;

