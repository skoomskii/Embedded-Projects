----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    10:50:46 01/18/2023 
-- Design Name: 
-- Module Name:    Similarity_Investigator - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Similarity_Investigator is
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
end Similarity_Investigator;

architecture Behavioral of Similarity_Investigator is

---------------- Components ----------------
component SI_Datapath_Interface
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : in  STD_LOGIC_VECTOR (15 downto 0);
           product : in  STD_LOGIC_VECTOR (31 downto 0);
           re_i : in  STD_LOGIC;
			  re_done : out  STD_LOGIC;
           load : in  STD_LOGIC;
           we_i : in  STD_LOGIC;
           similarity : inout  STD_LOGIC;
           msi_product : out  STD_LOGIC_VECTOR (31 downto 0);
           overflow : out  STD_LOGIC);
end component;

component Similarity_Investigator_Controlpath_Interface
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           check_similarity : in  STD_LOGIC;
           save_product : in  STD_LOGIC;
			  similarity : in  STD_LOGIC;
           re_i : out  STD_LOGIC;
			  re_done : in  STD_LOGIC;
           load : out  STD_LOGIC;
           we_i : out  STD_LOGIC;
           check_similarity_done : out  STD_LOGIC);
end component;

---------------- Signals ----------------
signal read_sig, load_sig, write_sig, re_sig : std_logic;

begin

cop1 : SI_Datapath_Interface
 Port map( clk => clk,
           reset => reset,
           A => A,
           B => B,
           product => product,
           re_i => read_sig,
			  re_done => re_sig,
           load => load_sig,
           we_i => write_sig,
           similarity => similarity,
           msi_product => msi_product,
           overflow => overflow
			 );
			  
cop2 : Similarity_Investigator_Controlpath_Interface
 Port map( clk => clk,
           reset => reset,
           check_similarity => check_similarity,
           save_product => save_product,
			  similarity => similarity,
           re_i => read_sig,
			  re_done => re_sig,
           load => load_sig,
           we_i => write_sig,
           check_similarity_done => check_similarity_done
			 );

end Behavioral;

