----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    18:54:05 01/12/2023 
-- Design Name: 
-- Module Name:    bcd_adder_4bits - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_adder_4bits is
    Port ( --clk : in std_logic;
			  --reset : in std_logic;
			  X : in  STD_LOGIC_VECTOR (3 downto 0);
           Y : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end bcd_adder_4bits;

architecture Behavioral of bcd_adder_4bits is

---- Signal ----
signal corr,sum : std_logic_vector(4 downto 0);

begin
	process(X,Y,Cin,corr,sum)
	begin
		sum <= ('0' & X) + ('0' & Y) + ("0000" & Cin);
		if(sum > 9)then
			corr <= sum + 6;
			Cout <= corr(4);
			S <= corr(3 downto 0);
		else
			Cout <= sum(4);
			S <= sum(3 downto 0);
		end if;
	end process;
end Behavioral;

