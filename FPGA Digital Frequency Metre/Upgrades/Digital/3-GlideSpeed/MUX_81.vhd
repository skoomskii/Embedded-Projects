library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_81 is
  Port(A : in std_logic_vector(4 downto 0);
       B : in std_logic_vector(4 downto 0);
		 C : in std_logic_vector(4 downto 0);
		 D : in std_logic_vector(4 downto 0);
		 E : in std_logic_vector(4 downto 0);
		 F : in std_logic_vector(4 downto 0);
		 G : in std_logic_vector(4 downto 0);
		 H : in std_logic_vector(4 downto 0);
		 X : in std_logic_vector(2 downto 0);
       O : inout std_logic_vector(4 downto 0));
end MUX_81;

architecture Behavioral of MUX_81 is
begin

	process(A,B,C,D,E,F,G,H,X,O)
	  begin
	  
	    case X is
		   when "000" =>
			  O <= A;
		   when "001" =>
			  O <= B;
			when "010" =>
			  O <= C;
			when "011" =>
			  O <= D;
			when "100" =>
			  O <= E;
			when "101" =>
			  O <= F;
			when "110" =>
			  O <= G;
			when "111" =>
			  O <= H;
		   when others =>
			  O <= H; 
		 end case;
		 
   end process;
end Behavioral;