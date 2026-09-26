----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/16/2026 01:23:30 PM
-- Design Name: 
-- Module Name: L1Cache_tb - Behavioral
-- Project Name: Zircon v1.0.0
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity L1Cache_tb is
--  Port ( );
end L1Cache_tb;

architecture Behavioral of L1Cache_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT L1Cache
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           read : in STD_LOGIC;
           write : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (31 downto 0);
           mode : in STD_LOGIC_VECTOR (2 downto 0);
           DI : in STD_LOGIC_VECTOR (31 downto 0);
           DO : out STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal read : STD_LOGIC := '0';
   signal write : STD_LOGIC := '0';
   signal address : STD_LOGIC_VECTOR (31 downto 0);
   signal mode : STD_LOGIC_VECTOR (2 downto 0);   
   signal DI : std_logic_vector (31 downto 0);

 	--Outputs
   signal DO : STD_LOGIC_VECTOR (31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: L1Cache PORT MAP (
           clk => clk,
           reset => reset,
           read => read,
           write => write,
           address => address,
           mode => mode,
           DI => DI,
           DO => DO
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
      reset <= '1';
      read <= '0';
      write <= '0';
      wait for clk_period*2;

      -- insert stimulus here
      reset <= '0';
      wait for clk_period;
      
--      ---- Init SW
--      write <= '1';
--      address <= x"00000000";
--      mode <= "010";
--      DI <= x"ffffabcd";
--      wait for clk_period;
      
--      ----
--      write <= '0';
--      wait for clk_period;
--      ----
      
      --- LB
      read <= '1';
      address <= x"00000000";
      mode <= "000";
      DI <= x"ffffabcd";
      wait for clk_period;
      
      ----
      read <= '0';
      wait for clk_period;
      ----
      
      --- SW
      write <= '1';
      address <= x"00000000";
      mode <= "010";
      DI <= x"ffffabcd";
      wait for clk_period;
      
      ----
      write <= '0';
      wait for clk_period;
      ----
      
      --- LB
      read <= '1';
      address <= x"00000000";
      mode <= "000";
      DI <= x"ffffabcd";
      wait for clk_period;      
      
      ----
      read <= '0';
      wait for clk_period;
      ----
      
      --- LH
      read <= '1';
      address <= x"00000004";
      mode <= "001";
      DI <= x"ffffabcd";
      wait for clk_period;
      
      ----
      read <= '0';
      wait for clk_period;
      ----      
      
      --- SH
      write <= '1';
      address <= x"00000004";
      mode <= "001";
      DI <= x"ffffabcd";
      wait for clk_period;  
      
      ----
      write <= '0';
      wait for clk_period;
      ----       
      
      --- LH
      read <= '1';
      address <= x"00000004";
      mode <= "001";
      DI <= x"ffffabcd";
      wait for clk_period;         
      
      ----
      read <= '0';
      wait for clk_period;
      ----
      
      --- LW
      read <= '1';
      address <= x"00000008";
      mode <= "010";
      DI <= x"1234abcd";
      wait for clk_period;
      
      ----
      read <= '0';
      wait for clk_period;
      ----      
      
      --- SW
      write <= '1';
      address <= x"00000008";
      mode <= "010";
      DI <= x"1234abcd";
      wait for clk_period; 
      
      ----
      write <= '0';
      wait for clk_period;
      ----      
      
      --- LW
      read <= '1';
      address <= x"00000008";
      mode <= "010";
      DI <= x"1234abcd";
      wait for clk_period;
      
      ----   
      read <= '0';
      wait for clk_period;
      ----          
      
      --- LBU
      read <= '1';
      address <= x"0000000c";
      mode <= "100";
      DI <= x"0fffabcd";
      wait for clk_period; 
      
      ----
      read <= '0';
      wait for clk_period;
      ----      
      
      --- S
      write <= '1';
      address <= x"0000000c";
      mode <= "010";
      DI <= x"ffffabcd";
      wait for clk_period;  
      
      ----
      write <= '0';
      wait for clk_period;
      ----           
      
      --- LBU
      read <= '1';
      address <= x"0000000c";
      mode <= "100";
      DI <= x"00000000";
      wait for clk_period;
      
      ----   
      read <= '0';
      wait for clk_period; 
      ----   
          
      --- LHU
      read <= '1';
      address <= x"00000010";
      mode <= "101";
      DI <= x"00000000";
      wait for clk_period;
      
      ----
      read <= '0';
      wait for clk_period;
      ----            
      
      --- S
      write <= '1';
      address <= x"00000010";
--      mode <= "001";
      mode <= "010";
      DI <= x"ffffabcd";
      wait for clk_period;    
      
      ----
      write <= '0';
      wait for clk_period;
      ----         
      
      --- LHU
      read <= '1';
      address <= x"00000010";
      mode <= "101";
      DI <= x"00000000";
      wait for clk_period;          

      wait;
   end process;

end Behavioral;
