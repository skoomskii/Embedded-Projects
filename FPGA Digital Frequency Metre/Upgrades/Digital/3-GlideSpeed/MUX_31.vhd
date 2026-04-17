----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:22:25 10/25/2021 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_31 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  C : in std_logic;
           E : in  STD_LOGIC_VECTOR(1 downto 0);
           O : out  STD_LOGIC);
end MUX_31;

architecture Behavioral of MUX_31 is
begin

process(A,B,C,E)
begin
case E is

when "00" =>
O <= A;
when "01" =>
O <= B;
when "10" =>
O <= C;
when others =>
O <= C;

end case;
end process;
end Behavioral;