----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    19:22:10 01/12/2023 
-- Design Name: 
-- Module Name:    bcd_adder_32bits_main - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bcd_adder_32bits_main is
    Port ( X : in  STD_LOGIC_VECTOR (31 downto 0);
           Y : in  STD_LOGIC_VECTOR (31 downto 0);
			  Cin : in STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (31 downto 0);
           Cout : out  STD_LOGIC);
end bcd_adder_32bits_main;

architecture Behavioral of bcd_adder_32bits_main is

-------------------- Components --------------------
component bcd_adder_4bits
Port(X : in  STD_LOGIC_VECTOR (3 downto 0);
     Y : in  STD_LOGIC_VECTOR (3 downto 0);
	  Cin : in STD_LOGIC;
     S : out  STD_LOGIC_VECTOR (3 downto 0);
     Cout : out  STD_LOGIC);
end component;
--------------------- Signals ---------------------
signal carry : std_logic_vector(6 downto 0);

begin

cop1 : bcd_adder_4bits
Port map(X => X(3 downto 0),
			Y => Y(3 downto 0),
			Cin => Cin,
			S => S(3 downto 0),
			Cout => carry(0)
			);
			
cop2 : bcd_adder_4bits
Port map(X => X(7 downto 4),
			Y => Y(7 downto 4),
			Cin => carry(0),
			S => S(7 downto 4),
			Cout => carry(1)
			);
			
cop3 : bcd_adder_4bits
Port map(X => X(11 downto 8),
			Y => Y(11 downto 8),
			Cin => carry(1),
			S => S(11 downto 8),
			Cout => carry(2)
			);

cop4 : bcd_adder_4bits
Port map(--clk => clk,
			--reset => reset,
			X => X(15 downto 12),
			Y => Y(15 downto 12),
			Cin => carry(2),
			S => S(15 downto 12),
			Cout => carry(3)
			);
			
cop5 : bcd_adder_4bits
Port map(--clk => clk,
			--reset => reset,
			X => X(19 downto 16),
			Y => Y(19 downto 16),
			Cin => carry(3),
			S => S(19 downto 16),
			Cout => carry(4)
			);
			
cop6 : bcd_adder_4bits
Port map(X => X(23 downto 20),
			Y => Y(23 downto 20),
			Cin => carry(4),
			S => S(23 downto 20),
			Cout => carry(5)
			);
			
cop7 : bcd_adder_4bits
Port map(X => X(27 downto 24),
			Y => Y(27 downto 24),
			Cin => carry(5),
			S => S(27 downto 24),
			Cout => carry(6)
			);

cop8 : bcd_adder_4bits
Port map(X => X(31 downto 28),
			Y => Y(31 downto 28),
			Cin => carry(6),
			S => S(31 downto 28),
			Cout => Cout
			);
			
end Behavioral;