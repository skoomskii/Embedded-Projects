----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    14:22:58 01/12/2023 
-- Design Name: 
-- Module Name:    mux32_81 - Behavioral 
-- Project Name: Zircon v1.0.0
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

entity mux_11 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           O : out  STD_LOGIC;
           sel : in  STD_LOGIC);
end mux_11;

architecture Behavioral of mux_11 is
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