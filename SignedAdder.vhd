library IEEE; use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.ALL;
entity adder is -- adder
	port(
		a, b: in STD_LOGIC_VECTOR(15 downto 0);
		y: out STD_LOGIC_VECTOR(15 downto 0));
end;
architecture Behavioral of adder is
begin


	y <= std_logic_vector(signed(a)+ signed(b));

end;