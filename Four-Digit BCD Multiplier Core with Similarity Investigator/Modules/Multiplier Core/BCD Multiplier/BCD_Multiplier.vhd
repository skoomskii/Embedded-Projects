----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    14:36:00 01/18/2023 
-- Design Name: 
-- Module Name:    BCD_Multiplier - Behavioral 
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

entity BCD_Multiplier is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           multiply : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           product : out  STD_LOGIC_VECTOR (31 downto 0);
           multiply_done : out  STD_LOGIC);
end BCD_Multiplier;

architecture Behavioral of BCD_Multiplier is

---------------- Components ----------------
component BCD_Multiplier_Datapath_Interface
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           product : out  STD_LOGIC_VECTOR (31 downto 0);
           load_operands : in  STD_LOGIC;
           count : in  STD_LOGIC;
           count_done : inout  STD_LOGIC;
           shift : in  STD_LOGIC;
           shift_done : inout  STD_LOGIC;
			  done : inout  STD_LOGIC);
end component;

component BCD_Multiplier_CPI
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           multiply : in  STD_LOGIC;
           load_operands : out  STD_LOGIC;
           count : out  STD_LOGIC;
           count_done : in  STD_LOGIC;
           shift : out  STD_LOGIC;
           shift_done : in  STD_LOGIC;
           multiply_done : out  STD_LOGIC;
			  done : in  STD_LOGIC);
end component;

---------------- Signals ----------------
signal load_operands_sig : std_logic;
signal count_sig : std_logic;
signal count_done_sig : std_logic;
signal shift_sig : std_logic;
signal shift_done_sig : std_logic;
signal done_sig : std_logic;

begin

cop1 : BCD_Multiplier_Datapath_Interface
    Port map( clk => clk,
				  reset => reset,
				  A => A,
				  B => B,
				  product => product,
				  load_operands => load_operands_sig,
				  count => count_sig,
				  count_done => count_done_sig,
				  shift => shift_sig,
				  shift_done => shift_done_sig,
				  done => done_sig
				);
			  
cop2 : BCD_Multiplier_CPI
Port map(  clk => clk,
           reset => reset,
           multiply => multiply,
           load_operands => load_operands_sig,
           count => count_sig,
           count_done => count_done_sig,
           shift => shift_sig,
           shift_done => shift_done_sig,
           multiply_done => multiply_done,
			  done => done_sig
			);
			  
end Behavioral;