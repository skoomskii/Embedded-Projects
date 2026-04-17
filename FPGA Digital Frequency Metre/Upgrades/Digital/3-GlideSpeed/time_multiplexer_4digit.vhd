--------------------------------------------------------------------------------
-- Company: Ultimate Virtual Market Limited
-- Engineer: Marcus Lloyde George
--
-- Create Date:    02:23:20 04/29/09
-- Design Name:    
-- Module Name:    time_multiplexer_4digit - Behavioral
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

entity time_multiplexer_4digit is
  Port(clk : in std_logic; --multiplexing clock(1 kHz)      
       reset : in std_logic; -- reset signal
		 display_value : in std_logic_vector(19 downto 0); --BCD digits to be displayed
       seg : out std_logic_vector(7 downto 0); --7 cathodes
       anode : inout std_logic_vector(3 downto 0));--selection of the 4 7-segnment displays
end time_multiplexer_4digit;

architecture Behavioral of time_multiplexer_4digit is
begin
   SelectLED: process(clk,reset)   -- selection of the 7-seg_alr: Multiplexing in time
	   begin
		   if reset = '1' then 
			   anode <= "1110";
		   elsif clk 'event and clk  = '1' then
		      anode <=(anode(0) & anode(3 downto 1)); --for 4 digit time multiplexer
		   end if; 
	end process;

   display: process(clk,reset)
   variable dispLED: std_logic_vector(4 downto 0);
	   begin
	      case anode is
		      when "1110" => dispLED := display_value(4 downto 0);
		      when "1101" => dispLED := display_value(9 downto 5);
		      when "1011" => dispLED := display_value(14 downto 10);
		      when "0111" => dispLED := display_value(19 downto 15);
		      when others => dispLED := "11111";
		   end case;

		   case  dispLED(4 downto 1) is		  
	         when "0000"=>
		         seg <= ("1000000" & dispLED(0));	--key 0
		      when "0001"=>
		   	   seg <= ("1111001" & dispLED(0));	--key 1
		      when "0010"=>
		   	   seg <= ("0100100" & dispLED(0));	--key 2
		      when "0011"=>
		   	   seg <= ("0110000" & dispLED(0));	--key 3
		      when "0100"=>
		   	   seg <= ("0011001" & dispLED(0));	--key 4
		      when "0101"=>
		   	   seg <= ("0010010" & dispLED(0)); --key 5
		      when "0110"=>
			      seg <= ("0000010" & dispLED(0));	--key 6
		      when "0111"=>
			      seg <= ("1111000" & dispLED(0));	--key 7
		      when "1000"=>
			      seg <= ("0000000" & dispLED(0));	--key 8
		      when "1001"=>
			      seg <= ("0010000" & dispLED(0));	--key 9
		      when "1010"=>
			      seg <= ("0001001" & dispLED(0));	--key * (H)
		      when "1011"=>
			      seg <= ("1001001" & dispLED(0));	--key # (||)
		      when "1100"=>
			      seg <= ("0001000" & dispLED(0));	--key A
		      when "1101"=>
			      seg <= ("0000000" & dispLED(0));	--key B
		      when "1110"=>
			      seg <= ("1000110" & dispLED(0));	--key C
		      when "1111"=>
			      seg <= ("1111111" & dispLED(0));	-- SPACE
		      when others =>
        		   seg <= ("0000110" & dispLED(0)); -- key E (Error)
	      end case;
	   end process;
end Behavioral;