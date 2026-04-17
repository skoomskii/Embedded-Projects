----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    23:14:03 01/20/2023 
-- Design Name: 
-- Module Name:    Multiplier_Core - Behavioral 
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

entity Multiplier_Core is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           start : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           final_product : out  STD_LOGIC_VECTOR (31 downto 0);
           overflow : out  STD_LOGIC;
           done : out  STD_LOGIC);
end Multiplier_Core;

architecture Behavioral of Multiplier_Core is

---------------- Components ----------------
component Main_DPI
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
			  B : in  STD_LOGIC_VECTOR (15 downto 0);
           fault : inout  STD_LOGIC;
           check_similarity : in  STD_LOGIC;
           check_similarity_done : out  STD_LOGIC;
           similarity : inout  STD_LOGIC;
           multiply : in  STD_LOGIC;
           multiply_done : inout  STD_LOGIC;
           save_product : in  STD_LOGIC;
           final_product : out  STD_LOGIC_VECTOR (31 downto 0);
           overflow : out  STD_LOGIC);
end component;

component Main_CPI
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           start : in  STD_LOGIC;
           done : out  STD_LOGIC;
           fault : in  STD_LOGIC;
           check_similarity : out  STD_LOGIC;
           check_similarity_done : in  STD_LOGIC;
           similarity : in  STD_LOGIC;
           multiply : out  STD_LOGIC;
           multiply_done : in  STD_LOGIC;
           save_product : out  STD_LOGIC);
end component;

---------------- Signals ----------------
signal fault_sig,check_similarity_sig,check_similarity_done_sig : std_logic;
signal similarity_sig,multiply_sig,multiply_done_sig,save_product_sig : std_logic;

begin

cop1 : Main_DPI
 Port map( clk => clk,
           reset => reset,
           A => A,
			  B => B,
           fault => fault_sig,
           check_similarity => check_similarity_sig,
           check_similarity_done => check_similarity_done_sig,
           similarity => similarity_sig,
           multiply => multiply_sig,
           multiply_done => multiply_done_sig,
           save_product => save_product_sig,
           final_product => final_product,
           overflow => overflow
			 );

cop2 : Main_CPI
 Port map( clk => clk,
           reset => reset,
           start => start,
           done => done,
           fault => fault_sig,
           check_similarity => check_similarity_sig,
           check_similarity_done => check_similarity_done_sig,
           similarity => similarity_sig,
           multiply => multiply_sig,
           multiply_done => multiply_done_sig,
           save_product => save_product_sig
			 );

end Behavioral;

