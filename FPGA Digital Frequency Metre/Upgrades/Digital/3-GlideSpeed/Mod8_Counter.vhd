----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:39:47 11/12/2021 
-- Design Name: 
-- Module Name:    Mod8_Counter - Behavioral 
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

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mod8_Counter is
  Port(clk : in std_logic;
       reset : in std_logic;
		 ce : in std_logic;
		 dataout : out std_logic_vector(2 downto 0));
end Mod8_Counter;

architecture Behavioral of Mod8_Counter is
signal cnt : std_logic_vector(2 downto 0);

begin
  process(clk,reset,ce,cnt)
    begin
	   if(reset = '1')then
		  cnt <= "000";
      elsif(clk'event and clk = '1') then
        if(ce = '1')then
		    if(cnt = "111")then
		      cnt <= "000";
		    else
			   cnt <= cnt + 1;
		    end if;
		  end if;
	   end if;
    end process;

dataout <= cnt;

end Behavioral;