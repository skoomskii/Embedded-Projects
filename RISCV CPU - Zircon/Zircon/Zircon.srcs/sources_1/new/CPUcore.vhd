----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/16/2026 10:47:36 AM
-- Design Name: 
-- Module Name: CPUcore - Behavioral
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

entity CPUcore is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           exc : out STD_LOGIC_VECTOR (31 downto 0);
           flag : out STD_LOGIC);
end CPUcore;

architecture Behavioral of CPUcore is
-------- Components --------
component L1Cache
Port ( clk : in STD_LOGIC;
       reset : in STD_LOGIC;
       read : in STD_LOGIC;
       write : in STD_LOGIC;
       address : in STD_LOGIC_VECTOR (31 downto 0);
       mode : in STD_LOGIC_VECTOR (2 downto 0);
       DI : in STD_LOGIC_VECTOR (31 downto 0);
       DO : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component ROM
    generic ( add_width : integer := 32;
              data_width : integer := 32);
    Port ( clk : in STD_LOGIC;
           enable : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (add_width-1 downto 0);
           DO : out STD_LOGIC_VECTOR (data_width-1 downto 0));
end component;

component Decoder
Port ( Data : in STD_LOGIC_VECTOR (31 downto 0);
       rtn : out STD_LOGIC;
       jmp : out STD_LOGIC;
       brch : out STD_LOGIC;
       func : out STD_LOGIC_VECTOR (2 downto 0);
       flag : out STD_LOGIC;
       write : out STD_LOGIC;
       read : out STD_LOGIC;
       load : out STD_LOGIC;
       exc : out STD_LOGIC_VECTOR (31 downto 0);
       srcA : out STD_LOGIC;
       srcB : out STD_LOGIC;
       wen : out STD_LOGIC;
       ren : out STD_LOGIC;
       OP : out STD_LOGIC_VECTOR (3 downto 0);
       rS2 : out STD_LOGIC_VECTOR (4 downto 0);
       rS1 : out STD_LOGIC_VECTOR (4 downto 0);
       rD : out STD_LOGIC_VECTOR (4 downto 0);
       IMM : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component GPR
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
end component;

component ALU
Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
       B : in STD_LOGIC_VECTOR (31 downto 0);
       R : out STD_LOGIC_VECTOR (31 downto 0);
       OP : in STD_LOGIC_VECTOR (3 downto 0);
       Zf : out STD_LOGIC;
       Cf : out STD_LOGIC);
end component;

component PIPO_Hold
Port(clk : in std_logic;
   reset : in std_logic;
   en : in std_logic;		 
   DI : in std_logic_vector(31 downto 0);
   DO : out std_logic_vector(31 downto 0));
end component;

component mux32_11
Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
       B : in STD_LOGIC_VECTOR (31 downto 0);
       O : out STD_LOGIC_VECTOR (31 downto 0);
       sel : in STD_LOGIC);
end component;

component mux_81
Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : in  STD_LOGIC;
           H : in  STD_LOGIC;
           O : out  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (2 downto 0));
end component;

component RippleAdder
Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
       B : in STD_LOGIC_VECTOR (31 downto 0);
       Cin : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (31 downto 0);
       Cout : out STD_LOGIC);
end component;

component regHold
Port ( clk : in STD_LOGIC;
       reset : in STD_LOGIC;
       en : in STD_LOGIC;
       I : in STD_LOGIC;
       O : out STD_LOGIC);
end component;

-------- Signals --------
signal bubble,bubbleIN,bubbleOUT,rtn,jmp,brch,write,read,load,srcA,srcB,wen,ren,Zf,Cf,branch,Zp,bout,stall : std_logic;
signal func : std_logic_vector(2 downto 0);
signal OP : std_logic_vector(3 downto 0);
signal rS1,rS2,rD : std_logic_vector(4 downto 0);
signal imm,data,DrS1,DrS2,R,DO,LSB,LSH,sigDO,PC,ADD,PC4,PCI,off,offset,A,B,C,sigADD : std_logic_vector(31 downto 0);

begin

cop1: ROM
Port map ( clk => clk,
           enable => stall,
           address => PC,
           DO => ADD);
           
cop2: L1Cache
Port map ( clk => clk,
           reset => reset,
           read => read,
           write => write,
           address => R,
           mode => func,
           DI => DrS2,
           DO => DO);           

cop3: Decoder
Port map ( Data => ADD,
           rtn => rtn,
           jmp => jmp,
           brch => brch,
           func => func,
           flag => flag,
           write => write,
           read => read,
           load => load,
           exc => exc,
           srcA => srcA,
           srcB => srcB,
           wen => wen,
           ren => ren,
           OP => OP,
           rS2 => rS2,
           rS1 => rS1,
           rD => rD,
           IMM => imm);
           
cop4: GPR
Port map ( clk => clk,
           reset => reset,
           wen => wen,
           ren => ren,
           rS2 => rS2,
           rS1 => rS1,
           rD => rD,
           Data => data,
           DrS1 => DrS1,
           DrS2 => DrS2);

cop5: ALU
Port map ( A => A,
           B => B,
           R => R,
           OP => OP,
           Zf => Zf,
           Cf => Cf);

cop6: PIPO_Hold
Port map ( clk => clk,
           reset => reset,
           en => stall,		 
           DI => PCI,
           DO => PC);

cop7: mux32_11
Port map ( A => PC4,
           B => off,
           O => PCI,
           sel => jmp);

cop8: mux32_11
Port map ( A => R,
           B => offset,
           O => off,
           sel => rtn);

cop9: mux32_11
Port map ( A => DrS1,
           B => PC,
           O => A,
           sel => srcA);
           
cop10: mux32_11
Port map ( A => DrS2,
           B => imm,
           O => B,
           sel => srcB);

cop11: mux32_11
Port map ( A => C,
           B => PC4,
           O => data,
           sel => jmp);

cop12: mux32_11
Port map ( A => R,
           B => DO,
           O => C,
           sel => load);         

cop13: mux_81
Port map ( A => Zf,
           B => Zp,
           C => '0',
           D => '0',
           E => Zp,
           F => Zf,
           G => Zp,
           H => Zf,
           O => bout,
           sel => func);

cop14: RippleAdder
Port map ( A => sigADD,
           B => PC,
           Cin => '0',
           Y => PC4);   
           
cop15: regHold
Port map ( clk => clk,
           reset => reset,
           en => '1',
           I => bubbleIN,
           O => bubbleOUT);
           
cop16: mux32_11
Port map ( A => x"00000004",
           B => imm,
           O => sigADD,
           sel => branch);               

bubbleIN <= read XOR bubbleOUT;
bubble <= bubbleOUT XOR read;
stall <= bubble XOR '1';
Zp <= NOT (Zf);
offset <= R(31 downto 1)&'0';
branch <= brch AND bout;

end Behavioral;
