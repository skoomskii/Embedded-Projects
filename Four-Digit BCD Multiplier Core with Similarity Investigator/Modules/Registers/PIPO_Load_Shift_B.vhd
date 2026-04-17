----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date:    10:31:13 09/21/2017 
-- Design Name: 
-- Module Name:    Load_Shift_Register_10digit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PIPO_Load_Shift_B is
  Port(clk : in std_logic;
		 reset : in std_logic;
       load : in std_logic;
		 right_shift : in std_logic;
		 data_i : in std_logic_vector(15 downto 0);
       data_o : out std_logic_vector(3 downto 0));
end PIPO_Load_Shift_B;

architecture Behavioral of PIPO_Load_Shift_B is

---- Signal ----
signal dataout_sig : std_logic_vector(15 downto 0);

begin
  process(clk, reset, load, right_shift, data_i, dataout_sig)
    begin
	   if(reset = '1')then
		  dataout_sig <= X"0000";
			elsif(load'event and load = '1')then
			dataout_sig <= data_i;
			elsif(right_shift'event and right_shift = '1')then
			dataout_sig <= "0000" & dataout_sig(15 downto 4);
		end if;
	 data_o <= dataout_sig(3 downto 0);
	 end process;
end Behavioral;