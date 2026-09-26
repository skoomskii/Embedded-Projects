----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/14/2026 10:06:16 AM
-- Design Name: 
-- Module Name: RippleAdder - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RippleAdder is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Cin : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (31 downto 0);
           Ovf : out STD_LOGIC;
           Cout : out STD_LOGIC);
end RippleAdder;

architecture Behavioral of RippleAdder is

-------- Signals --------
signal oflw : std_logic;
signal suml, sigAl, sigBl : std_logic_vector(31 downto 0);
signal sumu, sigAu, sigBu, sigCu, Bc : std_logic_vector (32 downto 0);

begin

process (A,B,Bc,Cin,sumu,suml,sigAu,sigBu,sigCu,sigAl,sigBl,oflw)
begin
    -------- Init --------
    Bc <= ('0'&B) + (x"00000000"&Cin);
    sigAl <= '0' & A(30 downto 0);
    sigBl <= '0' & Bc(30 downto 0);
    suml <= (sigAl + sigBl);
    
    sigAu <= '0' & A(31) & "0000000000000000000000000000000";
    sigBu <= Bc(32) & B(31) & "0000000000000000000000000000000"; 
    sigCu <= '0' & suml;
    sumu <= (sigAu + sigBu + sigCu);
    
    -------- Overflow --------
    if (Cin = '0') then -- SUM
        oflw <= (suml(31) XOR sumu(32)) AND (A(31) XNOR B(31));
    else -- SUB
        oflw <= (suml(31) XOR sumu(32)) AND (A(31) XOR NOT(B(31)));
    end if;

end process;

    Cout <= sumu(32);
    Y <= sumu(31 downto 0);
    Ovf <= oflw;

end Behavioral;
