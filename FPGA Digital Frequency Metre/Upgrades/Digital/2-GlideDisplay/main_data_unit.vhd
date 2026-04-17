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
           select_display : in  STD_LOGIC;
           load_register : in  STD_LOGIC;
           signal_05Hz : inout  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (7 downto 0);
           anode : inout  STD_LOGIC_VECTOR (3 downto 0));
end Data_Unit_main;

architecture Behavioral of Data_Unit_main is

---- Components ----
component frequency_divider
Port(clk, reset : in std_logic;
     clock1, clock2 : inout std_logic);
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

component MUX
Port(A, B : in std_logic_vector;
     E : in std_logic;
	  O : out std_logic_vector);
end component;

component time_multiplexer_4digit
Port(clk, reset, select_display : in std_logic;
     display_value : in std_logic_vector;
	  seg : out std_logic_vector;
	  anode : inout std_logic_vector);
end component;

---- signals ----
signal clk_1kHz, sigAND, sigOR : std_logic;
signal datain, dataout : std_logic_vector(31 downto 0);
signal dispval : std_logic_vector(15 downto 0);

begin

cop1: frequency_divider
Port map(clk => clk,
         reset => reset,
			clock1 => clk_1kHz,
			clock2 => signal_05Hz);

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
			data_in => datain,
			data_out => dataout);

cop4: MUX
Port map(A => dataout(31 downto 16),
         B => dataout(15 downto 0),
			O => dispval,
			E => select_display);

cop5: time_multiplexer_4digit
Port map(clk => clk_1kHz,
         reset => reset,
			select_display => select_display,
			display_value => dispval,
			seg => seg,
			anode => anode);

end Behavioral;

