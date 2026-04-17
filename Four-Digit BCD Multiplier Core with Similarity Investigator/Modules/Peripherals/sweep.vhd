----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    15:27:54 11/12/2021 
-- Design Name: 
-- Module Name:    sweep - Behavioral 
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

entity sweep is
    Port ( clk : in std_logic;
           reset : in  STD_LOGIC;
			  ce : in  STD_LOGIC;
           datain : in  STD_LOGIC_VECTOR (35 downto 0);
           dataout : out  STD_LOGIC_VECTOR (15 downto 0));
end sweep;

architecture Behavioral of sweep is

---- Components ----
component MUX_101
Port(A,B,C,D,E,F,G,H,I,J,X : in std_logic_vector(3 downto 0);
     O : inout std_logic_vector(3 downto 0));
end component;

component Reg_4bit
Port(C,CLR : in std_logic;
     Din : in std_logic_vector(3 downto 0);
     Dout : out std_logic_vector(3 downto 0));
end component;

component modulo10_counter
Port(clk,reset,ce : in std_logic;
	  tc : out std_logic;
     dataout : out std_logic_vector(3 downto 0));
end component;

---- Signals ----
signal cnt,O_sig,data_1,data_2,data_3,data_4 : std_logic_vector(3 downto 0);

begin

comp1 : MUX_101
Port map(A=> datain(35 downto 32), -- MSD
         B=> datain(31 downto 28),
			C=> datain(27 downto 24),
			D=> datain(23 downto 20),
			E=> datain(19 downto 16),
			F=> datain(15 downto 12),
			G=> datain(11 downto 8),
			H=> datain(7 downto 4),
			I=> datain(3 downto 0),-- LSD
			J=> "1111", -- SPACE
			X=> cnt,
			O=> O_sig);

comp2 : Reg_4bit
Port map(C=> clk,
         Din=> O_sig,
			CLR=> reset,
			Dout=> data_1);

comp3 : Reg_4bit
Port map(C=> clk,
         Din=> data_1,
			CLR=> reset,
			Dout=> data_2);

comp4 : Reg_4bit
Port map(C=> clk,
         Din=> data_2,
			CLR=> reset,
			Dout=> data_3);

comp5 : Reg_4bit
Port map(C=> clk,
         Din=> data_3,
			CLR=> reset,
			Dout=> data_4);
			
comp6 : modulo10_counter
Port map(clk=> clk,
         reset=> reset,
			ce=> ce,
			dataout=> cnt);

dataout <= (data_4 & data_3 & data_2 & data_1);

end Behavioral;

