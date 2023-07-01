library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Branch_Logic is
	port(
	Branch, bne, zero : in std_logic;
	Branch_Out : out std_logic
	);
end Branch_Logic;

architecture Behavioral of Branch_Logic is

begin
	Branch_Out <= (branch and zero) or (bne and not zero);

end Behavioral;

