library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity outport is
	port(
		clk:  in std_logic ;
		latchenA : in std_logic ;
		latchenB : in std_logic ;
		data_in : in std_logic_vector (15 downto 0);
		data_outA : out std_logic_vector (7 downto 0);
		data_outB : out std_logic_vector (7 downto 0)
		);	
end outport;

architecture Behavioral of outport is
	type ram is array (1 downto 0) of std_logic_vector(7 downto 0);
	signal latchab : ram := (x"00",
									 x"00"
									 );
begin 
	process (clk, latchenA, latchenB, latchab, data_in)
	begin 
		if (rising_edge(clk)) then 
			if (latchenA = '1') then 
				latchab(1)<=data_in(7 downto 0);
			elsif(latchenB = '1') then 
				latchab(0)<=data_in(15 downto 8);
			end if;
		end if;
		data_outA <= latchab(1); 
		data_outB <= latchab(0); 
	end process;
end Behavioral;