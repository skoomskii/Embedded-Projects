--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
--
-- Create Date:    12:57:31 10/02/09
-- Design Name:    
-- Module Name:    hold_register_preset_0 - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SIPO_Hold_Reg is
  port(clk : in std_logic;
       reset : in std_logic;
		 data_in : in std_logic_vector(3 downto 0);
		 data_out : out std_logic_vector(31 downto 0));
end SIPO_Hold_Reg;

architecture Behavioral of SIPO_Hold_Reg is

---- Signals ----
signal dataout_sig : std_logic_vector(31 downto 0);

begin
  process(clk, reset, data_in, dataout_sig)
    begin
	   if(reset = '1')then
		  dataout_sig <= x"00000000";
      elsif(clk'event and clk ='1')then
		  dataout_sig <= dataout_sig(27 downto 0) & data_in;
		end if;
  end process;
  	data_out <= dataout_sig;
end Behavioral;