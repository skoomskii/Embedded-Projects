----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    14:22:58 01/12/2023 
-- Design Name: 
-- Module Name:    mux_31 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_31 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end mux_31;

architecture Behavioral of mux_31 is
begin
	process(A, B, C, sel)
	begin
		case sel is
		when "00" =>
		O <= A; -- connect A to O
		when "01" =>
		O <= B; -- connect B to O
		when "10" =>
		O <= C; -- connect C to O
		when others =>
		end case;
	end process;
end Behavioral;