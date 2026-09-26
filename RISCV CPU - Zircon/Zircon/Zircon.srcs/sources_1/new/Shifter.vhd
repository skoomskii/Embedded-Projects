----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/14/2026 11:43:20 AM
-- Design Name: 
-- Module Name: Shifter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shifter is
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
           S : in STD_LOGIC_VECTOR (31 downto 0);
           LA : in STD_LOGIC;
           DIR : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (31 downto 0));
end Shifter;

architecture Behavioral of Shifter is

-------- Components --------
component bitShifter
Port ( DIR : in STD_LOGIC;
           I : in STD_LOGIC_VECTOR (31 downto 0);
           LA : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component mux32_321
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
end component;

-------- Signals --------
signal I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31 : std_logic_vector (31 downto 0);

begin

cop0: mux32_321
Port map (
               I0 => I,
               I1 => I1,
               I2 => I2,
               I3 => I3,
               I4 => I4,
               I5 => I5,
               I6 => I6,
               I7 => I7,
               I8 => I8,
               I9 => I9,
               I10 => I10,
               I11 => I11,
               I12 => I12,
               I13 => I13,
               I14 => I14,
               I15 => I15,
               I16 => I16,
               I17 => I17,
               I18 => I18,
               I19 => I19,
               I20 => I20,
               I21 => I21,
               I22 => I22,
               I23 => I23,
               I24 => I24,
               I25 => I25,
               I26 => I26,
               I27 => I27,
               I28 => I28,
               I29 => I29,
               I30 => I30,
               I31 => I31,
               en => '1',
               O => O,
               sel => S(4 downto 0)
         );

cop1: bitShifter
Port map (
           I => I,
           LA => LA,
           DIR => DIR,
           O => I1
          );
          
cop2: bitShifter
Port map (
           I => I1,
           LA => LA,
           DIR => DIR,
           O => I2
          );
          
cop3: bitShifter
Port map (
           I => I2,
           LA => LA,
           DIR => DIR,
           O => I3
          );                       
  
cop4: bitShifter
Port map (
           I => I3,
           LA => LA,
           DIR => DIR,
           O => I4
          );
          
cop5: bitShifter
Port map (
           I => I4,
           LA => LA,
           DIR => DIR,
           O => I5
          );  
          
cop6: bitShifter
Port map (
           I => I5,
           LA => LA,
           DIR => DIR,
           O => I6
          );
          
cop7: bitShifter
Port map (
           I => I6,
           LA => LA,
           DIR => DIR,
           O => I7
          );  
          
cop8: bitShifter
Port map (
           I => I7,
           LA => LA,
           DIR => DIR,
           O => I8
          );
          
cop9: bitShifter
Port map (
           I => I8,
           LA => LA,
           DIR => DIR,
           O => I9
          );  
          
cop10: bitShifter
Port map (
           I => I9,
           LA => LA,
           DIR => DIR,
           O => I10
          );
          
cop11: bitShifter
Port map (
           I => I10,
           LA => LA,
           DIR => DIR,
           O => I11
          );  
          
cop12: bitShifter
Port map (
           I => I11,
           LA => LA,
           DIR => DIR,
           O => I12
          );
          
cop13: bitShifter
Port map (
           I => I12,
           LA => LA,
           DIR => DIR,
           O => I13
          );  
          
cop14: bitShifter
Port map (
           I => I13,
           LA => LA,
           DIR => DIR,
           O => I14
          );
          
cop15: bitShifter
Port map (
           I => I14,
           LA => LA,
           DIR => DIR,
           O => I15
          );  
          
cop16: bitShifter
Port map (
           I => I15,
           LA => LA,
           DIR => DIR,
           O => I16
          );
          
cop17: bitShifter
Port map (
           I => I16,
           LA => LA,
           DIR => DIR,
           O => I17
          );  
          
cop18: bitShifter
Port map (
           I => I17,
           LA => LA,
           DIR => DIR,
           O => I18
          );
          
cop19: bitShifter
Port map (
           I => I18,
           LA => LA,
           DIR => DIR,
           O => I19
          );  
          
cop20: bitShifter
Port map (
           I => I19,
           LA => LA,
           DIR => DIR,
           O => I20
          );
          
cop21: bitShifter
Port map (
           I => I20,
           LA => LA,
           DIR => DIR,
           O => I21
          );  
          
cop22: bitShifter
Port map (
           I => I21,
           LA => LA,
           DIR => DIR,
           O => I22
          );
          
cop23: bitShifter
Port map (
           I => I22,
           LA => LA,
           DIR => DIR,
           O => I23
          );  
          
cop24: bitShifter
Port map (
           I => I23,
           LA => LA,
           DIR => DIR,
           O => I24
          );
          
cop25: bitShifter
Port map (
           I => I24,
           LA => LA,
           DIR => DIR,
           O => I25
          );  
          
cop26: bitShifter
Port map (
           I => I25,
           LA => LA,
           DIR => DIR,
           O => I26
          );
          
cop27: bitShifter
Port map (
           I => I26,
           LA => LA,
           DIR => DIR,
           O => I27
          );  
          
cop28: bitShifter
Port map (
           I => I27,
           LA => LA,
           DIR => DIR,
           O => I28
          );
          
cop29: bitShifter
Port map (
           I => I28,
           LA => LA,
           DIR => DIR,
           O => I29
          );  
          
cop30: bitShifter
Port map (
           I => I29,
           LA => LA,
           DIR => DIR,
           O => I30
          );
          
cop31: bitShifter
Port map (
           I => I30,
           LA => LA,
           DIR => DIR,
           O => I31
          );                                                                                                                                      
    
end Behavioral;
