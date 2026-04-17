--------------------------------------------------------------------------------
-- Company:
-- Engineer: Zidane Hadeed
--
-- Create Date:    16:24:11 04/24/09
-- Design Name:    
-- Module Name:    multiplexer_3to1 - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  Xilinx 7.1 ISE
-- Description:
--
-- Dependencies:
-- 
-- Revision:  1
-- Revision 0.01 - File Created
-- Additional Comments:	 This IPcore can be used by anyone as long as 
--								 this Header Comment Block	is retained in this 
--								 position of the .vhd file
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

entity mux21_36 is
  Port(A : in std_logic_vector(35 downto 0);
       B : in std_logic_vector(35 downto 0);
		 sel : in std_logic;
		 O : out std_logic_vector(35 downto 0));
end mux21_36;

architecture Behavioral of mux21_36 is
begin
  process(A, B, sel)
    begin
	   case sel is
		  when '0' =>
		    O <= A;	--connect A to O
		  when '1' =>
		    O <= B;	--connect B to O
        when others =>
		    O <= x"000000000";
		end case;
	 end process;
end Behavioral;