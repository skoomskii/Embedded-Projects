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

entity dmux32_81 is
    Port ( A : out  STD_LOGIC_VECTOR (31 downto 0);
           B : out  STD_LOGIC_VECTOR (31 downto 0);
           C : out  STD_LOGIC_VECTOR (31 downto 0);
           D : out  STD_LOGIC_VECTOR (31 downto 0);
           E : out  STD_LOGIC_VECTOR (31 downto 0);
           F : out  STD_LOGIC_VECTOR (31 downto 0);
           G : out  STD_LOGIC_VECTOR (31 downto 0);
           H : out  STD_LOGIC_VECTOR (31 downto 0);
           O : in   STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0));
end dmux32_81;

architecture Behavioral of dmux32_81 is
begin
	process(O, sel)
	begin
		case sel is
		when "000" =>
		A <= O; -- connect O to A
		when "001" =>
		B <= O; -- connect O to B
		when "010" =>
		C <= O; -- connect O to C
		when "011" =>
		D <= O; -- connent O to D
		when "100" =>
		E <= O; -- connect O to E
		when "101" =>
		F <= O; -- connct O to F
		when "110" =>
		G <= O; -- connect O to G
		when "111" =>
		H <= O; -- connect O to H
		when others =>
		end case;
	end process;
end Behavioral;