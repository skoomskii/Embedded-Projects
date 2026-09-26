----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/14/2026 11:12:22 AM
-- Design Name: 
-- Module Name: bitShifter - Behavioral
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

entity bitShifter is
    Port ( DIR : in STD_LOGIC;
           I : in STD_LOGIC_VECTOR (31 downto 0);
           LA : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (31 downto 0));
end bitShifter;

architecture Behavioral of bitShifter is

-------- Components --------
component mux_11
Port ( A : in  STD_LOGIC;
       B : in  STD_LOGIC;
       O : out  STD_LOGIC;
       sel : in  STD_LOGIC);
end component;

-------- Signals --------
signal sig : std_logic;

begin

cop0: mux_11
Port map (
            A => '0',
            B => I(1),
            O => O(0),
            sel => DIR
          );

cop1: mux_11
Port map (
            A => I(0),
            B => I(2),
            O => O(1),
            sel => DIR
          );

cop2: mux_11
Port map (
            A => I(1),
            B => I(3),
            O => O(2),
            sel => DIR
          );

cop3: mux_11
Port map (
            A => I(2),
            B => I(4),
            O => O(3),
            sel => DIR
          );
          
cop4: mux_11
Port map (
            A => I(3),
            B => I(5),
            O => O(4),
            sel => DIR
          );

cop5: mux_11
Port map (
            A => I(4),
            B => I(6),
            O => O(5),
            sel => DIR
          );
          
cop6: mux_11
Port map (
            A => I(5),
            B => I(7),
            O => O(6),
            sel => DIR
          );

cop7: mux_11
Port map (
            A => I(6),
            B => I(8),
            O => O(7),
            sel => DIR
          );
          
cop8: mux_11
Port map (
            A => I(7),
            B => I(9),
            O => O(8),
            sel => DIR
          );

cop9: mux_11
Port map (
            A => I(8),
            B => I(10),
            O => O(9),
            sel => DIR
          );
          
cop10: mux_11
Port map (
            A => I(9),
            B => I(11),
            O => O(10),
            sel => DIR
          );

cop11: mux_11
Port map (
            A => I(10),
            B => I(12),
            O => O(11),
            sel => DIR
          );
          
cop12: mux_11
Port map (
            A => I(11),
            B => I(13),
            O => O(12),
            sel => DIR
          );

cop13: mux_11
Port map (
            A => I(12),
            B => I(14),
            O => O(13),
            sel => DIR
          );
          
cop14: mux_11
Port map (
            A => I(13),
            B => I(15),
            O => O(14),
            sel => DIR
          );

cop15: mux_11
Port map (
            A => I(14),
            B => I(16),
            O => O(15),
            sel => DIR
          );
          
cop16: mux_11
Port map (
            A => I(15),
            B => I(17),
            O => O(16),
            sel => DIR
          );

cop17: mux_11
Port map (
            A => I(16),
            B => I(18),
            O => O(17),
            sel => DIR
          );
          
cop18: mux_11
Port map (
            A => I(17),
            B => I(19),
            O => O(18),
            sel => DIR
          );

cop19: mux_11
Port map (
            A => I(18),
            B => I(20),
            O => O(19),
            sel => DIR
          );
          
cop20: mux_11
Port map (
            A => I(19),
            B => I(21),
            O => O(20),
            sel => DIR
          );

cop21: mux_11
Port map (
            A => I(20),
            B => I(22),
            O => O(21),
            sel => DIR
          );
          
cop22: mux_11
Port map (
            A => I(21),
            B => I(23),
            O => O(22),
            sel => DIR
          );

cop23: mux_11
Port map (
            A => I(22),
            B => I(24),
            O => O(23),
            sel => DIR
          );
          
cop24: mux_11
Port map (
            A => I(23),
            B => I(25),
            O => O(24),
            sel => DIR
          );

cop25: mux_11
Port map (
            A => I(24),
            B => I(26),
            O => O(25),
            sel => DIR
          );
          
cop26: mux_11
Port map (
            A => I(25),
            B => I(27),
            O => O(26),
            sel => DIR
          );

cop27: mux_11
Port map (
            A => I(26),
            B => I(28),
            O => O(27),
            sel => DIR
          );
          
cop28: mux_11
Port map (
            A => I(27),
            B => I(29),
            O => O(28),
            sel => DIR
          );

cop29: mux_11
Port map (
            A => I(28),
            B => I(30),
            O => O(29),
            sel => DIR
          );
          
cop30: mux_11
Port map (
            A => I(29),
            B => I(31),
            O => O(30),
            sel => DIR
          );

cop31: mux_11
Port map (
            A => I(30),
            B => sig,
            O => O(31),
            sel => DIR
          ); 

cop32: mux_11
Port map (
            A => '0',
            B => I(31),
            O => sig,
            sel => LA
          );           

end Behavioral;
