library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_16x2 is
  Port(select : in std_logic;
       A : in std_logic_vector(15 downto 0);
       B : in std_logic_vector(15 downto 0);
       X : out std_logic_vector(15 downto 0));
end mux_16x2;

architecture Behavioral of mux_16x2 is
begin
	process(select,A,B)
	  begin
	    case select is
		   when '0' =>
			  X <= A;
		   when '1' =>
			  X <= B;
		   when others =>
			  X <= A; 
		 end case;
   end process;
end Behavioral;