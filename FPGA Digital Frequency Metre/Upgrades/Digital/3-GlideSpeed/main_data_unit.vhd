----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:47:47 10/25/2021 
-- Design Name: 
-- Module Name:    main_data_unit - Behavioral 
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

entity Data_Unit_main is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           reset_counter : in  STD_LOGIC;
           signal_F : in  STD_LOGIC;
           load_register : in  STD_LOGIC;
           signal_05Hz : inout  STD_LOGIC;
			  speed : in std_logic_vector(1 downto 0);
           seg : out  STD_LOGIC_VECTOR (7 downto 0);
           anode : inout  STD_LOGIC_VECTOR (3 downto 0));
end Data_Unit_main;

architecture Behavioral of Data_Unit_main is

---- Components ----
component frequency_divider
Port(clk, reset : in std_logic;
     clock1, clock2, clock3, clock4, clock5 : inout std_logic);
end component;

component mod10k_counter
Port(clk, reset, ce : in std_logic;
     tc : out std_logic;
	  dataout : out std_logic_vector);
end component;

component Hold_Register_32bit
Port(clk, reset : in std_logic;
     data_in : in std_logic_vector;
	  data_out : out std_logic_vector);
end component;

component sweep
Port(clock3,clock4,clock5,reset : in std_logic;
     datain,speed : in std_logic_vector;
	  dataout : out std_logic_vector);
end component;

component time_multiplexer_4digit
Port(clk, reset : in std_logic;
     display_value : in std_logic_vector;
	  seg : out std_logic_vector;
	  anode : inout std_logic_vector);
end component;

---- signals ----
signal clk_1kHz,clk_3,clk_4,clk_5,sigAND,sigOR : std_logic;
signal datain, dataout : std_logic_vector(31 downto 0);
signal dispval : std_logic_vector(19 downto 0);

begin

cop1: frequency_divider
Port map(clk => clk,
         reset => reset,
			clock1 => clk_1kHz,
			clock2 => signal_05Hz,
			clock3 => clk_3,
			clock4 => clk_4,
			clock5 => clk_5);

sigAND <= (signal_F AND signal_05Hz);
sigOR <= (reset OR reset_counter);
datain(31 downto 28) <= "0000";
datain(7 downto 0) <= "10100010";

cop2: mod10k_counter
Port map(clk => sigAND,
         reset => sigOR,
			ce => '1',
			dataout => datain(27 downto 8));

cop3: Hold_Register_32bit
Port map(clk => load_register,
         reset => reset,
			data_in => datain(31 downto 0),
			data_out => dataout(31 downto 0));

cop4: sweep
Port map(clock3 => clk_3,
         clock4 => clk_4,
			clock5 => clk_5,
			speed => speed,
         reset => reset,
			datain => dataout(31 downto 0),
			dataout => dispval);

cop5: time_multiplexer_4digit
Port map(clk => clk_1kHz,
         reset => reset,
			display_value => dispval(19 downto 0),
			seg => seg,
			anode => anode);

end Behavioral;

