----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/15/2026 10:41:05 AM
-- Design Name: 
-- Module Name: MAC - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MAC is
    Port ( read : in STD_LOGIC;
           write : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (31 downto 0);
           mode : in STD_LOGIC_VECTOR (2 downto 0);
           wen : out STD_LOGIC;
           xen : out STD_LOGIC;
           yen : out STD_LOGIC;
           zen : out STD_LOGIC;
           rd : out STD_LOGIC;
           wd : out STD_LOGIC;
           sgnEN: out std_logic;
           addW : out STD_LOGIC_VECTOR (31 downto 0);
           addX : out STD_LOGIC_VECTOR (31 downto 0);
           addY : out STD_LOGIC_VECTOR (31 downto 0);
           addZ : out STD_LOGIC_VECTOR (31 downto 0));
end MAC;

architecture Behavioral of MAC is
-------- Signals --------
signal w,x,y,z : std_logic;
signal aW,aX,aY,aZ : integer;

begin
    
    process(read, write, address, mode, aW, w, aX, x, aY, y, aZ, z)  
    -------- Variables --------
    variable ptr,aDD : integer;
    
    begin
        -------- Init --------   
        aDD := TO_INTEGER(unsigned(address));
        -------- enabled --------
            if ((read OR write) = '1') then
                aW <= 0;
                w <= '0';
                aX <= 0;
                x <= '0';
                aY <= 0;
                y <= '0';
                aZ <= 0;
                z <= '0';
                rd <= '0';
                wd <= '0';
                -------- Sel Mode --------
                case mode is
                    when "000" =>  -- Signed Byte
                        w <= '1';
                        x <= '0';
                        y <= '0';
                        z <= '0';
                        sgnEN <= '1';
                        
                    when "001" =>   -- Signed Half
                        w <= '1';
                        x <= '1';
                        y <= '0';
                        z <= '0';   
                        sgnEN <= '1';
                                         
                    when "010" =>   -- Word
                        w <= '1';
                        x <= '1';
                        y <= '1';
                        z <= '1';  
                        sgnEN <= '0';
                        
                    when "100" =>   -- Unsigned Byte
                        w <= '1';
                        x <= '0';
                        y <= '0';
                        z <= '0';   
                        sgnEN <= '0';
                                         
                    when "101" =>   -- Unsigned Half
                        w <= '1';
                        x <= '1';
                        y <= '0';
                        z <= '0';  
                        sgnEN <= '0';                            
                         
                     when others =>   
                        w <= '0';
                        x <= '0';
                        y <= '0';
                        z <= '0';   
                        sgnEN <= '0';                                
                end case;   
         -------- Align Memory Address -------- 
                ptr := aDD/4;
                aW <= 4*ptr;
                aX <= aW+1;
                aY <= aW+2;
                aZ <= aW+3;
                rd <= (read AND '1');
                wd <= (write AND '1');
            end if;       
        
    wen <= w;
    xen <= x;
    yen <= y;
    zen <= z;
    addW <= std_logic_vector(TO_UNSIGNED(aW,32));
    addX <= std_logic_vector(TO_UNSIGNED(aX,32));
    addY <= std_logic_vector(TO_UNSIGNED(aY,32));
    addZ <= std_logic_vector(TO_UNSIGNED(aZ,32));
        
    end process;
end Behavioral;
