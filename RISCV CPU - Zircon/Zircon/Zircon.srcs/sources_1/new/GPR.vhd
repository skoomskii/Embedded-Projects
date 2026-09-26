----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/14/2026 04:02:39 PM
-- Design Name: 
-- Module Name: GPR - Behavioral
-- Project Name: 
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

entity GPR is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           wen : in STD_LOGIC;
           ren : in STD_LOGIC;
           rS2 : in STD_LOGIC_VECTOR (4 downto 0);
           rS1 : in STD_LOGIC_VECTOR (4 downto 0);
           rD : in STD_LOGIC_VECTOR (4 downto 0);
           Data : in STD_LOGIC_VECTOR (31 downto 0);
           DrS1 : out STD_LOGIC_VECTOR (31 downto 0);
           DrS2 : out STD_LOGIC_VECTOR (31 downto 0));
end GPR;

architecture Behavioral of GPR is

-------- Components --------
component regLUT
    Port ( 
           rS1 : in STD_LOGIC_VECTOR (4 downto 0);
           rD : in STD_LOGIC_VECTOR (4 downto 0);
           rS2 : in STD_LOGIC_VECTOR (4 downto 0);
           addX : out STD_LOGIC_VECTOR (4 downto 0);
           addY : out STD_LOGIC_VECTOR (4 downto 0);
           r1 : out STD_LOGIC;
           r2 : out STD_LOGIC;
           r3 : out STD_LOGIC;
           r4 : out STD_LOGIC;
           r5 : out STD_LOGIC;
           r6 : out STD_LOGIC;
           r7 : out STD_LOGIC;
           r8 : out STD_LOGIC;
           r9 : out STD_LOGIC;
           r10 : out STD_LOGIC;
           r11 : out STD_LOGIC;
           r12 : out STD_LOGIC;
           r13 : out STD_LOGIC;
           r14 : out STD_LOGIC;
           r15 : out STD_LOGIC;
           r16 : out STD_LOGIC;
           r17 : out STD_LOGIC;
           r18 : out STD_LOGIC;
           r19 : out STD_LOGIC;
           r20 : out STD_LOGIC;
           r21 : out STD_LOGIC;
           r22 : out STD_LOGIC;
           r23 : out STD_LOGIC;
           r24 : out STD_LOGIC;
           r25 : out STD_LOGIC;
           r26 : out STD_LOGIC;
           r27 : out STD_LOGIC;
           r28 : out STD_LOGIC;
           r29 : out STD_LOGIC;
           r30 : out STD_LOGIC;
           r31 : out STD_LOGIC
         );
end component;

component PIPO_Hold
  Port(
       clk : in std_logic;
       reset : in std_logic;
       en : in std_logic;		 
	   DI : in std_logic_vector(31 downto 0);
       DO : out std_logic_vector(31 downto 0)
      );
end component;

component mux32_321
    Port ( 
           I0 : in STD_LOGIC_VECTOR (31 downto 0);
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
           sel : in STD_LOGIC_VECTOR (4 downto 0)
          );
end component;

-------- Signals --------
signal r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31 : std_Logic;
signal en1,en2,en3,en4,en5,en6,en7,en8,en9,en10,en11,en12,en13,en14,en15,en16,en17,en18,en19,en20,en21,en22,en23,en24,en25,en26,en27,en28,en29,en30,en31 : std_logic;
signal sigX,sigY : std_logic_vector (4 downto 0);
signal O0,O1,O2,O3,O4,O5,O6,O7,O8,O9,O10,O11,O12,O13,O14,O15,O16,O17,O18,O19,O20,O21,O22,O23,O24,O25,O26,O27,O28,O29,O30,O31,sigS1,sigS2 : std_logic_vector (31 downto 0);

begin

cop1: regLUT
Port map ( 
           rS1 => rS1,
           rD => rD,
           rS2 => rS2,
           addX => sigX,
           addY => sigY,
           r1 => r1,
           r2 => r2,
           r3 => r3,
           r4 => r4,
           r5 => r5,
           r6 => r6,
           r7 => r7,
           r8 => r8,
           r9 => r9,
           r10 => r10,
           r11 => r11,
           r12 => r12,
           r13 => r13,
           r14 => r14,
           r15 => r15,
           r16 => r16,
           r17 => r17,
           r18 => r18,
           r19 => r19,
           r20 => r20,
           r21 => r21,
           r22 => r22,
           r23 => r23,
           r24 => r24,
           r25 => r25,
           r26 => r26,
           r27 => r27,
           r28 => r28,
           r29 => r29,
           r30 => r30,
           r31 => r31
         );
             
cop2: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => '1',	 
       DI => x"00000000",
       DO => O0
       );
           
cop3: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en1,	 
       DI => Data,
       DO => O1
       );
           
cop4: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en2,	 
       DI => Data,
       DO => O2
       );
           
cop5: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en3,	 
       DI => Data,
       DO => O3
       );
           
cop6: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en4,	 
       DI => Data,
       DO => O4
       );
           
