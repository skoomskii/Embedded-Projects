----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/20/2026 08:59:51 PM
-- Design Name: 
-- Module Name: ROM - Behavioral
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
use ieee.std_logic_unsigned.all;
use std.textio.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    generic ( add_width : integer := 32;
              data_width : integer := 32);
    Port ( clk : in STD_LOGIC;
           enable : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (add_width-1 downto 0);
           DO : out STD_LOGIC_VECTOR (data_width-1 downto 0));
end ROM;

architecture Behavioral of ROM is

constant rom_depth : integer := 2**(add_width/4);
type rom_type is array (rom_depth-1 downto 0) of std_logic_vector(data_width-1 downto 0);
-------- Init ROM --------
impure function init_rom(filename : string) return rom_type is

    file rom_file : text open read_mode is filename;
    variable rom_line : line;
    variable rom_content : rom_type;
begin
    for i in 0 to rom_depth-1 loop
        readline(rom_file, rom_line);
        bread(rom_line, rom_content(i));
    end loop;
    return rom_content;
end function;

constant rom : rom_type := init_rom(filename => "../../../../Assembler/binary.txt");

begin

process (clk,enable,address)

variable ptr : integer;

begin

    ptr := TO_INTEGER((unsigned(address)))/4;

--    if(clk'event and clk='1')then
        if(enable = '1')then
            DO <= rom(ptr);
--        end if;
    end if;

end process;

end Behavioral;
