----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/14/2026 10:14:29 AM
-- Design Name: 
-- Module Name: opLUT - Behavioral
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

entity opLUT is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           Cin : out STD_LOGIC;
           INV : out STD_LOGIC;
           LA : out STD_LOGIC;
           SGN : out STD_LOGIC;
           DIR : out STD_LOGIC;
           sel : out STD_LOGIC_VECTOR (2 downto 0));
end opLUT;

architecture Behavioral of opLUT is

begin

process(I)
    -------- Variables --------
    variable OP : std_logic_vector (3 downto 0);
    
    begin
        -------- Init --------
        OP := I;
        case OP is
            when x"0" => -- AND
                Cin <= '0';
                INV <= '0';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "000";
            
            when x"1" => -- OR
                Cin <= '0';
                INV <= '0';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "001";
            
            when x"2" => -- XOR
                Cin <= '0';
                INV <= '0';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "010";
            
            when x"3" => -- ADD
                Cin <= '0';
                INV <= '0';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "011";
            
            when x"4" => -- SUB
                Cin <= '1';
                INV <= '1';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "011";
            
            when x"5" => -- SLT
                Cin <= '1';
                INV <= '1';
                LA <= '0';
                SGN <= '1';
                DIR <= '0';
                sel <= "100";
            
            when x"6" => -- SLL
                Cin <= '0';
                INV <= '0';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "101";
            
            when x"7" => -- SRL
                Cin <= '0';
                INV <= '0';
                LA <= '0';
                SGN <= '0';
                DIR <= '1';
                sel <= "101";
            
            when x"8" => -- SRA
                Cin <= '0';
                INV <= '0';
                LA <= '1';
                SGN <= '0';
                DIR <= '1';
                sel <= "101";
            
            when x"A" => -- A
                Cin <= '0';
                INV <= '0';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "110";
                
            when x"C" => -- SLT(U)
                Cin <= '1';
                INV <= '1';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "100";
                
            when x"F" => -- B
                Cin <= '0';
                INV <= '0';
                LA <= '0';
                SGN <= '0';
                DIR <= '0';
                sel <= "111";
            
            when others =>
        
        end case;
    
    end process;

end Behavioral;
