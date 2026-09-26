----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/12/2026 11:52:27 AM
-- Design Name: 
-- Module Name: S-Type LUT - Behavioral
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

entity S_Decoder is
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rS2 : out STD_LOGIC_VECTOR (4 downto 0);
           func : out STD_LOGIC_VECTOR (2 downto 0);
           IMM : out STD_LOGIC_VECTOR (11 downto 0);
           write : out STD_LOGIC);
end S_Decoder;

architecture Behavioral of S_Decoder is
begin
    process (I,InH)
        variable funct3 : std_logic_vector (2 downto 0);
        variable r_S2, r_S1 : std_logic_vector (4 downto 0);
        variable immediate : std_logic_vector (11 downto 0);
        begin
        -------- Init --------
            funct3 := I(14 downto 12);
            r_S2 := I(24 downto 20);
            r_S1 := I(19 downto 15);
            immediate := I(31 downto 25)&I(11 downto 7);
            
        if (InH = '0') then    
            case funct3 is
                when "000" =>  -- SB
                OP <= "0011";
                write <= '1';
                
                when "001" =>  -- SH
                OP <= "0011";
                write <= '1';

                when "010" =>  -- SW
                OP <= "0011";
                write <= '1';

                when others =>
                OP <= "1111";
                write <= '0';        
            end case;
        else
                OP <= "1111";
                write <= '0';
        end if; 
        
        rS1 <= r_S1;
        rS2 <= r_S2;
        func <= funct3;
        IMM <= immediate;
                   
    end process;
end Behavioral;
