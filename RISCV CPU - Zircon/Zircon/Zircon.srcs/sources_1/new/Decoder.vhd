----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/12/2026 11:32:24 AM
-- Design Name: 
-- Module Name: Decoder - Behavioral
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

entity Decoder is
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
end Decoder;

architecture Behavioral of Decoder is

-------- Components --------
component Master_Decoder
Port(
           DI : in STD_LOGIC_VECTOR (31 downto 0);
           flag : out STD_LOGIC;
           wen : out STD_LOGIC;
           ren : out STD_LOGIC;
           DO : out STD_LOGIC_VECTOR (31 downto 0);
           R : out STD_LOGIC;
           B : out STD_LOGIC;
           I : out STD_LOGIC;
           S : out STD_LOGIC;
           U : out STD_LOGIC;
           J : out STD_LOGIC;
           srcB : out STD_LOGIC;
           sel : out STD_LOGIC_VECTOR (2 downto 0);
           exc : out STD_LOGIC_VECTOR (31 downto 0)
    );
end component;

component R_Decoder
Port(
           I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rS2 : out STD_LOGIC_VECTOR (4 downto 0);
           rD : out STD_LOGIC_VECTOR (4 downto 0)
    );
end component;

component U_Decoder
Port(
           I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rD : out STD_LOGIC_VECTOR (4 downto 0);
           IMM : out STD_LOGIC_VECTOR (31 downto 0);
           srcA : out STD_LOGIC
    );
end component;

component J_Decoder
Port(
           I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rD : out STD_LOGIC_VECTOR (4 downto 0);
           IMM : out STD_LOGIC_VECTOR (20 downto 0);
           jmp : out STD_LOGIC;
           srcA : out STD_LOGIC
    );
end component;

component B_Decoder
Port(
           I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rS2 : out STD_LOGIC_VECTOR (4 downto 0);
           func : out STD_LOGIC_VECTOR (2 downto 0);
           IMM : out STD_LOGIC_VECTOR (12 downto 0);
           brch : out STD_LOGIC
    );
end component;

component I_Decoder
Port(
           I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rD : out STD_LOGIC_VECTOR (4 downto 0);
           func : out STD_LOGIC_VECTOR (2 downto 0);
           IMM : out STD_LOGIC_VECTOR (11 downto 0);
           load : out STD_LOGIC;
           read : out STD_LOGIC;
           rtn : out STD_LOGIC;
           jmp : out STD_LOGIC
    );
end component;

component S_Decoder
Port(
           I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rS2 : out STD_LOGIC_VECTOR (4 downto 0);
           func : out STD_LOGIC_VECTOR (2 downto 0);
           IMM : out STD_LOGIC_VECTOR (11 downto 0);
           write : out STD_LOGIC
    );
end component;

component mux32_81
Port(
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

component mux3_81
Port(
           A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           C : in  STD_LOGIC_VECTOR (2 downto 0);
           D : in  STD_LOGIC_VECTOR (2 downto 0);
           E : in  STD_LOGIC_VECTOR (2 downto 0);
           F : in  STD_LOGIC_VECTOR (2 downto 0);
           G : in  STD_LOGIC_VECTOR (2 downto 0);
           H : in  STD_LOGIC_VECTOR (2 downto 0);
           O : out  STD_LOGIC_VECTOR (2 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0)
    );
end component;

component mux4_81
Port(
           A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           C : in  STD_LOGIC_VECTOR (3 downto 0);
           D : in  STD_LOGIC_VECTOR (3 downto 0);
           E : in  STD_LOGIC_VECTOR (3 downto 0);
           F : in  STD_LOGIC_VECTOR (3 downto 0);
           G : in  STD_LOGIC_VECTOR (3 downto 0);
           H : in  STD_LOGIC_VECTOR (3 downto 0);
           O : out  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0)
    );
end component;

component mux5_81
Port(
           A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           C : in  STD_LOGIC_VECTOR (4 downto 0);
           D : in  STD_LOGIC_VECTOR (4 downto 0);
           E : in  STD_LOGIC_VECTOR (4 downto 0);
           F : in  STD_LOGIC_VECTOR (4 downto 0);
           G : in  STD_LOGIC_VECTOR (4 downto 0);
           H : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (4 downto 0);
           sel : in  STD_LOGIC_VECTOR (2 downto 0)
    );
end component;

component sgnExt12_32
Port(
           I : in STD_LOGIC_VECTOR (11 downto 0);
           O : out STD_LOGIC_VECTOR (31 downto 0)
    );
end component;

component sgnExt13_32
Port(
           I : in STD_LOGIC_VECTOR (12 downto 0);
           O : out STD_LOGIC_VECTOR (31 downto 0)
    );
