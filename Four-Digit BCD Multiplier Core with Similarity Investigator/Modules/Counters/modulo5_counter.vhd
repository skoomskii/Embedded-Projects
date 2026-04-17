--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
--
-- Create Date:    02:32:02 04/29/09
-- Design Name:    
-- Module Name:    modulo6_counter - Behavioral
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

entity modulo5_counter is
  Port(clk : in std_logic;
       reset : in std_logic;
		 ce : in std_logic;
		 dataout : out std_logic_vector(3 downto 0);
		 tc : out std_logic);
end modulo5_counter;

architecture Behavioral of modulo5_counter is

---- Signal ----
signal cnt : std_logic_vector(3 downto 0);

begin
  process(clk,reset,ce,cnt)
    begin
	   if(reset = '1')then
		  cnt <= "0000";
      elsif(clk'event and clk = '1') then
        if(ce = '1')then
		    if(cnt = "0100")then
		      cnt <= "0000";
		    else
			   cnt <= cnt + 1;
		    end if;
		  end if;
	   end if;
  end process;
  tc <= (not cnt(3)) and cnt(2) and (not cnt(1)) and (not cnt(0));--(not cnt(3)) and (not cnt(2)) and cnt(1) and cnt(0);
  dataout <= cnt;
end Behavioral;