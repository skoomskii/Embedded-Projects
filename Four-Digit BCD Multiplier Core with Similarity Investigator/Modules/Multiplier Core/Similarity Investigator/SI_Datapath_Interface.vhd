----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    11:16:22 01/14/2023 
-- Design Name: 
-- Module Name:    SI_Datapath_Interface - Behavioral 
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

entity SI_Datapath_Interface is
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
end SI_Datapath_Interface;

architecture Behavioral of SI_Datapath_Interface is

---------------- Components ----------------
component PIPO_Hold
Port(clk : in std_logic;
	  reset : in std_logic;
	  load : in std_logic;		 
	  data_i : in std_logic_vector(63 downto 0);
     data_o : out std_logic_vector(63 downto 0));
end component;

component modulo255_counter
Port(clk : in std_logic;
     reset : in std_logic;
	  ce : in std_logic;
	  dataout : out std_logic_vector(7 downto 0);
	  tc : out std_logic);
end component;

component RAM_Block_32x
Port(clk : in std_logic;
	  reset : in std_logic;
	  we_i : in std_logic;
	  re_i : in std_logic;
	  addressX : in std_logic_vector(7 downto 0);
	  addressY : in std_logic_vector(7 downto 0);
	  data_i : in std_logic_vector(63 downto 0);
	  data_o : out std_logic_vector(63 downto 0));
end component;

component comparator
Port(A : in std_logic_vector(31 downto 0);
     B : in std_logic_vector(31 downto 0);
	  Y : out std_logic);
end component;

component comparator_8bits
Port(A : in std_logic_vector(7 downto 0);
     B : in std_logic_vector(7 downto 0);
	  Y : out std_logic);
end component;

----------------- Signals -----------------
signal done : std_logic;
signal addressX,addressY : std_logic_vector(7 downto 0);
signal A_sig,B_sig : std_logic_vector(15 downto 0);
signal C_sig,prod_sig : std_logic_vector(31 downto 0);
signal datain_ram,dataout_ram,datain_reg : std_logic_vector(63 downto 0);

begin

A_sig <= A;
B_sig <= B;
C_sig <= A & B;
prod_sig <= product;
datain_reg <= A_sig & B_sig & prod_sig;

cop1 : PIPO_Hold
Port map(clk => clk,
			reset => reset,
			load => load,	 
			data_i => datain_reg,
			data_o => datain_ram
			);

cop2 : modulo255_counter
Port map(clk => we_i,
     reset => reset,
	  ce => '1',
	  dataout => addressX,
	  tc => overflow
	  );

cop3 : RAM_Block_32x
Port map(clk => clk,
			reset => reset,
			we_i => we_i,
			re_i => re_i,
			addressX => addressX,
			addressY => addressY,
			data_i => datain_reg,
			data_o => dataout_ram
			);

cop4 : comparator
Port map(A => dataout_ram(63 downto 32),
			B => C_sig,
			Y => similarity
			);

cop5 : modulo255_counter
Port map(clk => clk,
     reset => not(re_i),
	  ce => '1',
	  dataout => addressY
	  );

cop6 : comparator_8bits
Port map(A => addressX,
			B => addressY,
			Y => done
			);

re_done <= (done or similarity);
msi_product <= dataout_ram(31 downto 0);

end Behavioral;

