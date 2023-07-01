library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity PC is -- flip-flop with synchronous reset
	port(
		clk, reset: in STD_LOGIC;
		d: in STD_LOGIC_VECTOR(15 downto 0);
		q: out STD_LOGIC_VECTOR(15 downto 0)
		);
end;

architecture Behavioral of PC is
begin
	process(clk, reset) begin
		if reset = '1' then 
			q <= (others => '0');
		elsif rising_edge(clk) then
			q <= d;
		end if;
	end process;
end;