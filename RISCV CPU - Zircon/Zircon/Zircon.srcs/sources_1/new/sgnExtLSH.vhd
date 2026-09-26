----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/16/2026 10:39:41 AM
-- Design Name: 
-- Module Name: sgnExtLSH - Behavioral
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

entity sgnExtLSH is
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
           O : out STD_LOGIC_VECTOR (31 downto 0));
end sgnExtLSH;

architecture Behavioral of sgnExtLSH is
begin
    process (I)
    variable sgn: std_logic;
    begin
        sgn := I(15);
        O <= sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&I(15 downto 0);
    end process;
end Behavioral;
