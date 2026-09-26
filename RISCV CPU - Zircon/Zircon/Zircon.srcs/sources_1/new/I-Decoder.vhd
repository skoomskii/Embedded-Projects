----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/12/2026 11:52:27 AM
-- Design Name: 
-- Module Name: I-Type LUT - Behavioral
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

entity I_Decoder is
    Port ( I : in STD_LOGIC_VECTOR (31 downto 0);
           InH : in std_logic;
           OP : out STD_LOGIC_VECTOR (3 downto 0);
           rS1 : out STD_LOGIC_VECTOR (4 downto 0);
           rD : out STD_LOGIC_VECTOR (4 downto 0);
           func : out STD_LOGIC_VECTOR (2 downto 0);
           IMM : out STD_LOGIC_VECTOR (11 downto 0);
           load : out STD_LOGIC;
           read : out STD_LOGIC;
           rtn : out STD_LOGIC;
           jmp : out STD_LOGIC);
end I_Decoder;

architecture Behavioral of I_Decoder is
begin
    process (I,InH)
        variable funct3 : std_logic_vector (2 downto 0);
        variable r_S1, r_D : std_logic_vector (4 downto 0);
        variable opcode, func7 : std_logic_vector (6 downto 0);
        variable immediate : std_logic_vector (11 downto 0);
        begin
        -------- Init --------
            opcode := I(6 downto 0);
            func7 := I(31 downto 25);
            funct3 := I(14 downto 12);
            immediate := I(31 downto 20);
            r_S1 := I(19 downto 15);
            r_D := I(11 downto 7);
            
        if (InH = '0') then
            if opcode <= "0000011" then -- Loads
                case funct3 is
                    when "000" =>  -- LB
                    OP <= "0011";
                    load <= '1';
                    read <= '1';
                    rtn <= '0';
                    jmp <= '0';
    
                    when "001" =>  -- LH
                    OP <= "0011";
                    load <= '1';
                    read <= '1';
                    rtn <= '0';
                    jmp <= '0';
    
                    when "010" =>  -- LW
                    OP <= "0011";
                    load <= '1';
                    read <= '1';
                    rtn <= '0';
                    jmp <= '0';
     
                    when "100" =>  -- LBU
                    OP <= "0011";
                    load <= '1';
                    read <= '1';
                    rtn <= '0';
                    jmp <= '0';
                    
                    when "101" =>  -- LHU
                    OP <= "0011";
                    load <= '1';
                    read <= '1';
                    rtn <= '0';
                    jmp <= '0';
                    
                    when others =>
                    OP <= "1111";
                    load <= '0';
                    read <= '0';
                    rtn <= '0';
                    jmp <= '0';                       
                end case;
                    
            elsif opcode <= "0010011" then --Norms
                    case funct3 is
                        when "000" =>  -- ADDI
                        OP <= "0011";
                        load <= '0';
                        read <= '0';
                        rtn <= '0';
                        jmp <= '0';
                        
                        when "010" =>  -- SLTI
                        OP <= "0101";
                        load <= '0';
                        read <= '0';
                        rtn <= '0';
                        jmp <= '0';
                        
                        when "011" =>  -- SLTIU
                        OP <= "1100";
                        load <= '0';
                        read <= '0';
                        rtn <= '0';
                        jmp <= '0';
                        
                        when "100" =>  -- XORI
                        OP <= "0010";
                        load <= '0';
                        read <= '0';
                        rtn <= '0';
                        jmp <= '0';                                                                            
        
                        when "110" =>  -- ORI
                        OP <= "0001";
                        load <= '0';
                        read <= '0';
                        rtn <= '0';
                        jmp <= '0';
                        
                        when "111" =>  -- ANDI
                        OP <= "0000";
                        load <= '0';
                        read <= '0';
                        rtn <= '0';
                        jmp <= '0';
        
                        when "001" =>  -- SLLI
                        OP <= "0110";
                        load <= '0';
                        read <= '0';
                        rtn <= '0';
                        jmp <= '0';
        
                        when "101" =>
                            if func7 <= "0000000" then  -- SRLI
                                OP <= "0111";
                                load <= '0';
                                read <= '0';
                                rtn <= '0';
                                jmp <= '0';
                            elsif func7 <= "0100000" then -- SRAI
                                OP <= "1000";
                                load <= '0';
                                read <= '0';
                                rtn <= '0';
                                jmp <= '0';
                            else
                                OP <= "1111";
                                load <= '0';
                                read <= '0';
                                rtn <= '0';
                                jmp <= '0';                            
                            end if;
                            
                        when others =>  
                        OP <= "1111";
                        load <= '0';
                        read <= '0';
                        rtn <= '0';
                        jmp <= '0';                              
                    end case;         
                  
            elsif opcode <= "1100111" then -- JALR
                    OP <= "0011";
                    load <= '0';
                    read <= '0';
                    rtn <= '1';
                    jmp <= '1';                
            else
                    OP <= "1111";
                    load <= '0';
                    read <= '0';
                    rtn <= '0';
                    jmp <= '0';            
            end if;
        else
                    OP <= "1111";
                    load <= '0';
                    read <= '0';
                    rtn <= '0';
                    jmp <= '0';
        end if;
        
        rS1 <= r_S1;
        rD <= r_D;
        func <= funct3;
        IMM <= immediate;  
                         
    end process;
end Behavioral;
