----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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
    Port ( clock3 : in  STD_LOGIC;
	        clock4 : in std_logic;
			  clock5 : in std_logic;
           reset : in  STD_LOGIC;
			  speed : in std_logic_vector(1 downto 0);
           datain : in  STD_LOGIC_VECTOR (31 downto 0);
           dataout : out  STD_LOGIC_VECTOR (19 downto 0));
end sweep;

architecture Behavioral of sweep is

---- Components ----
component MUX_81
Port(A,B,C,D,E,F,G,H,X : in std_logic_vector;
     O : inout std_logic_vector);
end component;

component Reg_5bit
Port(C,CLR : in std_logic;
     D : in std_logic_vector;
     Q : out std_logic_vector);
end component;

component Mod8_Counter
Port(clk,reset,ce : in std_logic;
     dataout : out std_logic_vector);
end component;

component MUX_31
Port(A,B,C : in std_logic;
     E : in std_logic_vector(1 downto 0);
     O : out std_logic);
end component;

---- Signals ----
signal glide : std_logic;
signal cnt : std_logic_vector(2 downto 0);
signal sig_A, sig_B, sig_C, sig_D, sig_E : std_logic_vector(4 downto 0);
signal O, data_1, data_2, data_3, data_4 : std_logic_vector(4 downto 0);

begin

sig_A <= (datain(27 downto 24) & "1"); -- MSD
sig_B <= (datain(23 downto 20) & "1");
sig_C <= (datain(19 downto 16) & "1");
sig_D <= (datain(15 downto 12) & "1");
sig_E <= (datain(11 downto 8) & "0"); -- LSD

comp1 : MUX_81
Port map(A=> sig_A, -- MSD
         B=> sig_B,
			C=> sig_C,
			D=> sig_D,
			E=> sig_E, -- LSD
			F=> "10101", -- "H"
			G=> "00101", -- "Z"
			H=> "11111", -- SPACE
			X=> cnt,
			O=> O);

comp2 : Reg_5bit
Port map(C=> glide,
         D=> O,
			CLR=> reset,
			Q=> data_1);

comp3 : Reg_5bit
Port map(C=> glide,
         D=> data_1,
			CLR=> reset,
			Q=> data_2);

comp4 : Reg_5bit
Port map(C=> glide,
         D=> data_2,
			CLR=> reset,
			Q=> data_3);

comp5 : Reg_5bit
Port map(C=> glide,
         D=> data_3,
			CLR=> reset,
			Q=> data_4);
			
comp6 : Mod8_Counter
Port map(clk=> glide,
         reset=> reset,
			ce=> '1',
			dataout=> cnt);
			
comp7 : MUX_31
Port map(A=> clock3,
         B=> clock4,
			C=> clock5,
			E=> speed,
			O=> glide);

dataout <= (data_4(4 downto 0) & data_3(4 downto 0) & data_2(4 downto 0) & data_1(4 downto 0));

end Behavioral;

