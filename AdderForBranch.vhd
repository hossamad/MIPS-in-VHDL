library IEEE; use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;


entity AdderForBranch is -- adder
	port(
		a, b: in std_logic_vector (15 downto 0);
		y: out std_logic_vector (15 downto 0));
end;
architecture Behavioral of AdderForBranch is

begin



	y <= std_logic_vector  (signed(a)+signed(b));

end;