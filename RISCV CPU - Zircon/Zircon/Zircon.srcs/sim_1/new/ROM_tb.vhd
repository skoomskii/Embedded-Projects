----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/21/2026 12:54:03 PM
-- Design Name: 
-- Module Name: ROM_tb - Behavioral
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

entity ROM_tb is
--  Port ( );
end ROM_tb;

architecture Behavioral of ROM_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ROM
    generic ( add_width : integer := 32;
              data_width : integer := 32);
    Port ( clk : in STD_LOGIC;
           enable : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (add_width-1 downto 0);
           DO : out STD_LOGIC_VECTOR (data_width-1 downto 0));
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
   signal address : STD_LOGIC_VECTOR (31 downto 0);  

 	--Outputs
   signal DO : STD_LOGIC_VECTOR (31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;

begin
 
	-- Instantiate the Unit Under Test (UUT)
   uut1: ROM PORT MAP (
           clk => clk,
           enable => enable,
           address => address,
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
      -- hold reset state
      enable <= '0';
      address <= x"00000000";
      wait for clk_period*2;
      
      enable <= '1';
      wait for clk_period;
      
      address <= x"00000004";
      wait for clk_period;
      
      address <= x"00000008";
      wait for clk_period;
      
      address <= x"0000000c";
      wait for clk_period;
      
      address <= x"00000010";
      wait for clk_period;
      
      address <= x"00000014";
      wait for clk_period;
      
      address <= x"00000018";
      wait for clk_period;
      
      address <= x"0000001c";
      wait for clk_period;
      
      address <= x"00000020";
      wait for clk_period;  
      
      address <= x"00000084";
      wait for clk_period;                              
      
      address <= x"0000008c";
      wait for clk_period;  
      
      address <= x"00000090";
      wait for clk_period;      
      
      wait;

end process;
end Behavioral;
