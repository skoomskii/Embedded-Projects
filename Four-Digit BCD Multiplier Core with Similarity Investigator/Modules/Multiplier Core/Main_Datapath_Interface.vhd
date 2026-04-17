----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    22:15:15 01/20/2023 
-- Design Name: 
-- Module Name:    Main_Datapath_Interface - Behavioral 
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

entity Main_DPI is
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
end Main_DPI;

architecture Behavioral of Main_DPI is

---------------- Components ----------------
component Validator
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           decision : out  STD_LOGIC_VECTOR (31 downto 0);
           fault : out  STD_LOGIC);
end component;

component Similarity_Investigator
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           check_similarity : in  STD_LOGIC;
           save_product : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           product : in  STD_LOGIC_VECTOR (31 downto 0);
           similarity : inout  STD_LOGIC;
           msi_product : out  STD_LOGIC_VECTOR (31 downto 0);
           overflow : out  STD_LOGIC;
           check_similarity_done : out  STD_LOGIC);
end component;

component BCD_Multiplier
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           multiply : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           product : out  STD_LOGIC_VECTOR (31 downto 0);
           multiply_done : inout  STD_LOGIC);
end component;

component mux_31
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0);
           sel : in  STD_LOGIC_VECTOR (1 downto 0));
end component;

---------------- Signals ----------------
signal decision_sig,product_sig,msi_product_sig : std_logic_vector(31 downto 0);
signal similarity_sig,fault_sig : std_logic;
signal sel_sig : std_logic_vector(1 downto 0);

begin

similarity_sig <= similarity;
fault_sig <= fault;
sel_sig <= similarity_sig & fault_sig;

cop1 : Validator
 Port map( A => A,
           B => B,
           decision => decision_sig,
           fault => fault
			 );

cop2 : Similarity_Investigator
 Port map( clk => clk,
           reset => reset,
           check_similarity => check_similarity,
           save_product => save_product,
           A => A,
           B => B,
           product => product_sig,
           similarity => similarity,
           msi_product => msi_product_sig,
           overflow => overflow,
           check_similarity_done => check_similarity_done
			 );

cop3 : BCD_Multiplier
 Port map( clk => clk,
           reset => reset,
           multiply => multiply,
           A => A,
           B => B,
           product => product_sig,
           multiply_done => multiply_done
			 );

cop4 : mux_31
 Port map( A => product_sig,
           B => decision_sig,
           C => msi_product_sig,
           O => final_product,
           sel => sel_sig
			 );

end Behavioral;

