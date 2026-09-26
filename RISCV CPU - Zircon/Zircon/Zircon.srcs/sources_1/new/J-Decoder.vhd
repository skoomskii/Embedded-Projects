----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/12/2026 11:52:27 AM
-- Design Name: 
-- Module Name: J-Type LUT - Behavioral
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

entity J_Decoder is
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rD : out STD_LOGIC_VECTOR (4 downto 0);
           IMM : out STD_LOGIC_VECTOR (20 downto 0);
           jmp : out STD_LOGIC;
           srcA : out STD_LOGIC);
end J_Decoder;

architecture Behavioral of J_Decoder is
begin
    process (I,InH)
        variable opcode: std_logic_vector (6 downto 0);
        variable r_D: std_logic_vector (4 downto 0);
        variable immediate: std_logic_vector (20 downto 0);
        begin
        -------- Init --------
            opcode := I(6 downto 0);
            r_D := I(11 downto 7);
            immediate := I(31)&I(19 downto 12)&I(20)&I(30 downto 21)&'0';
            
        if (InH = '0') then
        
            case opcode is
                when "1101111" =>   -- JAL
                OP <= "0011";
                jmp <= '1';
                srcA <= '1';
                
                when others =>
                OP <= "1111";
                jmp <= '0';
                srcA <= '0';
            end case;
            
         else
                OP <= "1111";
                jmp <= '0';
                srcA <= '0';         
         end if;
        
        rD <= r_D;
        IMM <= immediate; 
         
    end process;
end Behavioral;
