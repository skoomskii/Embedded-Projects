----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:18:45 10/29/2021 
-- Design Name: 
-- Module Name:    Frequency_Metre - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Frequency_Metre is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           signal_F : in  STD_LOGIC;
           select_display : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           anode : inout  STD_LOGIC_VECTOR (3 downto 0);
           done : out  STD_LOGIC);
end Frequency_Metre;

architecture Behavioral of Frequency_Metre is

---- Components ----
component Data_Unit_main
Port(clk, reset, reset_counter, signal_F, select_display, load_register : in std_logic;
     signal_05Hz : inout std_logic;
     anode : inout std_logic_vector;
	  seg : out std_logic_vector);
end component;

component FSMD
Port(clk, reset, signal_05Hz : in std_logic;
     reset_counter, load_data, done : out std_logic);
end component;

---- signals ----
signal sig_05, sig_reset, sig_load : std_logic;

begin

cop1: Data_Unit_main
Port map(clk => clk,
         reset => reset,
			signal_F => signal_F,
			select_display => select_display,
			signal_05Hz => sig_05,
			reset_counter => sig_reset,
			load_register => sig_load,
			seg => seg,
			anode => anode);

cop2: FSMD
Port map(clk => clk,
         reset => reset,
			signal_05Hz => sig_05,
			reset_counter => sig_reset,
			load_data => sig_load,
			done => done);

end Behavioral;

