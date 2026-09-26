--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
--
-- Create Date:    02:32:02 04/29/09
-- Design Name:    
-- Module Name:    modulo_counter - Behavioral
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

entity modulo is
  Port(clk : in std_logic;
       reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic);
end modulo;

architecture Behavioral of modulo is

---- Signal ----
signal cnt : std_logic_vector(1 downto 0);

begin
  process(clk,reset,ce,cnt)
    begin
	   if(reset = '1')then
		  cnt <= "00";
      elsif(clk'event and clk = '1') then
        if(ce = '1')then
		    if(cnt = "10")then
		      cnt <= "00";
		    else
			   cnt <= cnt + 1;
		    end if;
		 else
		  cnt <= "00";
		end if;
	  end if;
  end process;
  tc <= cnt(1) and (not cnt(0));
end Behavioral;