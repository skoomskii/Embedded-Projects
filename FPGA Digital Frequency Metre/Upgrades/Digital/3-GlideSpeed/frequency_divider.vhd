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
		 clock1 : inout std_logic; -- 1kHz clock signal
		 clock2 : inout std_logic; --05Hz clock signal
		 clock3 : inout std_logic; -- 1Hz clock signal
		 clock4 : inout std_logic; -- 10Hz clock signal
		 clock5 : inout std_logic); -- 100Hz clock signal
end frequency_divider;

architecture Behavioral of frequency_divider is
begin

-- 1kHz clock signal -- 10kHz Ref signal
  clk_1kHz : process(clk, reset)	 
	 variable a1: integer range 0 to 5;
	 begin
      if(reset ='1') then 
		  a1:= 5;
		  clock1 <= '1';
      elsif(clk'event and clk = '1') then 
        a1 := a1 - 1;
		end if;

	   if(a1 = 0) then 
		  a1:= 5;
		  clock1 <= not (clock1);
      end if;
   end process;
	
-- 05Hz clock signal -- 10kHz Ref signal
  clk_005Hz : process(clk, reset)	 
	 variable a2: integer range 0 to 10000;	  
	 begin
      if(reset ='1') then 
		  a2:= 10000;
		  clock2 <= '1';
      elsif(clk'event and clk = '1') then 
        a2 := a2 - 1;
		end if;

	   if(a2 = 0) then 
		  a2:= 10000;
		  clock2 <= not (clock2);
      end if;
   end process;

-- 1Hz clock signal -- 10kHz Ref signal
  clk_1Hz : process(clk, reset)	 
	 variable a3: integer range 0 to 5000;	  
	 begin
      if(reset ='1') then 
		  a3:= 5000;
		  clock3 <= '1';
      elsif(clk'event and clk = '1') then 
        a3 := a3 - 1;
		end if;

	   if(a3 = 0) then 
		  a3:= 5000;
		  clock3 <= not (clock3);
      end if;
   end process;
	
	-- 10Hz clock signal -- 10kHz Ref signal
  clk_10Hz : process(clk, reset)	 
	 variable a4: integer range 0 to 500;	  
	 begin
      if(reset ='1') then 
		  a4:= 500;
		  clock4 <= '1';
      elsif(clk'event and clk = '1') then 
        a4 := a4 - 1;
		end if;

	   if(a4 = 0) then 
		  a4:= 500;
		  clock4 <= not (clock4);
      end if;
   end process;
	
	-- 100Hz clock signal -- 10kHz Ref signal
  clk_100Hz : process(clk, reset)	 
	 variable a5: integer range 0 to 50;	  
	 begin
      if(reset ='1') then 
		  a5:= 50;
		  clock5 <= '1';
      elsif(clk'event and clk = '1') then 
        a5 := a5 - 1;
		end if;

	   if(a5 = 0) then 
		  a5:= 50;
		  clock5 <= not (clock5);
      end if;
   end process;

end Behavioral;