----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2026 09:42:47 PM
-- Design Name: 
-- Module Name: Zircon_tb - Behavioral
-- Project Name: 
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

entity Zircon_tb is
--  Port ( );
end Zircon_tb;

architecture Behavioral of Zircon_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT CPUCore
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           exc : out STD_LOGIC_VECTOR (31 downto 0);
           flag : out STD_LOGIC);
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal exc : STD_LOGIC_VECTOR (31 downto 0);
   signal flag : STD_LOGIC;  

   -- Clock period definitions
   constant clk_period : time := 10 ns;

begin
 
	-- Instantiate the Unit Under Test (UUT)
   uut1: CPUCore PORT MAP (
           clk => clk,
           reset => reset,
           exc => exc,
           flag => flag
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
      -- hold reset state
      reset <= '1';
      wait for clk_period*2;
      reset <= '0';

      -- insert stimulus here
      wait for clk_period*30;                

      wait;
   end process;

end Behavioral;
