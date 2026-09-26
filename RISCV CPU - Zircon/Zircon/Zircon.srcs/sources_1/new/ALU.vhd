----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/14/2026 10:03:02 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           R : out STD_LOGIC_VECTOR (31 downto 0);
           OP : in STD_LOGIC_VECTOR (3 downto 0);
           Ovf : out STD_LOGIC;
           Zf : out STD_LOGIC;
           Cf : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

-------- Components --------
component mux_11
Port ( 
       A : in  STD_LOGIC;
       B : in  STD_LOGIC;
       O : out  STD_LOGIC;
       sel : in  STD_LOGIC
      );
end component;

component mux32_11
Port ( 
       A : in  STD_LOGIC_VECTOR (31 downto 0);
       B : in  STD_LOGIC_VECTOR (31 downto 0);
       O : out  STD_LOGIC_VECTOR (31 downto 0);
       sel : in  STD_LOGIC
      );
end component;

component mux32_81
Port ( 
       A : in  STD_LOGIC_VECTOR (31 downto 0);
       B : in  STD_LOGIC_VECTOR (31 downto 0);
       C : in  STD_LOGIC_VECTOR (31 downto 0);
       D : in  STD_LOGIC_VECTOR (31 downto 0);
       E : in  STD_LOGIC_VECTOR (31 downto 0);
       F : in  STD_LOGIC_VECTOR (31 downto 0);
       G : in  STD_LOGIC_VECTOR (31 downto 0);
       H : in  STD_LOGIC_VECTOR (31 downto 0);
       O : out  STD_LOGIC_VECTOR (31 downto 0);
       sel : in  STD_LOGIC_VECTOR (2 downto 0)
      );
end component;

component RippleAdder
Port ( 
        A : in STD_LOGIC_VECTOR (31 downto 0);
        B : in STD_LOGIC_VECTOR (31 downto 0);        
        Cin : in STD_LOGIC;
        Y : out STD_LOGIC_VECTOR (31 downto 0);
        Ovf : out STD_LOGIC;
        Cout : out STD_LOGIC
      );
end component;

component Shifter
Port ( 
        I : in STD_LOGIC_VECTOR (31 downto 0);
        S : in STD_LOGIC_VECTOR (31 downto 0);
        LA : in STD_LOGIC;
        DIR : in STD_LOGIC;
        O : out STD_LOGIC_VECTOR (31 downto 0)
      );
end component;

component opLUT
Port ( 
        I : in STD_LOGIC_VECTOR (3 downto 0);
        Cin : out STD_LOGIC;
        INV : out STD_LOGIC;
        LA : out STD_LOGIC;
        SGN : out STD_LOGIC;
        DIR : out STD_LOGIC;
        sel : out STD_LOGIC_VECTOR (2 downto 0)
      );
end component;

-------- Signals --------
signal Cin,Cout,LA,DIR,INV,selA,sgn,c0,c1,c2,c3,c4,c5,Zy : std_logic;
signal selB : std_logic_vector(2 downto 0);
signal sigAND,sigB,Bc,sigOR,sigXOR,sigY,cmp,shift : std_logic_vector (31 downto 0);

begin

cop1: mux32_81
Port map ( 
           A => sigAND,
           B => sigOR,
           C => sigXOR,
           D => sigY,
           E => cmp,
           F => shift,
           G => A,
           H => B,
           O => R,
           sel => selB
          );

cop2: RippleAdder
Port map ( 
            A => A,
            B => sigB,
            Cin => Cin,
            Y => sigY,
            Ovf => Ovf,
            Cout => Cout
          );

cop3: Shifter
Port map ( 
            I => A,
            S => B,
            LA => LA,
            DIR => DIR,
            O => shift
          );
          
cop4: mux32_11
Port map ( 
           A => x"00000000",
           B => x"00000001",
           O => cmp,
           sel => selA
          );

cop5: mux32_11
Port map ( 
           B => Bc,
           A => B,
           O => sigB,
           sel => INV
          );

cop6: opLUT
Port map ( 
            I => OP,
            Cin => Cin,
            INV => INV,
            LA => LA,
            SGN => sgn,
            DIR => DIR,
            sel => selB
          );
       
Cf <= Cout;
Zf <= NOR(R);
Zy <= NOR(sigY);
Bc <= NOT B;
sigAND <= (A AND B);
sigOR <= (A OR B);
sigXOR <= (A XOR B);
c0 <= (Cf NOR Zy);
c1 <= c0 AND c2;
c2 <= sgn NAND c3;
c3 <= A(31) XOR B(31);
c4 <= A(31) AND c3;
c5 <= sgn AND c4;
selA <= c1 OR c5;

end Behavioral;
