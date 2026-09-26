----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Zidane Hadeed
-- 
-- Create Date: 09/16/2026 10:54:27 AM
-- Design Name: 
-- Module Name: mux_81 - Behavioral
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

entity mux_81 is
Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           F : in  STD_LOGIC;
           G : in  STD_LOGIC;
           H : in  STD_LOGIC;
           O : out  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR (2 downto 0));
end mux_81;

architecture Behavioral of mux_81 is
begin
	process(A, B, C, D, E, F, G, H, sel)
	begin
		case sel is
		when "000" =>
		O <= A; -- connect A to O
		when "001" =>
		O <= B; -- connect B to O
		when "010" =>
		O <= C; -- connect C to O
		when "011" =>
		O <= D; -- connent D to O
		when "100" =>
		O <= E; -- connect E to O
		when "101" =>
		O <= F; -- connct F to O
		when "110" =>
		O <= G; -- connect G to O
		when "111" =>
		O <= H; -- connect H to O
		when others =>
		end case;
	end process;
end Behavioral;