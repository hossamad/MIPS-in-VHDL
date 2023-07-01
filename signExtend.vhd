library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignExtend is
     port (sign_extension_mode :in std_logic_VECTOR (1 downto 0); 
	        data_in             : in std_logic_vector(7 downto 0);
           data_out            : out std_logic_vector(15 downto 0)
			  );
end SignExtend;

architecture Behavioral of SignExtend is
begin

	process(sign_extension_mode, data_in)
	begin
		if (sign_extension_mode = "01" and data_in(5) = '1') then --extend I5 ten times 
			data_out <= "1111111111" & data_in(5 downto 0);
		elsif (sign_extension_mode = "01" and data_in(5) = '0') then --extend I5 ten times 
			data_out <= "0000000000" & data_in(5 downto 0);
		elsif (sign_extension_mode = "00") then --extend zero 10 times 
			data_out <= "0000000000" & data_in(5 downto 0);
		-- The last one happens when mode = "10", but we have to count
		-- for "11" to cover all posibilities
		else --extend zero 8 times only
			data_out <= "00000000" & data_in;
		end if;
	end process;
	
end Behavioral;
