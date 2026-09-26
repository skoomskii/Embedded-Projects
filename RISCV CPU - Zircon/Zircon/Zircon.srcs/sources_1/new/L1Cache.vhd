----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/15/2026 10:35:23 AM
-- Design Name: 
-- Module Name: L1Cache - Behavioral
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

entity L1Cache is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           read : in STD_LOGIC;
           write : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (31 downto 0);
           mode : in STD_LOGIC_VECTOR (2 downto 0);
           DI : in STD_LOGIC_VECTOR (31 downto 0);
           DO : out STD_LOGIC_VECTOR (31 downto 0));
end L1Cache;

architecture Behavioral of L1Cache is

-------- Components --------
component MAC
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
end component;

component RAM_Block_1024x8
Port(clk : in std_logic;
     reset : in std_logic;
     read : in std_logic;
     write : in std_logic;
     wen : in std_logic;
     xen : in std_logic;
     yen : in std_logic;
     zen : in std_logic;
     sgnEN : in std_logic;			 
     addW : in std_logic_vector(31 downto 0);
     addX : in std_logic_vector(31 downto 0);
     addY : in std_logic_vector(31 downto 0);
     addZ : in std_logic_vector(31 downto 0);
     di : in std_logic_vector(31 downto 0);
     do : out std_logic_vector(31 downto 0));
end component;

-------- Signals --------
signal wen,xen,yen,zen,sgnEN,rd,wd : std_logic;
signal aW,aX,aY,aZ : std_logic_vector(31 downto 0);

begin

cop1: MAC
Port map ( 
           read => read,
           write => write,
           address => address,
           mode => mode,
           wen => wen,
           xen => xen,
           yen => yen,
           zen => zen,
           rd => rd,
           wd => wd,
           sgnEN => sgnEN,
           addW => aW,
           addX => aX,
           addY => aY,
           addZ => aZ
         );

cop2: RAM_Block_1024x8
Port map (
             clk => clk,
             reset => reset,
             read => rd,
             write => wd,
             wen => wen,
             xen => xen,
             yen => yen,
             zen => zen,
             sgnEN => sgnEN,	 
             addW => aW,
             addX => aX,
             addY => aY,
             addZ => aZ,
             di => DI,
             do => DO
         );

end Behavioral;
