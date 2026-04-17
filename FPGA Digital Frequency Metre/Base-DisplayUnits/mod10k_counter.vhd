----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:29 10/29/2021 
-- Design Name: 
-- Module Name:    mod10k_counter - Behavioral 
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
library UNISIM;
use UNISIM.VComponents.all;

entity mod10k_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (19 downto 0);
           tc : out  STD_LOGIC);
end mod10k_counter;

architecture Behavioral of mod10k_counter is

---- Components ----
component mod100_counter
Port (clk, reset, ce : in std_logic;
      dataout : out std_logic_vector;
		tc : out std_logic);
end component;

---- Signals ----
signal tc1, tc2, flipflop : std_logic;

begin

comp1 : mod100_counter
Port map (clk => clk,
          reset => reset,
			 ce => ce,
			 dataout => dataout(7 downto 0),
			 tc => tc1);

comp2 : FDC
Port map (C => clk,
          D => tc1,
			 CLR => reset,
          Q => flipflop);

comp3 : mod100_counter
Port map (clk => flipflop,
          reset => reset,
			 ce => ce,
			 dataout => dataout(15 downto 8),
			 tc => tc2);

dataout(19 downto 16) <= "0000";
tc <= (tc1 AND tc2);

end Behavioral;

