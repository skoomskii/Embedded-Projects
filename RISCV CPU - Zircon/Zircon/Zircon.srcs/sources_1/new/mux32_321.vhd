----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/14/2026 10:57:57 AM
-- Design Name: 
-- Module Name: mux32_321 - Behavioral
-- Project Name: Zircon v1.0.0
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux32_321 is
    Port ( I0 : in STD_LOGIC_VECTOR (31 downto 0);
           I1 : in STD_LOGIC_VECTOR (31 downto 0);
           I2 : in STD_LOGIC_VECTOR (31 downto 0);
           I3 : in STD_LOGIC_VECTOR (31 downto 0);
           I4 : in STD_LOGIC_VECTOR (31 downto 0);
           I5 : in STD_LOGIC_VECTOR (31 downto 0);
           I6 : in STD_LOGIC_VECTOR (31 downto 0);
           I7 : in STD_LOGIC_VECTOR (31 downto 0);
           I8 : in STD_LOGIC_VECTOR (31 downto 0);
           I9 : in STD_LOGIC_VECTOR (31 downto 0);
           I10 : in STD_LOGIC_VECTOR (31 downto 0);
           I11 : in STD_LOGIC_VECTOR (31 downto 0);
           I12 : in STD_LOGIC_VECTOR (31 downto 0);
           I13 : in STD_LOGIC_VECTOR (31 downto 0);
           I14 : in STD_LOGIC_VECTOR (31 downto 0);
           I15 : in STD_LOGIC_VECTOR (31 downto 0);
           I16 : in STD_LOGIC_VECTOR (31 downto 0);
           I17 : in STD_LOGIC_VECTOR (31 downto 0);
           I18 : in STD_LOGIC_VECTOR (31 downto 0);
           I19 : in STD_LOGIC_VECTOR (31 downto 0);
           I20 : in STD_LOGIC_VECTOR (31 downto 0);
           I21 : in STD_LOGIC_VECTOR (31 downto 0);
           I22 : in STD_LOGIC_VECTOR (31 downto 0);
           I23 : in STD_LOGIC_VECTOR (31 downto 0);
           I24 : in STD_LOGIC_VECTOR (31 downto 0);
           I25 : in STD_LOGIC_VECTOR (31 downto 0);
           I26 : in STD_LOGIC_VECTOR (31 downto 0);
           I27 : in STD_LOGIC_VECTOR (31 downto 0);
           I28 : in STD_LOGIC_VECTOR (31 downto 0);
           I29 : in STD_LOGIC_VECTOR (31 downto 0);
           I30 : in STD_LOGIC_VECTOR (31 downto 0);
           I31 : in STD_LOGIC_VECTOR (31 downto 0);
           en : in std_logic;
           O : out STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC_VECTOR (4 downto 0));
end mux32_321;

architecture Behavioral of mux32_321 is
begin
	process(en,I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,sel)
	begin
        if (en = '1') then
            case sel is
                when "00000" =>
                O <= I0; -- connect I0 to O
                when "00001" =>
                O <= I1; -- connect I1 to O
                when "00010" =>
                O <= I2; -- connect I2 to O
                when "00011" =>
                O <= I3; -- connect I3 to O
                when "00100" =>
                O <= I4; -- connect I4 to O
                when "00101" =>
                O <= I5; -- connect I5 to O
                when "00110" =>
                O <= I6; -- connect I6 to O
                when "00111" =>
                O <= I7; -- connect I7 to O
                when "01000" =>
                O <= I8; -- connect I8 to O
                when "01001" =>
                O <= I9; -- connect I9 to O
                when "01010" =>
                O <= I10; -- connect I10 to O
                when "01011" =>
                O <= I11; -- connect I11 to O
                when "01100" =>
                O <= I12; -- connect I12 to O
                when "01101" =>
                O <= I13; -- connect I13 to O
                when "01110" =>
                O <= I14; -- connect I14 to O
                when "01111" =>
                O <= I15; -- connect I15 to O
                when "10000" =>
                O <= I16; -- connect I16 to O
                when "10001" =>
                O <= I17; -- connect I17 to O
                when "10010" =>
                O <= I18; -- connect I18 to O
                when "10011" =>
                O <= I19; -- connect I19 to O
                when "10100" =>
                O <= I20; -- connect I20 to O
                when "10101" =>
                O <= I21; -- connect I21 to O
                when "10110" =>
                O <= I22; -- connect I22 to O
                when "10111" =>
                O <= I23; -- connect I23 to O
                when "11000" =>
                O <= I24; -- connect I24 to O
                when "11001" =>
                O <= I25; -- connect I25 to O
                when "11010" =>
                O <= I26; -- connect I26 to O
                when "11011" =>
                O <= I27; -- connect I27 to O
                when "11100" =>
                O <= I28; -- connect I28 to O
                when "11101" =>
                O <= I29; -- connect I29 to O
                when "11110" =>
                O <= I30; -- connect I30 to O
                when "11111" =>
                O <= I31; -- connect I31 to O
                when others =>
            end case;        
        end if;
	end process;
end Behavioral;
