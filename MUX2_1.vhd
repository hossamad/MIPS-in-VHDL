library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is -- two-input multiplexer
	generic(width: integer := 16);
	port(
		d0, d1 : in STD_LOGIC_VECTOR(width-1 downto 0);
		s : in STD_LOGIC;
		y : out STD_LOGIC_VECTOR(width-1 downto 0)
		);
end;

architecture Behavioral of Mux2_1 is

begin
	y <= d1 when s = '1' else 
		  d0;
end;

