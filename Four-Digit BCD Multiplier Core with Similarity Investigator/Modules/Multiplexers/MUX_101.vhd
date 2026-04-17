library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_101 is
  Port(A : in std_logic_vector(3 downto 0);
       B : in std_logic_vector(3 downto 0);
		 C : in std_logic_vector(3 downto 0);
		 D : in std_logic_vector(3 downto 0);
		 E : in std_logic_vector(3 downto 0);
		 F : in std_logic_vector(3 downto 0);
		 G : in std_logic_vector(3 downto 0);
		 H : in std_logic_vector(3 downto 0);
		 I : in std_logic_vector(3 downto 0);
		 J : in std_logic_vector(3 downto 0);
		 X : in std_logic_vector(3 downto 0);
       O : inout std_logic_vector(3 downto 0));
end MUX_101;

architecture Behavioral of MUX_101 is
begin

	process(A,B,C,D,E,F,G,H,I,J,X,O)
	  begin
	  
	    case X is
		   when "0000" =>
			  O <= A;
		   when "0001" =>
			  O <= B;
			when "0010" =>
			  O <= C;
			when "0011" =>
			  O <= D;
			when "0100" =>
			  O <= E;
			when "0101" =>
			  O <= F;
			when "0110" =>
			  O <= G;
			when "0111" =>
			  O <= H;
			when "1000" =>
			  O <= I;
			when "1001" =>
			  O <= J;
		   when others =>
		 end case;
		 
   end process;
end Behavioral;