cop7: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en5,	 
       DI => Data,
       DO => O5
       );
           
cop8: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en6,	 
       DI => Data,
       DO => O6
       );
           
cop9: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en7,	 
       DI => Data,
       DO => O7
       );
           
cop10: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en8, 
       DI => Data,
       DO => O8
       );
           
cop11: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en9,	 
       DI => Data,
       DO => O9
       ); 
           
cop12: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en10,	 
       DI => Data,
       DO => O10
       );
           
cop13: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en11,	 
       DI => Data,
       DO => O11
       );
           
cop14: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en12,	 
       DI => Data,
       DO => O12
       );
           
cop15: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en13,	 
       DI => Data,
       DO => O13
       );
           
cop16: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en14,	 
       DI => Data,
       DO => O14
       ); 
           
cop17: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en15,	 
       DI => Data,
       DO => O15
       );
           
cop18: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en16,	 
       DI => Data,
       DO => O16
       );
           
cop19: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en17,	 
       DI => Data,
       DO => O17
       );
           
cop20: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en18,	 
       DI => Data,
       DO => O18
       );
           
cop21: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en19,	 
       DI => Data,
       DO => O19
       ); 
           
cop22: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en20,	 
       DI => Data,
       DO => O20
       );
           
cop23: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en21,	 
       DI => Data,
       DO => O21
       );
           
cop24: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en22,	 
       DI => Data,
       DO => O22
       );
           
cop25: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en23,	 
       DI => Data,
       DO => O23
       );
           
cop26: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en24,	 
       DI => Data,
       DO => O24
       ); 
           
cop27: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en25,	 
       DI => Data,
       DO => O25
       );
           
cop28: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en26,	 
       DI => Data,
       DO => O26
       );
           
cop29: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en27,	 
       DI => Data,
       DO => O27
       );
           
cop30: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en28,	 
       DI => Data,
       DO => O28
       );
           
cop31: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en29,	 
       DI => Data,
       DO => O29
       ); 
           
cop32: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en30,	 
       DI => Data,
       DO => O30
       );
           
cop33: PIPO_Hold
Port map(
       clk => clk,
       reset => reset,
       en => en31,	 
       DI => Data,
       DO => O31
       );
           
cop34: mux32_321
Port map (
           I0 => O0,
           I1 => O1,
           I2 => O2,
           I3 => O3,
           I4 => O4,
           I5 => O5,
           I6 => O6,
           I7 => O7,
           I8 => O8,
           I9 => O9,
           I10 => O10,
           I11 => O11,
           I12 => O12,
           I13 => O13,
           I14 => O14,
           I15 => O15,
           I16 => O16,
           I17 => O17,
           I18 => O18,
           I19 => O19,
           I20 => O20,
           I21 => O21,
           I22 => O22,
           I23 => O23,
           I24 => O24,
           I25 => O25,
           I26 => O26,
           I27 => O27,
           I28 => O28,
           I29 => O29,
           I30 => O30,
           I31 => O31,
           en => ren,
           O => DrS1,
           sel => sigX
         );                                                                                                        

cop35: mux32_321
Port map (
           I0 => O0,
           I1 => O1,
           I2 => O2,
           I3 => O3,
           I4 => O4,
           I5 => O5,
           I6 => O6,
           I7 => O7,
           I8 => O8,
           I9 => O9,
           I10 => O10,
           I11 => O11,
           I12 => O12,
           I13 => O13,
           I14 => O14,
           I15 => O15,
           I16 => O16,
           I17 => O17,
           I18 => O18,
           I19 => O19,
           I20 => O20,
           I21 => O21,
           I22 => O22,
           I23 => O23,
           I24 => O24,
           I25 => O25,
           I26 => O26,
           I27 => O27,
           I28 => O28,
           I29 => O29,
           I30 => O30,
           I31 => O31,
           en => ren,
           O => DrS2,
           sel => sigY
         );
         
en1 <= r1 AND wen;
en2 <= r2 AND wen;
en3 <= r3 AND wen;
en4 <= r4 AND wen;
en5 <= r5 AND wen;
en6 <= r6 AND wen;
en7 <= r7 AND wen;
en8 <= r8 AND wen;
en9 <= r9 AND wen;
en10 <= r10 AND wen;
en11 <= r11 AND wen;
en12 <= r12 AND wen;
en13 <= r13 AND wen;
en14 <= r14 AND wen;
en15 <= r15 AND wen;
en16 <= r16 AND wen;
en17 <= r17 AND wen;
en18 <= r18 AND wen;
en19 <= r19 AND wen;
en20 <= r20 AND wen;
en21 <= r21 AND wen;
en22 <= r22 AND wen;
en23 <= r23 AND wen;
en24 <= r24 AND wen;
en25 <= r25 AND wen;
en26 <= r26 AND wen;
en27 <= r27 AND wen;
en28 <= r28 AND wen;
en29 <= r29 AND wen;
en30 <= r30 AND wen;
en31 <= r31 AND wen;

end Behavioral;
