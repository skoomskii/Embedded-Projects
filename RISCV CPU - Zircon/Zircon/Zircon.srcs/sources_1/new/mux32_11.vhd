----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/14/2026 02:51:32 PM
-- Design Name: 
-- Module Name: mux32_11 - Behavioral
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

entity mux32_11 is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           O : out STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC);
end mux32_11;

architecture Behavioral of mux32_11 is

begin
	process(A, B, sel)
	begin
		case sel is
		when '0' =>
		O <= A; -- connect A to O
		when '1' =>
		O <= B; -- connect B to O
		when others =>
		end case;
	end process;
end Behavioral;