end component;

component sgnExt21_32
Port(
           I : in STD_LOGIC_VECTOR (20 downto 0);
           O : out STD_LOGIC_VECTOR (31 downto 0)
    );
end component;

-------- Signals --------
signal R,B,I,S,U,J,UsrcA,JsrcA,Ijmp,Jjmp : std_logic;
signal sel,Bfunc,Ifunc,Sfunc : std_logic_vector (2 downto 0);
signal ROP,IOP,SOP,BOP,UOP,JOP : std_logic_vector (3 downto 0);
signal RrS1,RrS2,RrD,BrS1,BrS2,IrS1,IrD,SrS1,SrS2,UrD,JrD : std_logic_vector (4 downto 0);
signal Iimm,Simm : std_logic_vector (11 downto 0);
signal Bimm : std_logic_vector (12 downto 0);
signal Jimm : std_logic_vector (20 downto 0);
signal O,Uimm,IimmExt,SimmExt,BimmExt,JimmExt : std_logic_vector (31 downto 0);

begin

cop1: Master_Decoder
Port map(
            DI => Data,
            flag => flag,
            ren => ren,
            wen => wen,
            srcB => srcB,
            R => R,
            B => B,
            I => I,
            S => S,
            U => U,
            J => J,
            exc => exc,
            sel => sel,
            DO => O
        );
        
cop2: R_Decoder
Port map(
            I => O,
            InH => R,
            OP => ROP,
            rS1 => RrS1,
            rS2 => RrS2,
            rD => RrD
        );

cop3: U_Decoder
Port map(
            I => O,
            InH => U,
            OP => UOP,
            rD => UrD,
            IMM => Uimm,
            srcA => UsrcA
        );

cop4: J_Decoder
Port map(
            I => O,
            InH => J,
            OP => JOP,
            rD => JrD,
            IMM => Jimm,
            jmp => Jjmp,
            srcA => JsrcA
        );

cop5: B_Decoder
Port map(
            I => O,
            InH => B,
            OP => BOP,
            rS1 => BrS1,
            rS2 => BrS2,
            func => Bfunc,
            IMM => Bimm,
            brch => brch
        );

cop6: I_Decoder
Port map(
            I => O,
            InH => I,
            OP => IOP,
            rS1 => IrS1,
            rD => IrD,
            func => Ifunc,
            IMM => Iimm,
            load => load,
            read => read,
            rtn => rtn,
            jmp  => Ijmp
        );

cop7: S_Decoder
Port map(
            I => O,
            InH => S,
            OP => SOP,
            rS1 => SrS1,
            rS2 => SrS2,
            func => Sfunc,
            IMM => Simm,
            write => write
        );

cop8: mux32_81
Port map(
            A => x"00000000",
            B => BimmExt,
            C => IimmExt,
            D => SimmExt,
            E => Uimm,
            F => JimmExt,
            G => x"00000000",
            H => x"00000000",
            O => IMM,
            sel => sel
        );

cop9: mux3_81
Port map(
            A => "000",
            B => Bfunc,
            C => Ifunc,
            D => Sfunc,
            E => "000",
            F => "000",
            G => "000",
            H => "000",
            O => func,
            sel => sel
        );

cop10: mux4_81
Port map(
            A => ROP,
            B => BOP,
            C => IOP,
            D => SOP,
            E => UOP,
            F => JOP,
            G => x"0",
            H => x"0",
            O => OP,
            sel => sel
        );

cop11: mux5_81
Port map(
            A => RrD,
            B => "00000",
            C => IrD,
            D => "00000",
            E => UrD,
            F => JrD,
            G => "00000",
            H => "00000",
            O => rD,
            sel => sel
        );

cop12: mux5_81
Port map(
            A => RrS2,
            B => BrS2,
            C => "00000",
            D => SrS2,
            E => "00000",
            F => "00000",
            G => "00000",
            H => "00000",
            O => rS2,
            sel => sel
        );

cop13: mux5_81
Port map(
            A => RrS1,
            B => BrS1,
            C => IrS1,
            D => SrS1,
            E => "00000",
            F => "00000",
            G => "00000",
            H => "00000",
            O => rS1,
            sel => sel
        );

cop14: sgnExt12_32
Port map(
            I => Iimm,
            O => IimmExt
        );

cop15: sgnExt12_32
Port map(
            I => Simm,
            O => SimmExt
        );

cop16: sgnExt13_32
Port map(
            I => Bimm,
            O => BimmExt
        );

cop17: sgnExt21_32
Port map(
            I => Jimm,
            O => JimmExt
        );

srcA <= UsrcA OR JsrcA;
jmp <= Ijmp OR Jjmp;

end Behavioral;
