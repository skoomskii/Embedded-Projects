----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/22/2026 11:33:43 AM
-- Design Name: 
-- Module Name: regMAC - Behavioral
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

entity regMAC is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           en : in STD_LOGIC;
           rdI : in STD_LOGIC;
           wtI : in STD_LOGIC;
           modI : in STD_LOGIC_VECTOR (2 downto 0);
           addI : in STD_LOGIC_VECTOR (31 downto 0);
           di : in STD_LOGIC_VECTOR (31 downto 0);
           do : out STD_LOGIC_VECTOR (31 downto 0);
           rdO : out STD_LOGIC;
           wtO : out STD_LOGIC;
           modO : out STD_LOGIC_VECTOR (2 downto 0);
           addO : out STD_LOGIC_VECTOR (31 downto 0));
end regMAC;

architecture Behavioral of regMAC is
---- Signal ----
signal sigRD,sigWT : std_logic;
signal sigMO : std_logic_vector(2 downto 0);
signal sigAD,sigDO : std_logic_vector(31 downto 0);

begin
  process(clk, reset, en, rdI, wtI, modI, addI, di)
    begin
	   if(reset = '1')then
	       sigRD <= '0';
	       sigWT <= '0';
	       sigMO <= "000";
	       sigAD <= x"00000000";
	       sigDO <= X"00000000";
		elsif(clk'event and clk='1')then
			if(en = '1')then
               sigRD <= rdI;
               sigWT <= wtI;
               sigMO <= modI;
               sigAD <= addI;
               sigDO <= di;
			end if;
		end if;
	 end process;
	 rdO <= sigRD;
	 wtO <= sigWT;
	 modO <= sigMO;
	 addO <= sigAD;
	 do <= sigDO;
end Behavioral;
