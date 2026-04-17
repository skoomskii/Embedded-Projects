library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity frequency_divider is
  Port(clk    : in std_logic;
       reset  : in std_logic;
		 clock1 : inout std_logic;
		 clock2 : inout std_logic);
end frequency_divider;

architecture Behavioral of frequency_divider is
begin
  clk_1kHz : process(clk, reset, clock1)	 
	 constant MSEC_VAL : integer := 49999;
	 variable a1: integer range 0 to MSEC_VAL:= MSEC_VAL;
	 begin
      if(clk'event and clk = '1') then 
			if(reset ='1') then 
			  a1:= MSEC_VAL;
			  clock1 <= '1';
			else
				if(a1 = 0) then 
					a1:= MSEC_VAL;
					clock1 <= not (clock1);
				else
					a1 := a1 - 1;
				end if;
			end if;
		end if;
   end process;
	
	  clk_1Hz : process(clk, reset, clock2)	 
	 constant MSEC_VAL : integer := 49999999;
	 variable a1: integer range 0 to MSEC_VAL:= MSEC_VAL;
	 begin
      if(clk'event and clk = '1') then 
			if(reset ='1') then 
			  a1:= MSEC_VAL;
			  clock2 <= '1';
			else
				if(a1 = 0) then 
					a1:= MSEC_VAL;
					clock2 <= not (clock2);
				else
					a1 := a1 - 1;
				end if;
			end if;
		end if;
   end process;
end Behavioral;