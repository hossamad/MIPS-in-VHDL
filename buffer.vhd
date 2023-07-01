
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity inport is
port ( 
			bufferen : in std_logic ;
		  	data_in : in std_logic_vector (15 downto 0);
			data_out : out std_logic_vector (15 downto 0)
		);	
end inport;

architecture Behavioral of inport is

begin
	data_out <= data_in when bufferen = '1' else
					x"0000";
end Behavioral;

