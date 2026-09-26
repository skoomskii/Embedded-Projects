----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2026 04:19:41 PM
-- Design Name: 
-- Module Name: sgnExt12_32 - Behavioral
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

entity sgnExt12_32 is
    Port ( I : in STD_LOGIC_VECTOR (11 downto 0);
           O : out STD_LOGIC_VECTOR (31 downto 0));
end sgnExt12_32;

architecture Behavioral of sgnExt12_32 is
begin
    process (I)
    variable sgn: std_logic;
    begin
        sgn := I(11);
        O <= sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&sgn&I;
    end process;
end Behavioral;
