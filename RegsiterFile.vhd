library IEEE; 
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;
entity RegFile is -- three-port register file
	port(
		clk: in STD_LOGIC;
		we3: in STD_LOGIC;
		ra1, ra2, wa3: in STD_LOGIC_VECTOR(2 downto 0);
		wd3: in STD_LOGIC_VECTOR(15 downto 0);
		rd1, rd2: out STD_LOGIC_VECTOR(15 downto 0));
end;

architecture Behavioral of RegFile is
	type ramtype is array (7 downto 0) 
	of STD_LOGIC_VECTOR(15 downto 0);
	signal mem: ramtype := ( x"0000",
									 x"0000",
									 x"0000",
									 x"0000",
									 x"0000",
									 x"0000",
									  x"0000",
									 x"0000"
									 );
	
begin
	process(clk) begin
		if rising_edge(clk) then
			if we3 = '1' then mem(to_integer(unsigned(wa3))) <= wd3;
			end if;
		end if;
	end process;
	
	rd1 <= mem(to_integer(unsigned(ra1)));
	rd2 <= mem(to_integer(unsigned(ra2)));

end;