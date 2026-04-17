----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    10:31:13 09/21/2017 
-- Design Name: 
-- Module Name:    Load_Shift_Register_10digit - Behavioral 
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

entity PIPO_Hold is
  Port(clk : in std_logic;
		 reset : in std_logic;
       load : in std_logic;		 
		 data_i : in std_logic_vector(63 downto 0);
       data_o : out std_logic_vector(63 downto 0));
end PIPO_Hold;

architecture Behavioral of PIPO_Hold is

---- Signal ----
signal dataout_sig : std_logic_vector(63 downto 0);

begin
  process(clk, reset, load, data_i)
    begin
	   if(reset = '1')then
		dataout_sig <= X"0000000000000000";
		elsif(clk'event and clk='1')then
			if(load = '1')then
			dataout_sig <= data_i;
			end if;
		end if;
	 end process;
	 data_o <= dataout_sig;
end Behavioral;