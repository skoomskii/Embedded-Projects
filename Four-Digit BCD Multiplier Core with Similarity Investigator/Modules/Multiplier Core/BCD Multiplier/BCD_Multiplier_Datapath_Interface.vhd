----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    12:24:49 01/14/2023 
-- Design Name: 
-- Module Name:    BCD_Multiplier_Datapath_Interface - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_Multiplier_Datapath_Interface is
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
end BCD_Multiplier_Datapath_Interface;

architecture Behavioral of BCD_Multiplier_Datapath_Interface is

---------------- Components ----------------
component PIPO_Load_Shift_A
Port(clk : in std_logic;
	  reset : in std_logic;
	  left_shift : in std_logic;
     load : in std_logic;		 
	  data_i : in std_logic_vector(15 downto 0);
     data_o : out std_logic_vector(31 downto 0));
end component;

component PIPO_Load_Shift_B
Port(clk : in std_logic;
	  reset : in std_logic;
     load : in std_logic;
	  right_shift : in std_logic;
	  data_i : in std_logic_vector(15 downto 0);
     data_o : out std_logic_vector(3 downto 0));
end component;

component PIPO_Load_PP
Port(clk : in std_logic;
	  reset : in std_logic;
     load : in std_logic;		 
	  data_i : in std_logic_vector(31 downto 0);
     data_o : out std_logic_vector(31 downto 0));
end component;

component bcd_adder_32bits_main
Port(X : in  STD_LOGIC_VECTOR (31 downto 0);
     Y : in  STD_LOGIC_VECTOR (31 downto 0);
	  Cin : in STD_LOGIC;
     S : out  STD_LOGIC_VECTOR (31 downto 0);
     Cout : out  STD_LOGIC);
end component;

component modulo5_counter
Port(clk : in std_logic;
     reset : in std_logic;
	  ce : in std_logic;
	  dataout : out std_logic_vector(3 downto 0);
	  tc : out std_logic);
end component;

component modulo10_counter
  Port(clk : in std_logic;
       reset : in std_logic;
		 ce : in std_logic;
		 dataout : out std_logic_vector(3 downto 0);
		 tc : out std_logic);
end component;

component comparator_4bits
  Port(A : in std_logic_vector(3 downto 0);
       B : in std_logic_vector(3 downto 0);
		 Y : out std_logic);
end component;

----------------- Signals -----------------
signal dataout_rega, B_sig, O_sig, Y_sig : std_logic_vector(31 downto 0);
signal dataout_regb, A_sig : std_logic_vector(3 downto 0);
signal sel_sig : std_logic;

begin

cop1 : PIPO_Load_Shift_A
Port map(clk => clk,
		   reset => reset,
		   left_shift => shift,
		   load => load_operands,	 
		   data_i => A,
		   data_o => dataout_rega
			);

cop2 : PIPO_Load_Shift_B
Port map(clk => clk,
			reset => reset,
			load => load_operands,
			right_shift => shift,
			data_i => B,
			data_o => dataout_regb
			);

cop3 : PIPO_Load_PP
Port map(clk => clk,
			reset => (reset or done),
			load => count,
			data_i => Y_sig,
			data_o => B_sig
			);

cop4 : bcd_adder_32bits_main
Port map(X => dataout_rega,
			Y => B_sig,
			Cin => '0',
			S => Y_sig
			);

cop5 : modulo5_counter
Port map(clk => shift,
			reset => reset,
			ce => '1',
			tc => shift_done
			);

cop6 : modulo10_counter
Port map(clk => count,
			reset => (reset or done or shift),
			ce => '1',
			dataout => A_sig
			);

cop7 : comparator_4bits
Port map(A => A_sig,
			B => dataout_regb,
			Y => count_done
			);

cop8 : PIPO_Load_PP
Port map(clk => clk,
			reset => reset,
			load => done,
			data_i => B_sig,
			data_o => product
			);
			
done <= (count_done and shift_done);

end Behavioral;