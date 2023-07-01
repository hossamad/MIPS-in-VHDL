library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use STD.TEXTIO.all;
use IEEE.NUMERIC_STD.ALL;
entity DataMemory is -- data memory
	port(
		clk, we : in STD_LOGIC;
		a: in STD_LOGIC_VECTOR (7 downto 0);
		wd: in STD_LOGIC_VECTOR (15 downto 0);
		rd: out STD_LOGIC_VECTOR (15 downto 0)
		);
end;

architecture Behavioral of DataMemory is
		type ramtype is array (255 downto 0) of STD_LOGIC_VECTOR(15 downto 0);
		signal mem: ramtype;
begin
	process (clk,a)
		begin 
			if falling_edge(clk) then
				if ( we = '1' ) then 
			   	mem(to_integer(unsigned(a(7 downto 0)))) <= wd;
			  else 
	            rd <= mem(to_integer(unsigned(a(7 downto 0))));
	         end if ;
				end if ;
			 
	
	end process;
end;