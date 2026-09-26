----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/16/2026 01:23:30 PM
-- Design Name: 
-- Module Name: GPR_tb - Behavioral
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

entity GPR_tb is
--  Port ( );
end GPR_tb;

architecture Behavioral of GPR_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT GPR
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           wen : in STD_LOGIC;
           ren : in STD_LOGIC;
           rS2 : in STD_LOGIC_VECTOR (4 downto 0);
           rS1 : in STD_LOGIC_VECTOR (4 downto 0);
           rD : in STD_LOGIC_VECTOR (4 downto 0);
           Data : in STD_LOGIC_VECTOR (31 downto 0);
           DrS1 : out STD_LOGIC_VECTOR (31 downto 0);
           DrS2 : out STD_LOGIC_VECTOR (31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal wen : STD_LOGIC := '0';
   signal ren : STD_LOGIC := '0';
   signal rS2 : STD_LOGIC_VECTOR (4 downto 0);
   signal rS1 : STD_LOGIC_VECTOR (4 downto 0);  
   signal rD : STD_LOGIC_VECTOR (4 downto 0);     
   signal Data : std_logic_vector (31 downto 0);

 	--Outputs
   signal DrS2 : STD_LOGIC_VECTOR (31 downto 0);
   signal DrS1 : STD_LOGIC_VECTOR (31 downto 0);   

   -- Clock period definitions
   constant clk_period : time := 100 ns;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GPR PORT MAP (
           clk => clk,
           reset => reset,
           wen => wen,
           ren => ren,
           rS2 => rS2,
           rS1 => rS1,
           rD => rD,
           Data => Data,
           DrS1 => DrS1,
           DrS2 => DrS2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      reset <= '1';     
      wait for clk_period*10;

      -- insert stimulus here
      
      reset <= '0';
      ren <= '1';
      wen <= '0';
      rS1 <= "00000";
      rS2 <= "00111";
      rD <= "00111";
      Data <= x"00000000";
      wait for 100 ns;
      
      ren <= '0';
      wen <= '1';
      rS1 <= "00000";
      rS2 <= "00111";
      rD <= "00111";
      Data <= x"ffffabcd";
      wait for 100 ns;
      
      ren <= '1';
      wen <= '0';
      rS1 <= "00101";
      rS2 <= "00111";
      rD <= "00000";
      Data <= x"00000000";
      wait for 100 ns;
      
      ren <= '0';
      wen <= '1';
      rS1 <= "00101";
      rS2 <= "00111";
      rD <= "00101";
      Data <= x"1111cdef";
      wait for 100 ns;
      
      ren <= '1';
      wen <= '0';
      rS1 <= "00101";
      rS2 <= "00111";
      rD <= "00000";
      Data <= x"00000000";
      wait for 100 ns;            

      wait;
   end process;

end Behavioral;