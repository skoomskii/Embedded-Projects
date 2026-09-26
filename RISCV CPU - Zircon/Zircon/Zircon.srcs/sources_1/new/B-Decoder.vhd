----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/12/2026 11:52:27 AM
-- Design Name: 
-- Module Name: B-Type LUT - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity B_Decoder is
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rS2 : out STD_LOGIC_VECTOR (4 downto 0);
           func : out STD_LOGIC_VECTOR (2 downto 0);
           IMM : out STD_LOGIC_VECTOR (12 downto 0);
           brch : out STD_LOGIC);
end B_Decoder;

architecture Behavioral of B_Decoder is

begin
    process (I,InH)
        variable funct3 : std_logic_vector (2 downto 0);
        variable r_S2, r_S1 : std_logic_vector (4 downto 0);
        variable immediate : std_logic_vector (12 downto 0);
        begin
        -------- Init --------
            funct3 := I(14 downto 12);
            r_S2 := I(24 downto 20);
            r_S1 := I(19 downto 15);
            immediate := I(31)&I(7)&I(30 downto 25)&I(11 downto 8)&'0';
            
            if (InH = '0') then
                if (funct3 = "000") then  -- BEQ
                    OP <= "0010";
                    brch <= '1';
                    
                elsif (funct3 = "001") then  -- BNE
                    OP <= "0010";
                    brch <= '1';
    
                elsif (funct3 = "100") then  -- BLT
                    OP <= "0101";
                    brch <= '1';             
    
                elsif (funct3 = "101") then  -- BGE
                    OP <= "0101";
                    brch <= '1';
    
                elsif (funct3 = "110") then  -- BLTU
                    OP <= "1100";
                    brch <= '1';
     
                elsif (funct3 = "111") then  -- BGEU
                    OP <= "1100";
                    brch <= '1';      
                end if;
            else
                OP <= "1111";
                brch <= '0';            
            end if;       
            
            func <= funct3;
            rS2 <= r_S2;
            rS1 <= r_S1;
            IMM <= immediate;
    end process;
end Behavioral;
