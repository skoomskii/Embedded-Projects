--------------------------------------------------------------------------------
-- Company: Ultimate Virtual Market Limited
-- Engineer: Marcus Lloyde George
--
-- Create Date:    16:27:46 04/29/09
-- Design Name:    
-- Module Name:    time_multiplexer_main - Behavioral
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

entity time_multiplexer_main is
  Port(clk : in std_logic;
       reset : in std_logic;
		 data_in : in std_logic_vector(7 downto 0);
       seg : out std_logic_vector(6 downto 0); 
       anode : inout std_logic_vector(3 downto 0));
end time_multiplexer_main;

architecture Behavioral of time_multiplexer_main is



begin


end Behavioral;









------------------------components----------------------
-------------------------signals------------------------


















------------------------components----------------------
--component frequency_divider
--  Port(clk    : in std_logic;
--       reset  : in std_logic;
--		 clock1 : inout std_logic);
--end component;
--
--component time_multiplexer_4digit
--  Port(clk : in std_logic; --multiplexing clock(1 kHz)      
--       reset : in std_logic; -- reset signal 
--		 display_value : in std_logic_vector(15 downto 0); --BCD digits to be displayed
--       seg : out std_logic_vector(6 downto 0); --7 cathodes
--       anode : inout std_logic_vector(3 downto 0));--selection of the 4 7-segnment displays
--end component;
--
-------------------------signals------------------------
--signal clk_1kHz : std_logic; --1kHz clock signal
--signal display_value_sig : std_logic_vector(15 downto 0);--for 4 digit time multiplexer
--
--
--begin
--
--display_value_sig <= "00000000" & data_in;--for 4 digit time multiplexer
--
--cop1 : frequency_divider
--  port map(clk => ,
--           reset => ,
--		     clock1 => );
--
--cop2 : time_multiplexer_4digit
--  port map(clk => ,      
--           reset => , 
--		     display_value => ,--"0001001000110100", --display_value_sig,
--           seg => ,
--           anode => );






--signal display_value_sig : std_logic_vector(11 downto 0);--for 3 digit time multiplexer

--display_value_sig <= "0000" & data_in;--for 3 digit time multiplexer
--component time_multiplexer_2digit
--  Port(clk : in std_logic; --multiplexing clock(1 kHz)      
--       reset : in std_logic; -- reset signal 
--		 display_value : in std_logic_vector(7 downto 0); --BCD digits to be displayed
--       seg : out std_logic_vector(6 downto 0); --7 cathodes
--       anode : inout std_logic_vector(3 downto 0));--selection of the 4 7-segnment displays
--end component;

--component time_multiplexer_3digit
--  Port(clk : in std_logic; --multiplexing clock(1 kHz)      
--       reset : in std_logic; -- reset signal 
--		 display_value : in std_logic_vector(11 downto 0); --BCD digits to be displayed
--       seg : out std_logic_vector(6 downto 0); --7 cathodes
--       anode : inout std_logic_vector(3 downto 0));--selection of the 4 7-segnment displays
--end component;



--cop2 : time_multiplexer_2digit
--  port map(clk => clk_1kHz,      
--           reset => reset, 
--		     display_value => data_in,
--           seg => seg,
--           anode => anode); 
--
--cop2 : time_multiplexer_3digit
--  port map(clk => clk_1kHz,      
--           reset => reset, 
--		     display_value => display_value_sig,
--           seg => seg,
--           anode => anode);