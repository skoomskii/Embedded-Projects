----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/12/2026 11:52:27 AM
-- Design Name: 
-- Module Name: R-Type LUT - Behavioral
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

entity R_Decoder is
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rS2 : out STD_LOGIC_VECTOR (4 downto 0);
           rD : out STD_LOGIC_VECTOR (4 downto 0));
end R_Decoder;

architecture Behavioral of R_Decoder is

begin
    process (I,InH)
        variable func : std_logic_vector (9 downto 0);
        variable r_S2, r_S1, r_D : std_logic_vector (4 downto 0);
        begin
        -------- Init --------
            func := I(31 downto 25) & I(14 downto 12);
            r_S2 := I(24 downto 20);
            r_S1 := I(19 downto 15);
            r_D := I(11 downto 7);
            
        if (InH = '0') then
            case func is
                when "0000000000" =>  -- ADD
                OP <= "0011";
                
                when "0100000000" =>  -- SUB
                OP <= "0100";

                when "0000000001" =>  -- SLL
                OP <= "0110";

                when "0000000010" =>  -- SLT
                OP <= "0101";
 
                when "0000000011" =>  -- SLTU
                OP <= "1100";
                
                when "0000000100" =>  -- XOR
                OP <= "0010";
                
                when "0000000101" =>  -- SRL
                OP <= "0111";
                
                when "0100000101" =>  -- SRA
                OP <= "1000";
                
                when "0000000110" =>  -- OR
                OP <= "0001";
                
                when "0000000111" =>  -- AND
                OP <= "0000";                                                                              
                                
                when others =>
                OP <= "1111";
                rS1 <= "00000";
                rS2 <= "00000";
                rD <= "00000";                
            end case;
         else
                OP <= "1111";
                rS1 <= "00000";
                rS2 <= "00000";
                rD <= "00000";         
         end if;
         
         rS1 <= r_S1;
         rS2 <= r_S2;
         rD <= r_D;  
         
    end process;
end Behavioral;
