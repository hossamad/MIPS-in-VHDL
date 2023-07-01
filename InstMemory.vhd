library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity InstMemory is
    Port ( 
	        Read_Address : in   STD_LOGIC_VECTOR (15 downto 0);
            Instruction  : out  STD_LOGIC_VECTOR (15 downto 0)
			);
end InstMemory;

architecture Behavioral of InstMemory is
	--define structure : array of 71 location each location 16 bits
	type ROM is array(0 to 8) of std_logic_vector(15 downto 0);
				
	-- important note : use num. of elements equal num of inst that U have in UR code.
	-- or use const. num of elements and fill the empty places by this x"0000"
	-- create an object of this structure
	constant INST_M : ROM := (
	--fill code here
"1101001100000010",
"1101010000000101",
"1001011010000011",
"0000001100100000",
"0100011011000001",
"1011000000000010",
"0010100100000000",
"0010100000000000",
"1111000000000000"

	);

begin
	Instruction <= INST_M(to_integer(unsigned(Read_Address(15 downto 0))));
end Behavioral;
