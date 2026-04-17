--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
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

entity Reg_4bit is
  port(C : in std_logic;
       CLR : in std_logic;
		 Din : in std_logic_vector(3 downto 0);
		 Dout : out std_logic_vector(3 downto 0));
end Reg_4bit;

architecture Behavioral of Reg_4bit is
begin

  process(C, CLR, Din)
    begin
	 
	   if(CLR = '1')then
		  Dout <= "1111";
      elsif(C'event and C ='1')then
		  Dout <= Din;
		end if;
		
  end process;
end Behavioral;