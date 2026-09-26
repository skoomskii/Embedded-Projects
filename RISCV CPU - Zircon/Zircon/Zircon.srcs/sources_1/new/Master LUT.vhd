----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/12/2026 11:52:27 AM
-- Design Name: 
-- Module Name: Master LUT - Behavioral
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

entity Master_Decoder is
    Port ( DI : in STD_LOGIC_VECTOR (31 downto 0);
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
           exc : out STD_LOGIC_VECTOR (31 downto 0));
end Master_Decoder;

architecture Behavioral of Master_Decoder is

begin
    process(DI)
        variable Instruction: std_logic_vector(6 downto 0);
        begin
        Instruction := DI(6 downto 0);
            case Instruction is
                when "0110011" =>   -- R-type
                sel <= "000";
                flag <= '0';
                ren <= '1';
                wen <= '1';
                srcB <= '0';
                R <= '0';
                B <= '1';
                I <= '1';
                S <= '1';
                U <= '1';
                J <= '1';
                exc <= x"00000000";   
                             
                when "0000011" =>   -- I-type Loads
                sel <= "010";
                flag <= '0';
                ren <= '1';
                wen <= '1';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '0';
                S <= '1';
                U <= '1';
                J <= '1';
                exc <= x"00000000";
                
                when "1100111" =>   -- I-type Jumps
                sel <= "010";
                flag <= '0';
                ren <= '1';
                wen <= '1';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '0';
                S <= '1';
                U <= '1';
                J <= '1';
                exc <= x"00000000";
                
                when "0010011" =>   -- I-type Norms
                sel <= "010";
                flag <= '0';
                ren <= '1';
                wen <= '1';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '0';
                S <= '1';
                U <= '1';
                J <= '1';
                exc <= x"00000000";
                
                when "0001111" =>   -- I-type Specials
                sel <= "010";
                flag <= '1';
                ren <= '1';
                wen <= '1';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '0';
                S <= '1';
                U <= '1';
                J <= '1';
                exc <= x"0000AAAA";   
                
                when "1110011" =>   -- I-type Specials
                sel <= "010";
                flag <= '1';
                ren <= '1';
                wen <= '1';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '0';
                S <= '1';
                U <= '1';
                J <= '1';
                exc <= x"0000AAAA";                                                                  
                           
                when "0100011" =>   -- S-type
                sel <= "011";
                flag <= '0';
                ren <= '1';
                wen <= '0';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '1';
                S <= '0';
                U <= '1';
                J <= '1';
                exc <= x"00000000";   
                             
                when "1100011" =>   -- B-type
                sel <= "001";
                flag <= '0';
                ren <= '1';
                wen <= '0';
                srcB <= '0';
                R <= '1';
                B <= '0';
                I <= '1';
                S <= '1';
                U <= '1';
                J <= '1';
                exc <= x"00000000";  
                             
                when "0110111" =>   -- U-type
                sel <= "100";
                flag <= '0';
                ren <= '0';
                wen <= '1';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '1';
                S <= '1';
                U <= '0';
                J <= '1';
                exc <= x"00000000";     
                           
                when "0010111" =>   -- U-type
                sel <= "100";
                flag <= '0';
                ren <= '0';
                wen <= '1';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '1';
                S <= '1';
                U <= '0';
                J <= '1';
                exc <= x"00000000";      
                          
                when "1101111" =>  -- J-type
                sel <= "101";
                flag <= '0';
                ren <= '0';
                wen <= '1';
                srcB <= '1';
                R <= '1';
                B <= '1';
                I <= '1';
                S <= '1';
                U <= '1';
                J <= '0';
                exc <= x"00000000";   
                                                                                                                        
                when others =>  -- Illegals
                sel <= "111";
                flag <= '1';
                ren <= '0';
                wen <= '0';
                srcB <= '0';
                R <= '1';
                B <= '1';
                I <= '1';
                S <= '1';
                U <= '1';
                J <= '1';
                exc <= x"0000FFFF";
            end case;
        DO <= DI;
        end process;
end Behavioral;
