----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    10:31:13 09/21/2017 
-- Design Name: 
-- Module Name:    Load_Shift_Register_32bit - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PIPO_Hold is
  Port(clk : in std_logic;
       reset : in std_logic;
       en : in std_logic;		 
	   DI : in std_logic_vector(31 downto 0);
       DO : out std_logic_vector(31 downto 0));
end PIPO_Hold;

architecture Behavioral of PIPO_Hold is

---- Signal ----
signal DO_sig : std_logic_vector(31 downto 0);

begin
  process(clk, reset, en, DI)
    begin
	   if(reset = '1')then
		DO_sig <= X"00000000";
		elsif(clk'event and clk='1')then
			if(en = '1')then
			DO_sig <= DI;
			end if;
		end if;
	 end process;
	 DO <= DO_sig;
end Behavioral;