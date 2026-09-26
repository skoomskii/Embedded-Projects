----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/23/2026 06:08:43 PM
-- Design Name: 
-- Module Name: regHold - Behavioral
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

entity regHold is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           en : in STD_LOGIC;
           I : in STD_LOGIC;
           O : out STD_LOGIC);
end regHold;

architecture Behavioral of regHold is

---- Signal ----
signal sig : std_logic;

begin
  process(clk, reset, en, I)
    begin
	   if(reset = '1')then
		sig <= '0';
		elsif(clk'event and clk='1')then
			if(en = '1')then
			sig <= I;
			end if;
		end if;
	 end process;
	 O <= sig;
end Behavioral;