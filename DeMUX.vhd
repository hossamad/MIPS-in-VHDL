library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux is
	port(
		s_out : in std_logic;
		demux_in : in std_logic_vector(15 downto 0);
		demux_out0 : out std_logic_vector(15 downto 0);
		demux_out1 : out std_logic_vector(15 downto 0)
		);
end demux;

architecture Behavioral of demux is

begin
	process(demux_in, s_out) is
	begin
		demux_out0 <= x"0000";
		demux_out1 <= x"0000";
		if(s_out = '0') then
			demux_out0 <= demux_in;
		else
			demux_out1 <= demux_in;
		end if;
	end process;	
end Behavioral;

