
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_mipsss IS
END tb_mipsss;
 
ARCHITECTURE behavior OF tb_mipsss IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mips16Bit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         in_port : IN  std_logic_vector(15 downto 0);
         out_portA : OUT  std_logic_vector(7 downto 0);
         out_portB : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal in_port : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal out_portA : std_logic_vector(7 downto 0);
   signal out_portB : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mips16Bit PORT MAP (
          clk => clk,
          reset => reset,
          in_port => in_port,
          out_portA => out_portA,
          out_portB => out_portB
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*20;
reset<= '1';
 wait for 100 ns;
 reset<= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
